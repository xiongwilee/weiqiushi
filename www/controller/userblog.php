<?php
/////////////////////////////////////////////////////////////////
//微糗事, Copyright (C)   2011 - 2012  weiqiushi.com
//EMAIL:birthday10241120@qq.com QQ:373071372
//$Id: userblog.php 34 2011-10-28 16:56:54Z anythink $

//访问用户博客首页
class userblog extends top
{
	private $user_data = ''; //初始化当前用户的信息
	private $user_skin = ''; //初始化当前用户的主题
	private $user_domain = '';//


	/*显示用户首页 index 采取domain方式显示*/
	public function index()
	{
		$this->getUserSkin(); //获取用户的基本信息，必须头条处理，判断用户是否存在
		$this->getMyFollow();
		$this->getMyLook();
		$this->isfollow = $this->isFollow();

		$this->follow = spClass('db_follow')->spLinker()->findAll(array('uid'=>$this->user_data['uid']),'time desc','','20');  //显示我关注的20个

		$this->blogs = spClass('db_blog')->spLinker()->spPager($this->spArgs('page',1),5)->findAll(array('uid'=>$this->user_data['uid'],'open'=>1),'top desc,bid desc');
		if($this->user_data['domain'] == 'home' || $this->user_data['domain'] == '')
		{
			$pg = array('domain'=>'home','uid'=>$this->user_data['uid']);
		}else{
			$pg = array('domain'=>$this->user_data['domain'],'uid'=>$this->user_data['uid']);
		}




		$this->pager = spClass('db_blog')->spPager()->pagerHtml('userblog','index',$pg);

		$this->display('index.html');
	}



	/*显示某一条记录*/
	public function show()
	{
		$this->getUserSkin($this->spArgs('bid'));
		$this->getMyFollow();
		$this->getMyLook();
		$this->fava = $this->getBlogFava();
		$this->isfollow = $this->isFollow();
		$this->anon = $this->spArgs('anon'); //是否匿名
		$this->d = spClass('db_blog')->spLinker()->find(array('uid'=>$this->user_data['uid'],'bid'=>$this->spArgs('bid')));
		$blog = $this->d;
		$this -> anon = $blog['anonymous'];

		if(is_array($this->d))
		{
			spClass('db_blog')->incrField(array('bid'=>$this->spArgs('bid')), 'hitcount');
			$this->display('list.html',$this->result);
		}else{
			err404('您查看的内容可能已经修改或者删除。');
		}
	}

	/*自定义主题 需要登录*/
	public function customize()
	{
		if(!islogin()){prient_jump(spUrl('main'));}
		if($this->spArgs('skinid'))  //设置预览的主题
		{
			if($this->spArgs('skinid') == 'default')
			{
				$this->__customizeConfig('default');
			}else{
				$theme = spClass('db_skins')->find(array('id'=>$this->spArgs('skinid')));
				if($theme['exclusive']==$_SESSION['uid'])
				{
					$this->__customizeConfig($theme['skindir']);
				}else{
					if($theme['exclusive'] == 0)
					{
						$this->__customizeConfig($theme['skindir']);
					}else{
						exit('不存在的主题或者您没有使用特殊主题的权限');
					}
				}
			}
			exit;
		}

		/*主题清空*/
		if($this->spArgs('customdefault'))
		{
			spClass('db_theme')->clearCustom();
			header("Location:".spUrl('userblog','customize'));
		}

		if($this->spArgs('action'))
		{
			if($this->spArgs('action') == 'send')  //保存主题
			{
				spClass('db_theme')->saveTheme();
			}else{
				$_SESSION['customize'] = '';
			}
			header("Location:".spUrl('userblog','index',array('domain'=>'home','uid'=>$_SESSION['uid']))  );
		}


		$this->type = $this->spArgs('type');
		$this->skins = spClass('db_skins')->getThemeList($this->spArgs('type'));

		//载入自定义设置
		if($this->spArgs('type') == 'custom')
		{
			if($this->spArgs('submit')) //预处理
			{
				unset($_POST['submit']);
				$conf = array();
				$data = '';
				foreach($_POST as $k=>$v)
				{
					if($v != '')
					{
						$conf[$k] = htmlspecialchars($v);
						$k = str_replace('@',' ',$k);
						$k = str_replace('$','.',$k);
						$find=explode('|',$k);

						if($find[1] == 'img1' || $find[1] == 'img2' || $find[1] == 'img3' || $find[1] == 'img4')
						{
							$data .= $find[0].'{background:url('.$v.');}';
						}else{
							$data .= $find[0].'{'.$find[1].':'.$v.';}';
						}
					}
				}
				if(is_array($_FILES))
				{
					foreach($_FILES as $k=>$d)
					{
						$k = str_replace('@',' ',$k);
						$k = str_replace('$','.',$k);
						$find=explode('|',$k); //0 id 1 存储位置
						if($d['error'] != 4)
						{
							if($this->yb['theme_upload'] != 1){exit('系统没启用上传功能');}
							if($d['size'] > $this->yb['theme_uploadsize']){exit('上传大小不能超过：'.($this->yb['theme_uploadsize']/1024/1024).'MB');}
							$ext = spExt('aUpload');
							$savedir = $ext['savepath'].'/'.$ext['savedir'].'/theme/';
							$fpath   =  date('Y').'/'.date('m').'/'.date('d').'/';
							$ext = pathinfo($d['name']);
							$exrarr = explode(',',$this->yb['theme_uploadtype']);
							if(!in_array($ext['extension'],$exrarr)){exit('只能上传：'.$this->yb['theme_uploadtype']);}
							$fname   = time().'.'.$ext['extension'];
							__mkdirs($savedir.$fpath);
							$save = $savedir.$fpath.$fname;
							$uploadext = spExt('aUpload');

							spClass('db_theme')->updateExtField($_SESSION['uid'],$find[1],$savedir,$fpath.$fname);
							move_uploaded_file($d['tmp_name'],$save);
							$v = $GLOBALS['uri'].'/'.$uploadext['savedir'].'/theme/'.$fpath.$fname;
							$conf[$k] = $v;
							$data .= $find[0].'{background:url('.$v.');}';
						}
					}
				}
				spClass('db_theme')->update(array('uid'=>$_SESSION['uid']),array('setup'=>serialize($conf)));
				$_SESSION['customize']['config'] = $conf;
				$_SESSION['customize']['css'] = $data;

			}

			if($_SESSION['customize']['theme'] != '')
			{
				$skin = $_SESSION['customize']['theme'];
			}else{
				$rs = spClass('db_theme')->find( array('uid'=>$_SESSION['uid']) );
				$skin = $rs['theme'];
			}
			if($skin == ''){ $skin == 'default'; }
			if(is_file( APP_PATH.'/tpl/theme/'.$skin.'/setting.php'))
			{
				$skinph = APP_PATH.'/tpl/theme/'.$skin.'/setting.php';
			}else{
				$skinph = APP_PATH.'/tpl/theme/default/setting.php';
			}
			require $skinph;

			$this->setting = $setting;
			$rs = spClass('db_theme')->find(array('uid'=>$_SESSION['uid']));
			$_SESSION['customize']['config'] = unserialize($rs['setup']);

		}
			$rs = spClass('db_theme')->find(array('uid'=>$_SESSION['uid']));
			$_SESSION['customize']['config'] = unserialize($rs['setup']);
			$_SESSION['customize']['theme'] = $rs['theme'];



		parent::display('customize.html',TRUE);

	}

	/*设置一个临时的主题访问点*/
	private function __customizeConfig($skindir)
	{
		$_SESSION['customize']['theme'] = $skindir;
		header("Location:".spUrl('userblog','index',array('domain'=>'home','uid'=>$_SESSION['uid']) ) );
	}

	/*我关注谁*/
	private function getMyFollow()
	{
		$this->follow = spClass('db_follow')->spLinker()->findAll(array('uid'=>$this->user_data['uid']),'time desc','','24');  //显示我关注的24个
	}

	/*谁关注我*/
	private function getMyLook()
	{
		$this->myLook = spClass('db_follow')->findCount(array('touid'=>$this->user_data['uid']));
	}

	/*我是否关注*/
	private function isFollow()
	{
		if($_SESSION['uid'] == $this->user_data['uid'])
		{
			return -1;  //自己
		}
		$follow = spCLass('db_follow')->find( array('uid'=>$_SESSION['uid'],'touid'=>$this->user_data['uid']));
		if(is_array($follow))
		{
			return 1;  //已关注
		}
		return 0;
	}

	private function getBlogFava()
	{
		$bid = intval($this->spArgs('bid'));
		$sql = "select m.username,m.uid,m.domain,l.* from ".DBPRE."likes as l LEFT JOIN  ".DBPRE."member as m on l.uid = m.uid where l.bid = '$bid' order by l.time desc limit 0,26";
		$rs =  spClass('db_member')->findSql($sql);
		$count = spClass('db_likes')->findCount( array('bid'=>$bid) );
		$data['rs'] = $rs;
		$data['count'] = $count;
		return $data;
	}


	/*获取用户的skin and base info
	  读取 domain 或者 uid,或者从$bid 读取
	*/
	private function getUserSkin($bid=0)
	{
		if($this->spArgs('domain') != 'home' && $this->spArgs('domain') != '')
		{
			$rs = spClass('db_theme')->getByDomain($this->spArgs('domain'));
		}elseif($this->spArgs('uid') != ''){
			$rs = spClass('db_theme')->getByUid($this->spArgs('uid'));
		}else{
			$rs = spClass('db_theme')->getByBid($this->spArgs('bid'));
		}
		if(!is_array($rs)) {err404('您访问的用户不存在,用户可能已经更改了个性域名');}


		$skin = spClass('db_theme')->find(array('uid'=>$rs['uid']));
		$this->user_data = $rs;
		$this->user_skin = $skin;   //将数据赋值给全局变量
	}



	/*覆盖原始display*/
	public function display($tplname,$rs)
	{

		// 模板内引用文件的路径
		$site_uri = trim(dirname($GLOBALS['G_SP']['url']["url_path_base"]),"\/\\");
		if( '' == $site_uri ){ $site_uri = 'http://'.$_SERVER["HTTP_HOST"]; 	}else{ $site_uri = 'http://'.$_SERVER["HTTP_HOST"].'/'.$site_uri; }
		$this->site_uri = $site_uri;

		$this->user_skin['theme'] == '' ? $theme = 'default' : $theme = $this->user_skin['theme'];   //获取我选择的风格
		$this->user_skin['css'] == '' ? $css = '' : $css = $this->user_skin['css'];   //获取我选择的风格

		if($_SESSION['customize']['theme'] != '')  //如果自定义有数据则启用自定义的界面
		{
			$theme = $_SESSION['customize']['theme'];
			$this->user_skin['theme'] = $_SESSION['customize']['theme'];
		}

		if($_SESSION['customize']['css'] != '')
		{
			$css = $_SESSION['customize']['css'];
		}
		$this->themes_path = $site_uri.'/tpl/theme/'.$theme.'/';
		$this->global_path = $site_uri.'/tpl/';
		$this->custom_css = $css;

		$this->username = $this->user_data['username'];
		$this->usertag = $this->user_data['blogtag'];
		$this->domain = ($this->user_data['domain'] == '') ? 'home' : $this->user_data['domain'];  //如果没定义domain 就是home


		$this->uid = $this->user_data['uid'];
		$this->usersign =strip_tags($this->user_data['sign']);//strip_tags
		$this->signhtml =strip_tags($this->user_data['sign'],'<b><font><p><span>');//strip_tags
		$this->user = $this->user_data;


		$appPath = APP_PATH.'/tpl/theme/default/'.$tplname;
		if($theme != 'default'){
			$appPath = APP_PATH.'/tpl/theme/'.$theme.'/'.$tplname;
			if(!file_exists($appPath)){
				$appPath = APP_PATH.'/tpl/theme/default/'.$tplname;  //如果模板不存在则加载默认模板
			}
		}

		parent::display($appPath,TRUE);
	}

}
