<?php
/////////////////////////////////////////////////////////////////
//微糗事, Copyright (C)   2011 - 2012  weiqiushi.com 
//EMAIL:birthday10241120@qq.com QQ:373071372                              
//$Id: openconnect.php 6 2011-09-20 14:50:50Z anythink $ 


class openconnect extends top
{

	function __construct()
	{
		parent::__construct(); 
		//认证返回的信息统一命名为 [openid] [oauth_token]  [oauth_token_secret] 
		//不一样的名字请自行在LoginCallback方法中修改session名字
	}
	
	/*连接qq*/
	public function qq()
	{
		if($this->yb['openlogin_qq_open'] == 0){exit('系统管理员没有开启QQ登陆功能');}
		$this->app = 'qq';
		spClass('qqConnect')->init($this->yb['openlogin_qq_appid'],$this->yb['openlogin_qq_appkey'],$this->yb['openlogin_qq_callback']);
		
		if($this->spArgs('callback'))
		{
			if(spClass('qqConnect')->LoginCallback()){	header("Location:index.php?c=openconnect&a=qq&login=yes");}	exit;
		}
		
		if($this->spArgs('login'))
		{
			if(!$_SESSION['qq']['openid']){exit('登陆状态失效,请重新登陆');}
			$type = 'QQ';  //获取类型为QQ
			$this->user = $_SESSION['qq'];
			$this->type = $this->spArgs('type','reg');

			
			
			if($this->spArgs('linkSubmit'))
			{
				if($this->spArgs('type') != 'login')
				{
					$userobj = spClass('db_member'); //验证注册
					$userobj->verifier = $userobj->verifier_openConnect_Reg; 
					if( false == $userobj->spVerifier($this->spArgs()) ){  
						$uid = $userobj->userReg($this->spArgs());
						$params = array('openid' => $_SESSION['qq']['openid'],
										'token'  => $_SESSION['qq']['oauth_token'],
										'types'  => $type,
										'uid'    => $uid,
										'expires'=> $_SESSION['qq']['expires']
						);
						$this->activeLogin($params);
						if($this->spArgs('face')) $this->getUserFace($this->user['pic'],$uid);
						$this->jslocation(spUrl('main','index'));
					}else{
						$this->errmsg_arr = $userobj->spVerifier($this->spArgs());	
					}
				}else{
					$userobj = spClass('db_member'); //验证登陆
					$userobj->verifier = $userobj->verifier_openConnect_Login; 
					if( false == $userobj->spVerifier($this->spArgs()) ){ 
						$params = array('openid' => $_SESSION['qq']['openid'],
										'token'  => $_SESSION['qq']['oauth_token'],
										'types'  => $type,
										'uid'    => $_SESSION['uid'],
										'expires'=> $_SESSION['qq']['expires']
						);
						$this->activeLogin($params);
						if($this->spArgs('face')) $this->getUserFace($this->user['pic'],$_SESSION['uid']);
						$this->jslocation(spUrl('main','index'));
					}else{
						$this->errmsg_arr = $userobj->spVerifier($this->spArgs());	
					}
				}
			}
			

			$user = spClass('db_memberex')->spLinker()->find(array('openid'=>$this->user['openid'])); //获取用户数据
			if($user['expires'] != 0 && time() > $user['expires'])
			{
				$msg = '您的绑定信息与'.date('Y-m-d',$user['expires']).'已过期，请您重新使用连接功能，并绑定已有账号。';
				spClass('db_memberex')->CancelBind($type,$_SESSION['uid']);
				unset($_SESSION['openconnect'][$type]);
				spClass('db_memberex')->delete(array('openid'=>$this->user['openid']));
				$this->error($msg,spUrl('main','index'));
			}

			if($user)
			{
				$this->setLoginInfo($user['user']);
				$this->jslocation(spUrl('main','index'));
			}else{
				//如果不存在 提示绑定
				$this->display('oauth/login.html');
			}
		exit;
		}
		
		spClass('qqConnect')->getLoginUrl();
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public function CancelConnect()
	{
		if($this->spArgs('type'))
		{
			$type = $this->spArgs('type');
			spClass('db_memberex')->CancelBind($type ,$_SESSION['uid']);
			unset($_SESSION['openconnect'][$type]);
			echo 1;
		}
	}
	
	
	
	
	
	
	/*写入登陆信息*/
	private function setLoginInfo($result,$type)
	{
		$ip = getIP();
		$time = time();
		$_SESSION['uid'] = $result['uid'];
		$_SESSION['email'] = $result['email'];
		$_SESSION['domain'] = $result['domain'];
		$_SESSION['username'] = $result['username'];
		$_SESSION['admin'] = $result['admin'];
		$local = ip2name($ip);
		spClass('db_member')->update(array('uid'=>$result['uid']),array('logtime'=>time(),'logip'=>$ip,'local'=>$local));
		$this->_getActionToken($result['uid']);	
	}
	
	/*全局功能，创建一个新的外部连接*/
	private function activeLogin($params)
	{
		spClass('db_memberex')->create($params);
		$result = spClass('db_member')->find(array('uid'=>$params['uid']));
		$this->setLoginInfo($result,$params['uid']);
		
	}
	
	/*获取所有活动的扩展登陆信息*/
	private function _getActionToken($uid)
	{
		$rs = spClass('db_memberex')->spLinker()->findAll(array('uid'=>$uid));
		foreach($rs as $d)
		{
			$_SESSION['openconnect'][$d['types']]['openid'] = $d['openid'];
			$_SESSION['openconnect'][$d['types']]['token'] = $d['token'];
			$_SESSION['openconnect'][$d['types']]['secret'] = $d['secret'];
		}
	}
	
	
	
	/*拉取用户头像*/
	private function getUserFace($url,$uids)
	{	
		if($string = @file_get_contents($url))
		{
			$params = spExt('aUpload');
			$temppath = $params['tmppath'];
			$urls = pathinfo($url); //获取图片信息
			$tempfile =  $temppath . '/'.$uids.'.'.$urls['extension'];
			
			$savepath = APP_PATH.'/avatar';
			$uid = sprintf("%09d", $uids);
			$dir1 = substr($uid, 0, 3);
			$dir2 = substr($uid, 3, 2);
			$dir3 = substr($uid, 5, 2);
			$filepath = $savepath.'/'.$dir1.'/'.$dir2.'/'.$dir3.'/';
			__mkdirs($filepath);
			if(file_put_contents($tempfile,$string))
			{
				$uids = substr($uid, -2);
				$big = 'big_'.$uids.'.jpg'; 
				$middle = 'middle_'.$uids.'.jpg'; 
				$small = 'small_'.$uids.'.jpg'; 
				$imghd = spClass('image');
				$imghd->load($tempfile);
				$imghd->resizeToWidth(200);
				$imghd->save($filepath.$big);
				$imghd->load($tempfile);
				$imghd->resizeToWidth(65);
				$imghd->save($filepath.$middle);
				$imghd->load($tempfile);
				$imghd->resizeToWidth(20);
				$imghd->save($filepath.$small);
				unlink($tempfile);
				return true;
			}
		}
	}
	
	
	

	

	
}
?>