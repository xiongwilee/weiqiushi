<?php
/////////////////////////////////////////////////////////////////
//微糗事, Copyright (C)   2011 - 2012  weiqiushi.com 
//EMAIL:birthday10241120@qq.com QQ:373071372                              
//$Id: admin.php 34 2011-10-28 16:56:54Z anythink $ 


class admin extends top
{
	
	 function __construct(){  
         parent::__construct(); 
		 $this->get = $this->spArgs();
		if($_SESSION['admin'] != 1){prient_jump(spUrl('main'));}
     }  
	 
	 
	function index(){
		$os = explode(" ", php_uname());
		$this->ybsoft = $GLOBALS['YB'];
		$this->server = $_SERVER;
		$this->os = php_uname();
		$this->postupload = ini_get('post_max_size');
		$this->maxupload = ini_get('upload_max_filesize');
		$this->version = phpversion();
		$this->mysql = spClass('db_blog')->showVersion();
		$this->ybsoftencode = base64_encode($GLOBALS['YB']['version']);
		
		
		if(!function_exists("gd_info")){$this->gd = '不支持,无法处理图像';}
		if(function_exists(gd_info)) {  $gd = @gd_info();  $this->gd = $gd["GD Version"];  $gd ? '&nbsp; 版本：'.$gd : '';}
		$this->curr_index = ' id="current"';
		$this->display('admin/index.html');
	}
	
	
	function system()
	{
		if($this->spArgs('submit'))
		{
			spClass('db_setting')->saveConfig($this->spArgs('val'));
			
			$this->jump(spUrl('admin','system',array('ac'=>'ok')));
		}
		
		if($this->spArgs('testSendMail'))
		{
			spClass('db_notice')->sendMailTest(); exit('<hr/>请确保您打开了邮件发送开关，测试邮件才会发送。开启邮件DEBUG模式会看到详细的发送过程。如果发送成功请关闭。');
		}
			
	
		$this->conf = spClass('db_setting')->getConfig();
		$this->curr_system = ' id="current"';
		$this->display('admin/system.html');
	}
	
	
	
	
	function blog(){
		
		if($this->spArgs('submit'))
		{
			$title = $this->spArgs('title');
			
			$niname = $this->spArgs('niname');
			$where = "title like '%$title%'";
			if($niname){$where .= " and uid = '$niname'";}
		}else{
			$where = "`open` != '-1'";
		}
			$this->blog = spClass('db_blog')->spLinker()->spPager($this->spArgs('page',1),20)->findAll($where,'bid desc');
			$this->pager = spClass('db_blog')->spPager()->pagerHtml('admin','blog',array('title'=>$title,'niname'=>$niname ,'submit'=>$this->spArgs('submit') ));
		
		
		$this->curr_blog = ' id="current"';
		$this->display('admin/blog.html');
	}
	

	
	function user()
	{
		if($this->spArgs('mod') == 'info')	
		{
			$this->info = spClass('db_member')->find(array('uid'=>$this->spArgs('uid')));
			$this->display('admin/user_info.html');exit;
		}
	
		if($this->spArgs('lockuser')){ spClass('db_blog')->lockUser($this->spArgs('lockuser')); }
		if($this->spArgs('resetpwd')){ if(spClass('db_blog')->resetPwd($this->spArgs('resetpwd'),$this->spArgs('pwd'))){exit('ok');} }
		if($this->spArgs('where')) {
			$name = $this->spArgs('where');
			$where = " uid = '$name' or email = '$name' or domain = '$name'";
		}else{
			$where = '';
		}
		
		$this->user = spClass('db_member')->spLinker()->spPager($this->spArgs('page',1),20)->findAll($where,'uid desc');
		$this->pager = spClass('db_member')->spPager()->pagerHtml('admin','user' );
		$this->countuser = spClass('db_member')->findCount();
		$this->curr_user = ' id="current"';
		$this->display('admin/user.html');
	}
	
	function tag()
	{
		if($this->spArgs('syscate'))
		{
			spClass('db_category')->saveCate($this->spArgs());
			$this->jump(spUrl('admin','tag',array('ac'=>'ok')));
		}
		if($this->spArgs('sysadd'))
		{
			spClass('db_category')->create(array('sort'=>$this->spArgs('sort'),'catename'=>$this->spArgs('cname')));
			$this->jump(spUrl('admin','tag',array('ac'=>'ok')));
		}
		if($this->spArgs('usercate'))
		{
			spClass('db_tags')->saveCate( $this->spArgs() );
			$this->jump(spUrl('admin','tag',array('ac'=>'ok')));
		}
		if($this->spArgs('sysdel'))	{spClass('db_category')->deleteByPk( $this->spArgs('sysdel') );}
		if($this->spArgs('userdel')) {spClass('db_tags')->deleteByPk( $this->spArgs('userdel') );}
		
		$this->systag = spClass('db_category')->spPager($this->spArgs('page',1),10)->findAll($where,'sort  asc'); //系统tag
		$this->systagpager = spClass('db_category')->spPager()->pagerHtml('admin','tag');
		if($this->spArgs('showuser'))
		{
			$this->usrtag = spClass('db_tags')->spLinker()->spPager($this->spArgs('page',1),20)->findAll($where,'tid  asc'); //系统tag
			$this->usrtagpage = spClass('db_tags')->spPager()->pagerHtml('admin','tag',array('showuser'=>'yes'));
		}
		$this->curr_blog = ' id="current"';
		$this->display('admin/tag.html');
	}
	
	/*推荐管理*/
	function recommend()
	{
		if($this->spArgs('submit'))
		{
			if(is_array($this->spArgs('delall')) || is_array($this->spArgs('opened')))
			{
				 //如果要删除
				if(is_array($this->spArgs('delall'))){	foreach ($this->spArgs('delall') as $d){spClass('db_recommend')->delete(array('id'=>$d));}}	
				//如果要通过
				if(is_array($this->spArgs('opened'))){foreach ($this->spArgs('opened') as $d)	{spClass('db_recommend')->update(array('id'=>$d),array('open'=>1));	}}	
				$this->success('操作成功',spUrl('admin','recommend'));
			}else{
				$this->error('没有需要审核通过或者删除的推荐');
			}
			exit;
		
		}
	
	
		if($this->spArgs('recommendadd'))
		{
			$return = spClass('db_recommend')->createRecommend($this->spArgs());
			if($return == -1){ $this->error('不存在的日志'); }
			if($return == -2){ $this->error('已经存在的日志'); }
			$this->success('添加成功',spUrl('admin','recommend'));
			
		}
		if($this->spArgs('recommenduser'))
		{
			 $return = spClass('db_recommend')->createRecommend($this->spArgs());
			 if($return == -3){ $this->error('不存在的用户'); }
			 if($return == -4){ $this->error('已经在列表中'); }
			 $this->success('添加成功',spUrl('admin','recommend'));
		}
		
		$where = '';
		if($this->spArgs('filter') == 'user')	{$where = 'tuiuid != 0';}
		if($this->spArgs('filter') == 'blog')	{$where = 'tuiuid = 0';}
		if($this->spArgs('order') == 'open')	{$where .= ' and open = 1';}
		if($this->spArgs('order') == 'close')	{$where .= ' and open = 0';}
		$this->recommend = spClass('db_recommend')->spLinker()->spPager($this->spArgs('page',1),10)->findAll($where,'time desc');
		if($this->spArgs('filter'))
		{
			$this->pager = spClass('db_recommend')->spPager()->pagerHtml('admin','recommend',array('filter'=>$this->spArgs('filter'),'order'=>$this->spArgs('order')));
		}else{
			$this->pager = spClass('db_recommend')->spPager()->pagerHtml('admin','recommend');
		}
		$this->filter = $this->spArgs('filter');
		$this->order = $this->spArgs('order');
		$this->scate  = spClass('db_category')->findAll('','sort desc');
		$this->display('admin/recommend.html');
	}
	
	function theme()
	{
		if($this->spArgs('m') == 'info')
		{
			if($this->spArgs('submit'))
			{
				spClass('db_skins')->update(array('id'=>$this->spArgs('id')),$this->spArgs());
				$this->success('保存成功',spUrl('admin','theme'));
			}
			$this->skin = spClass('db_skins')->find(array('id'=>$this->spArgs('id')));
			$this->display('admin/theme_info.html');exit;
		}
		
		if($this->spArgs('m') == 'install')
		{
			$name = $this->spArgs('installdir');
			$dir = APP_PATH.'/tpl/theme/'.$name;
			if(!is_dir($dir) || $name ==''){$this->error('请指定正确的主题安装目录!');}
			$result = spClass('db_skins')->find(array('skindir'=>$name));
			if(is_array($result)){
				$this->error('该目录已被安装,重新安装请先卸载');
			}else{
				spClass('db_skins')->create(array('skindir'=>$name));
				$this->error('主题已经安装，请编辑详情');
			}
		}
		if($this->spArgs('m') == 'uninstall')
		{
			spClass('db_skins')->delete(array('id'=>$this->spArgs('id')));
			$this->error('主题已经卸载，您可以删除该主题文件夹');
		}
		
		
		
		
		if($this->spArgs('filter'))
		{
			if($this->spArgs('filter') == 'close'){	$where = array('open'=>0);$page = array('filter'=>'close');	}
			if($this->spArgs('filter') =='open')  {	$where = "exclusive = 0 and open = 1";$page = array('filter'=>'open');}
			if($this->spArgs('filter') =='exclusive'){$where = "exclusive != 0";$page = array('filter'=>'exclusive');}
		}else{
			$where = '';
		}
		
		$this->skins = spClass('db_skins')->spPager($this->spArgs('page',1),3)->findAll($where,'id desc');
		if($page)
		{
			$this->pager = spClass('db_skins')->spPager()->pagerHtml('admin','theme',$page);
		}else{
			$this->pager = spClass('db_skins')->spPager()->pagerHtml('admin','theme');
		}

		$this->curr_theme = ' id="current"';
		$this->display('admin/theme.html');
	}
	
	
	/*自动升级系统*/
	function autoupdate()
	{
		$this->display('admin/autoupdate.html');
	}
	
	function database()
	{
		//初始化数据库处理
		$db = spClass('dbbackup', array(0=>$GLOBALS['G_SP']['db']));
		$this->table = $db->showAllTable($this->spArgs('chk'));
		if($this->spArgs('dbac') == 'op') { $db->optimizeTable($this->spArgs('tabl'));exit;  }
		if($this->spArgs('dbac') == 'rep') { $db->repairTable($this->spArgs('tabl'));exit;  }
		if($this->spArgs('outab')) { $db->outTable($this->spArgs('outab'));exit;  }
		if($this->spArgs('ouall')) { $db->outAllData();exit;}
		

		
		$this->curr_database = ' id="current"';
		$this->display('admin/database.html');
	}
	
	function clearcache()
	{
		spClass('m_access_cache')->delete();
		$this->success('已经清除所有缓存');
	}
	
	
}