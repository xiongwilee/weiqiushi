<?php
/////////////////////////////////////////////////////////////////
//微糗事, Copyright (C)   2011 - 2012  weiqiushi.com
//EMAIL:birthday10241120@qq.com QQ:373071372
//$Id: main.php 45 2011-11-07 06:33:21Z anythink $


class main extends top
{

	public function index()
		{
		$this->inindex=true;
		$this->memberinfo();
		$this->favatag = spClass('db_mytag')->myFavaTag($_SESSION['uid'],5); //显示收藏标签

		if( $this -> spArgs('nav') ){
			$this -> type = $this -> spArgs('nav');
		    $type = $this -> type;
		}else{
			$type = "1,2,3,4";
		}

		if( $this -> spArgs('taxis') ){
			$this -> taxis = $this -> spArgs('taxis');
		    if( $this -> taxis ==1 ){
		    	$taxis = " b.time DESC ";
		    }else if( $this-> taxis ==2 ){
		     	$taxis =" b.dolikecount DESC ";
		    }
		}else{
			$taxis = " b.dolikecount / ( b.unlikecount +1 )  DESC";
		}

		$uid = $_SESSION['uid'];
		$sql = "SELECT b. * , k.id AS likeid , k.iflike, f.id AS followid ,m.username,m.domain
						FROM `".DBPRE."blog` AS b LEFT JOIN `".DBPRE."likes` AS k ON ( b.bid = k.bid AND k.uid ='$uid' )
						LEFT JOIN `".DBPRE."follow` AS f ON ( b.uid = f.touid and f.uid = '$uid' )
						LEFT JOIN `".DBPRE."member` as m on b.uid = m.uid where b.open = 1 AND b.dolikecount >=5
AND b.dolikecount / ( b.unlikecount +1 ) >=3 and b.type in ($type) ORDER BY $taxis ";

		$this->blogs = spClass('db_blog')->spPager($this->spArgs('page',1),10)->findSql($sql);
		$page = spClass('db_blog')->spPager()->getPager('');

		$this->CurrentModule = 'all';

		$this->pager = spClass('db_blog')->spPager()->pagerHtml('main','index',array( nav=>$type , taxis=> $this -> taxis ) );
		$page = spClass('db_blog')->spPager()->getPager('');

		if($this->spArgs('ajaxload'))
		{
			if($this->spArgs('page') <= $page['total_page'])
			{
				$this->limits = 4;
				$this->data = $this->blogs; //将内容给模板变量
				$this->display('require_feeds.html');
			}
		}else{
			$this->display('index.html');
		}
	}

	public function user()
	{
		$this->title = '个人中心';
		$this->inuser=true;//是否在本页面
		$this->favatag = spClass('db_mytag')->myFavaTag($_SESSION['uid'],5); //显示收藏标签
		$this->CurrentModule = 'index';
		 if(islogin() && $_SESSION['username'] == '')  { header('Location:'.spUrl('user','setting'));  }

		$this->memberinfo();
		$uid = $_SESSION['uid'];
		//likeId 为喜欢id 如果不为空,则我喜欢.
		//followId 为关注id 如果不为空,则我关注

		$sql = "SELECT b. * , k.id AS likeid, k.iflike, f.id AS followid ,m.username,m.domain
						FROM `".DBPRE."blog` AS b LEFT JOIN `".DBPRE."likes` AS k ON ( b.bid = k.bid AND k.uid ='$uid' )
						LEFT JOIN `".DBPRE."follow` AS f ON ( b.uid = f.touid and f.uid = '$uid' )
						LEFT JOIN `".DBPRE."member`  as m on b.uid = m.uid where b.open = 1 ";


		if($this->user['flow'] >= 15)
		{
			$sql .= "and  b.uid in ($this->followuid,$uid) and b.open=1 ORDER BY b.time desc";
		}else{
			$sql .= "ORDER BY b.time desc";
		}
		$this->blogs = spClass('db_blog')->spPager($this->spArgs('page',1),10)->findSql($sql);



		$this->pager = spClass('db_blog')->spPager()->pagerHtml('main','user');
		$page = spClass('db_blog')->spPager()->getPager('');



		if(!islogin())
		{
			$this->email = $_COOKIE['unames'];
			//未登录跳转到发现
			header( "HTTP/1.1 301 Moved Permanently" );
			header("Location:".spUrl('main','index'));
			//$this->display('login.html');
		}else{
			if($this->spArgs('ajaxload'))
			{
				if($this->spArgs('page') <= $page['total_page'])
				{
					$this->limits = 4;
					$this->data = $this->blogs; //将内容给模板变量
					$this->display('require_feeds.html');
					exit;
				}
			}else{
				$this->display('user.html');
			}

		}
	}


	public function recommend()
	{
		$this->memberinfo();
		$tags = spClass('db_tags')->getHotTag(30);
		if($tags['string'])
		{
			$where = "`open` = 1  ";
		}
		$where = 'open = 1 and bid !=0';
		if($this->spArgs('type'))
		{
			$this->type = intval($this->spArgs('type'));
			$where .= ' and type = '.$this->type;
		}

		$this->blog = feedParse(spClass('db_recommend')->spLinker()->spPager($this->spArgs('page',1),18)->findAll($where,'bid desc') ,'recommend_page_'.$this->spArgs('page',1));

		$this->page = spClass('db_blog')->spPager()->getPager();
		$this->hotMax = $tags['rs'][0]['num'];

		$this->htag = $tags['rs'];

		$this->title = '推荐频道';
		$this->CurrentModule = 'recommend';
		$this->display('recommend.html');
	}


	public function discovery()
	{
		$this->memberinfo();
		 $this->cate = spClass('db_category')->findCate();


		if($this->spArgs('catename'))
		{
			$_SESSION['discover_catename'] = $this->spArgs('catename');
			$cname = spClass('db_member')->escape('%'.urldecode($this->spArgs('catename')).'%');
			if($this->spArgs('local'))
			{
				$local = spClass('db_member')->escape('%'.urldecode($this->spArgs('local')).'%');
				$_SESSION['discover_local'] = TRUE;
				$where = "`local` like $cname ";
			}else{
				unset($_SESSION['discover_local']);
			}
			$this->currcid = $this->spArgs('cid');

		}

		if($_SESSION['discover_catename'])
		{
			$blogtag = explode(',',urldecode($_SESSION['discover_catename']));
			$pre = '';
				foreach($blogtag as $d)
				{
					$pre .= '`blogtag` like \'%'.$d.'%\' or ';
				}
				$pre = substr($pre,0,-4);
				$where = "$pre and `blogtag` != ''";
		}

		if($_SESSION['discover_local'])
		{
			$cname = spClass('db_member')->escape('%'.urldecode($_SESSION['discover_catename']).'%');
			$where = "`local` like $cname ";
		}

		if($this->spArgs('cateall'))
		{
			unset($_SESSION['discover_catename']);
			header("Location:".spUrl('main','discovery'));
		}


		$this->userinfo = spClass('db_member')->spPager($this->spArgs('page',1),16)->findAll($where,'flow desc,num desc');
		$count  = spClass('db_member')->findCount($where);
		$page = spClass('db_member')->spPager()->getPager();



		$this->CurrentModule = 'discover';
		if($this->spArgs('catename'))
		{
			$this->titlepre = urldecode($this->spArgs('catename')).' - 发现';
		}else{
			$this->titlepre = '发现';
		}
		if($this->spArgs('ajaxload'))
		{
			if($this->spArgs('page') <= $page['total_page'])
			{
				$this->data = $this->userinfo;
				$this->display('require_discovery_user.html');
			}
		}else{
			$this->display('discovery.html');
		}
	}


	public function now()
	{
		$uid = $_SESSION['uid'];
		$this->inuser=true;
		$this->memberinfo();
		$this->favatag = spClass('db_mytag')->myFavaTag($_SESSION['uid'],5); //显示收藏标签
		$sql = "SELECT b. * , k.id AS likeid, k.iflike , f.id AS followid ,m.username,m.domain
						FROM `".DBPRE."blog` AS b LEFT JOIN `".DBPRE."likes` AS k ON ( b.bid = k.bid AND k.uid ='$uid' )
						LEFT JOIN `".DBPRE."follow` AS f ON ( b.uid = f.touid and f.uid = '$uid' )
						LEFT JOIN `".DBPRE."member` as m on b.uid = m.uid where b.open = 1 order by b.bid desc";

		$this->blogs = spClass('db_blog')->spPager($this->spArgs('page',1),10)->findSql($sql);
		$page = spClass('db_blog')->spPager()->getPager('');

		$this->title = '最新糗事';
		$this->CurrentModule = 'now';
		if($this->spArgs('ajaxload'))
		{
			if($this->spArgs('page') <= $page['total_page'])
			{
				$this->limits = 4;
				$this->data = $this->blogs; //将内容给模板变量
				$this->display('require_feeds.html');
			}
		}else{
			$this->display('now.html');
		}
	}


	function license()
	{
    return;
	}














































	/*用户登陆*/
	public function login()
	{

		if($this->spArgs('email'))
		{
			$userobj = spClass('db_member');
			if($this->yb['loginCodeSwitch'] != 'close') //如果开启
			{
				$userobj->verifier = $userobj->verifier_login;
			}else{
				$userobj->verifier = $userobj->verifier_openConnect_Login;
			}

			if( false == $userobj->spVerifier( $this->spArgs()) ){
				$userobj->userLogin($this->spArgs());


				if($this->spArgs('callback'))
				{
					$this->jslocation(base64_decode($this->spArgs('callback')));
				}else{
					$this->jslocation(spUrl('main','user'));
				}

			}else{
				$err = $userobj->spVerifier($this->spArgs());
				foreach($err as $d){$errs[] = $d;}
				$this->errmsg = $errs[0][0];

			}
		}
		$this->callback = $this->spArgs('callback');
		$this->time = time();
		$this->email = $_COOKIE['unames'];
		$this->flag = "login";
		$this->display('login.html');
	}

	/*用户退出*/
	public function logout()
	{
		$_SESSION = array();
		session_destroy();
		if($this->spArgs('callback'))
		{
			$this->jslocation(base64_decode($this->spArgs('callback')));
		}else{
			$this->jslocation(spUrl('main','index'));
		}
	}

	/*用户注册*/
	public function reg()
	{
		$this->time = time();
		$this->flag = "reg";
		if($this->spArgs('doing'))
		{
			$userobj = spClass('db_member');

			if($this->yb['regCodeSwitch'] != 'close') //如果开启
			{
				$userobj->verifier = $userobj->verifier_reg;
			}else{
				$userobj->verifier = $userobj->verifier_openConnect_Reg;
			}

			if( false == $userobj->spVerifier($this->spArgs()) ){
				$userobj->userReg($this->spArgs());
				if($this->spArgs('callback'))
				{
					$this->jslocation(base64_decode($this->spArgs('callback')));
				}else{
					$this->jslocation(spUrl('main','user'));
				}
			}else{
				$err = $userobj->spVerifier($this->spArgs());
				foreach($err as $d){$errs[] = $d;}
				$this->errmsg = $errs[0][0];
			}
		}
		$this->callback = $this->spArgs('callback');
		$this->display('reg_new.html');
	}





	/*获取验证码*/
	public function vcode()
	{
		spClass('spVerifyCode')->display();
	}

}
?>