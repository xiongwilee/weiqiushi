<?php
/////////////////////////////////////////////////////////////////
//微糗事, Copyright (C)   2011 - 2012  weiqiushi.com
//EMAIL:birthday10241120@qq.com QQ:373071372
//$Id: user.php 41 2011-11-06 07:59:40Z anythink $


//个人设置动作执行
class user extends top
{

	function __construct(){
         parent::__construct();
		  if(!islogin()){prient_jump(spUrl('main'));}
		  $this->favatag = spClass('db_mytag')->myFavaTag($_SESSION['uid'],5); //显示收藏标签
     }

	/*显示我的设置界面*/
	function setting()
	{
		$this->inuser=true;//是否在本页面
		$this->user = spClass('db_member')->find(array('uid'=>$_SESSION['uid'])); //用户信息
		$this->tags = spClass('db_category')->findCate(); //获取系统级别标签
		$this->__parse_mytag($this->user['blogtag']); //获取我的标签

		$this->display('user_setting.html');
	}



	/*显示首页界面我关注的*/
	public function myfollow()
	{
		$this->inuser=true;//是否在本页面
		if($this->spArgs('follow'))
		{
			$this->getfollow = 1;
			$this->follow = spClass('db_follow')->spLinker()->spPager($this->spArgs('page',1),25)->findAll("`touid` = {$_SESSION['uid']}  ",'time desc');
			$this->pager = spClass('db_follow')->spPager()->pagerHtml('user','myfollow',array('follow'=>'me'));
			$this->curr_forme = ' class="current"';
		}else{
			$this->follow = spClass('db_follow')->spLinker()->spPager($this->spArgs('page',1),25)->findAll("`uid` = {$_SESSION['uid']}  ",'time desc');
			$this->pager = spClass('db_follow')->spPager()->pagerHtml('user','myfollow');
			$this->curr_mefor = ' class="current"';
		}

		$this->memberinfo();
		$this->display('user_myfollow.html');
	}

	/*我喜欢的*/
	public function mylikes()
	{
		$this->inuser=true;//是否在本页面
		$sql = "SELECT k.id, k.iflike, k.uid AS likeuid,k.time as ktime, b . * , m.username, m.domain
				FROM `".DBPRE."likes` AS k
				LEFT JOIN `".DBPRE."blog` AS b ON k.bid = b.bid
				LEFT JOIN `".DBPRE."member` AS m ON b.uid = m.uid WHERE k.uid = '{$_SESSION['uid']}'";

		$this->blogs = spClass('db_likes')->spPager($this->spArgs('page',1),15)->findSql($sql);

		$this->pager = spClass('db_likes')->spPager()->pagerHtml('user','mylikes');
		$this->memberinfo();
		$this->display('user_mylikes.html');

	}

	/*显示首页界面我发布的*/
	public function mypost()
	{
		$this->inuser=true;//是否在本页面
		if($this->spArgs('draft'))
		{
			$this->blogs = spClass('db_blog')->spLinker()->spPager($this->spArgs('page',1),10)->findAll("`uid` = {$_SESSION['uid']} and `open` = 0 ",'bid desc');
			$this->pager = spClass('db_blog')->spPager()->pagerHtml('user','mypost',array('draft'=>'yes'));
			$this->curr_my_draft = ' class="current"';
		}else{
			$this->blogs = spClass('db_blog')->spLinker()->spPager($this->spArgs('page',1),10)->findAll("`uid` = {$_SESSION['uid']} and `open`not in (-1,0) ",'bid desc');
			$this->pager = spClass('db_blog')->spPager()->pagerHtml('user','mypost');
			$this->curr_my_index = ' class="current"';
		}


		$this->memberinfo();
		$this->curr_r1_4 = ' class="current"';
		$this->display('user_mypost.html');
	}

	/*我的回复*/
	public function myreplay()
	{
		$this->inuser=true;//是否在本页面
		if($this->spArgs('received')==1){ //我收到的
			$this->myreplay = spClass('db_replay')->spLinker()->spPager($this->spArgs('page',1),10)->findAll("`repuid` = {$_SESSION['uid']}");
			$this->pager = spClass('db_replay')->spPager()->pagerHtml('user','myreplay',array('received'=>1));
			$this->curr_myreplay_r = ' class="current"';
		$this->received = 1;
		}else{	//我发出的 回复
			$db_replay = spClass('db_replay');
			$db_replay->linker['blog']['enabled'] = false;
			$this->myreplay = $db_replay->spLinker()->spPager($this->spArgs('page',1),10)->findAll("`uid` = {$_SESSION['uid']}",'id desc');
			$this->pager = $db_replay->spPager()->pagerHtml('user','myreplay');
			$this->curr_myreplay = ' class="current"';

		}
		$this->memberinfo();
		$this->display('user_myreplay.html');
	}



	/*我的回复*/
	public function mynotice()
	{
		$this->inuser=true;//是否在本页面
		if($this->spArgs('isread')) 	/*获取未读消息*/
		{
			$isread = 1;
			$this->curr_my_isnotice = ' class="current"';
		}else{
			$isread = 0;
			$this->curr_my_notice = ' class="current"';
		}

		if($this->spArgs('clears')) //清除通知
		{
			$clear = $this->spArgs('clears');
			if(in_array($clear,array(1,2,3)))//1 评论通知  2 系统通知 3关注通知
			{
				spClass('db_notice')->update(array('uid'=>$_SESSION['uid'],'sys'=>$clear),array('isread'=>1));
				exit;
			}
		}

		if($this->spArgs('dels')) //清除通知
		{
			$clear = $this->spArgs('dels');
			if(in_array($clear,array(1,2,3)))//1 评论通知  2 系统通知 3关注通知
			{
				spClass('db_notice')->delete(array('uid'=>$_SESSION['uid'],'sys'=>$clear,'isread'=>1) );
				exit;
			}
		}

		//系统通知
		$this->sysnotice_c = $this->repnotice_c =$this->flownotice_c = 0;
		$this->sysnotice = spClass('db_notice')->spLinker()->spPager($this->spArgs('page',1),10)->findAll(array('uid'=>$_SESSION['uid'],'isread'=>$isread,'sys'=>2),'id desc');
		if(is_array($this->sysnotice)){ $this->sysnotice_c = count($this->sysnotice); }

		//评论通知
		$this->repnotice = spClass('db_notice')->spLinker()->spPager($this->spArgs('page',1),10)->findAll(array('uid'=>$_SESSION['uid'],'isread'=>$isread,'sys'=>1),'id desc');
		if(is_array($this->repnotice)){ $this->repnotice_c = count($this->repnotice); }

		//关注通知
		$this->flownotice = spClass('db_notice')->spLinker()->spPager($this->spArgs('page',1),10)->findAll(array('uid'=>$_SESSION['uid'],'isread'=>$isread,'sys'=>3),'id desc');
		if(is_array($this->flownotice)){ $this->flownotice_c = count($this->flownotice); }



		$this->memberinfo();
		$this->display('user_mynotice.html');

	}


	function pm()
	{
		$this->inuser=true;//是否在本页面

		if($this->spArgs('look')) //阅读私信
		{
			$this->islook = true;
			$foruid  = intval($this->spArgs('look'));
			$this->foruser = spClass('db_member')->find(array('uid'=>$foruid),'','uid,username'); //我和谁的对话
			$where = " sys=0 and( ( uid = '{$_SESSION['uid']}' and foruid =  '$foruid') or ( uid =  '$foruid' and foruid='{$_SESSION['uid']}'))";
			$this->read = spClass('db_notice')->spLinker()->findAll($where,'time desc');
			spClass('db_notice')->update(array('foruid'=>$foruid,'uid'=>$_SESSION['uid'],'sys'=>0),array('isread'=>1));

		}else{

			$where = "SELECT n . * , m.username, m.domain, count( n.foruid ) AS fcount FROM `".DBPRE."notice` AS n
				LEFT JOIN `".DBPRE."member` AS m ON n.foruid = m.uid
				WHERE n.uid = '{$_SESSION['uid']}' and n.isread =0 and n.sys=0
				GROUP BY n.foruid	ORDER BY n.time DESC ";

			$this->mypm = spClass('db_notice')->findSql($where);
		}

		//如果没有未读私信则显示已读的
		if(!$this->mypm)
		{

			$where = "SELECT n . * , m.username, m.domain, count( n.foruid ) AS fcount FROM `".DBPRE."notice` AS n
				LEFT JOIN `".DBPRE."member` AS m ON n.uid = m.uid
				WHERE n.foruid = '{$_SESSION['uid']}'  and n.sys=0
				GROUP BY n.uid ORDER BY n.id DESC ";

			$this->usdpm = spClass('db_notice')->spLinker()->findSql($where,'time desc');
			//echo $where;
		}





		$this->memberinfo();
		$this->display('user_mypm.html');
	}



	/*保存个性修改*/
	function savesetting()
	{
		if($this->yb['keep_niname'] != '')
		{
			$arr = explode(',',$this->yb['keep_niname']);
			if(in_array($this->spArgs('niname'),$arr)) {js_err('该昵称被保留或限制');}
		}

		if($this->yb['keep_domain'] != '')
		{
			$arr = explode(',',$this->yb['keep_domain']);
			if(in_array($this->spArgs('domain'),$arr))  {js_err('该个性域名被保留或限制');}
		}




		if(utf8_strlen($this->spArgs('niname')) < 2 || utf8_strlen($this->spArgs('niname')) > 10){js_err('昵称最短2位最长10位'); }
		$niname = spClass('db_member')->find(array('username'=>$this->spArgs('niname')),'','uid,username');
		if(is_array($niname) && $niname['uid'] != $_SESSION['uid']){js_err('该昵称已被使用'); } //判断昵称是否被使用
		if(utf8_strlen($this->spArgs('domain')) < 4 || utf8_strlen($this->spArgs('domain')) > 15){ js_err('个性域名最短4位最长15位'); }
		$domain = spClass('db_member')->find(array('domain'=>$this->spArgs('domain')),'','uid,domain');
		if(is_array($domain) && $domain['uid'] != $_SESSION['uid']){ js_err('个性域名已被使用');} //判断个性域名是否被使用
		if($this->spArgs('tag') != '')
		{
			$tagstr = substr($this->spArgs('tag'),0,-1);
			$tag = explode(',',$tagstr);
			if(count($tag) >3){ js_err('博客关键字最多三组'); }
		}

		/*处理通知*/
		if($this->yb['mail_open'] == 1){
			if($this->spArgs('m_rep') == 1){$_mrep = 1;}else{$_mrep = 0;}
			if($this->spArgs('m_fow') == 1){$_mfow = 1;}else{$_mfow = 0;}
			if($this->spArgs('m_pm') == 1){$_mpm = 1;}else{$_mpm = 0;}
		}else{
			$_mrep = $_mfow = $_mpm = 1;
		}
		$row = array('username'=>htmlspecialchars($this->spArgs('niname')),
					 'domain'=>$this->spArgs('domain'),
					 'blogtag'=>$tagstr,
					 'sign'=>$this->spArgs('textarea'),
					 'm_rep'=>$_mrep,
					 'm_fow'=>$_mfow,
					 'm_pm'=>$_mpm
					 );




		if(spClass('db_member')->update(array('uid'=>$_SESSION['uid']),$row))
		{
			$_SESSION['username'] = htmlspecialchars($this->spArgs('niname'));
			$_SESSION['domain'] = $this->spArgs('domain');
			$this->jslocation(spUrl('main','user'));
			//exit('<script>parent.window.location.reload()</script>');
		}else{
		    js_err('系统繁忙');
		}
	}


	/*发送站内短信*/
	function postpm()
	{
		if($this->spArgs('send'))
		{
			$rs = spClass('db_notice')->noticePm($this->spArgs());echo $rs;exit;
		}
		$uid = intval($this->spArgs('uid'));
		$this->rs = spClass('db_member')->find(array('uid'=>$uid),'','uid,username');
		$this->display('user_mail_ajax.html');
	}


	/*上传头像*/
	function upavatar()
	{
		$upfile = spClass('uploadFile');
		$upfile->set_filetypes('jpg|png|jpge|bmp');
		$upfile->set_path(APP_PATH.'/avatar');
		$upfile->set_imgresize(false);
		$upfile->set_imgmask(false);
		$upfile->set_dirtype(5); //设置为上传头像
		$upfile->set_diydir($_SESSION['uid']);  //用户id

		$files = $upfile->fileupload();
		echo $files;
	}


	/*修改密码 使用ajaxpost 提交 不需要js 报错*/
	function changepwd()
	{
		if($this->spArgs('pwd') == '' || $this->spArgs('pwd1') == '' || $this->spArgs('pwd2') == ''){exit('所有字段不能为空');	}
		if($this->spArgs('pwd1') != $this->spArgs('pwd2')){ exit('两次密码不一致');}
		if(strlen($this->spArgs('pwd1')) <6) {exit('新密码必须大于6位');}

		$user = spClass('db_member')->findBy('uid',$_SESSION['uid']);
		$localpwd = password_encode($this->spArgs('pwd'),$user['salt']);

			if($user['password'] != $localpwd){
			   exit('原始密码错误');
			}else{

				$salt = randstr();
				$password = password_encode($this->spArgs('pwd1'),$salt);
				$row = array('password' => $password, 'salt' =>$salt );
				spClass('db_member')->update(array('uid'=>$_SESSION['uid']),$row);
				if(1 >= spClass('db_member')->affectedRows() )
				{
				exit('ok');
				}else{
				exit('密码没有修改成功,可能没有改变');
				}
			}
	}








}

/*当前模块下函数*/
function js_err($msg)
{
	exit('<script>parent.tiper("'.$msg.'");parent.postoff();</script>');
}