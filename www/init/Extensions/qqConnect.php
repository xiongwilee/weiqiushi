<?php
/////////////////////////////////////////////////////////////////
//微糗事, Copyright (C)   2011 - 2012  weiqiushi.com 
//EMAIL:birthday10241120@qq.com QQ:373071372                              
//$Id: qqConnect.php 7 2011-09-20 15:02:20Z anythink $ 


if( substr(PHP_VERSION, 0, 3) == "5.3" ){
	error_reporting(E_ALL & ~E_NOTICE & ~E_WARNING & ~E_DEPRECATED);
}else{
	error_reporting(E_ALL & ~E_NOTICE & ~E_WARNING);
}




class qqConnect
{
	private $appid =0;
	private $appkey = 0;
	private $callback = 0;
	private $queryUrl = '';
	private $QQhexchars = '0123456789ABCDEF';

	function init($appid,$appkey,$callback)
	{
		$this->appid  = $appid; 
		$this->appkey  = $appkey;
		$this->callback = $callback;
	}
	

	function getLoginUrl()
	{
		$uri = 'https://graph.qq.com/oauth2.0/authorize?';
		$_SESSION['state'] = md5(uniqid(rand(), TRUE));
		$post = array('response_type'=> 'code',
					  'scope'		 => 'get_user_info,list_album,upload_pic,add_album,add_one_blog,add_topic,add_share,add_weibo,list_photo,check_page_fans',
					  'client_id'	 => $this->appid,
					  'redirect_uri' => $this->callback,
					  'state'        => $_SESSION['state'],
		);
		$redirect = $uri . $this->postData($post);
		header("Location:$redirect");
	}
	
	public function LoginCallback()
	{

	  if($_REQUEST['state'] == $_SESSION['state']) 
	  {
			$code = $_REQUEST['code'];
			$uri = 'https://graph.qq.com/oauth2.0/token?';
			$post = array('grant_type'=> 'authorization_code',
					  'scope'		 => 'get_user_info,list_album,upload_pic,add_album,add_one_blog,add_topic,add_share,add_weibo,list_photo,check_page_fans',
					  'client_id'	 => $this->appid,
					  'client_secret'=> $this->appkey,
					  'redirect_uri' => $this->callback,
					  'code'         => $code,
					  'redirect_uri' => $this->callback,
					  'state'        => $_SESSION['state'],
			);
			$response = $this->formPost($uri,$post);
			if(strpos($response, "callback") !== false)
			{
				$lpos = strpos($response, "(");
				$rpos = strrpos($response, ")");
				$response  = substr($response, $lpos + 1, $rpos - $lpos -1);
				$msg = json_decode($response);
				if (isset($msg->error))
				{
				   echo "<h3>error:</h3>" . $msg->error;
				   echo "<h3>msg  :</h3>" . $msg->error_description;
				   exit;
				}
			}
		 $params = array();
		 parse_str($response, $params);
		 $uri = 'https://graph.qq.com/oauth2.0/me?';
		 $post = array('access_token'=>$params['access_token'] );
		 $str = $this->formPost($uri,$post);
		 if(strpos($str, "callback") !== false)
		 {
			$lpos = strpos($str, "(");
			$rpos = strrpos($str, ")");
			$str  = substr($str, $lpos + 1, $rpos - $lpos -1);
		 }
		 $user = json_decode($str);
		 if(isset($user->error))
		 {
			echo "<h3>error:</h3>" . $user->error;
			echo "<h3>msg  :</h3>" . $user->error_description;
			exit;
		 }
		$_SESSION['qq']['openid'] = $user->openid;
		$_SESSION['qq']['oauth_token'] = $params['access_token'];
		$_SESSION['qq']['expires'] = ( time() + $params['expires_in']);
		
		$rs = $this->get_user_info($params['access_token'],$user->openid);
		
		$_SESSION['qq']['nickname'] = $rs['nickname'];
		$_SESSION['qq']['pic'] = $rs['pic'];
		return true;
	  }else{
		exit("The state does not match. You may be a victim of CSRF.");
	  }
	}
	
	/*推送内容到QQ空间或QQ微博
	$url 视频地址 
	$con 描述
	$to  平台(1QQ空间 2腾讯朋友 3微博 4Q+ )
	*/
	public function addTopicForVideo($url,$con,$to,$openid,$access_token)
	{
		$uri = 'https://graph.qq.com/shuoshuo/add_topic?';
		$post = array('access_token'       => $access_token,
					  'oauth_consumer_key' => $this->appid,
					  'openid'		       => $openid,
					  'richtype'           => 3,  //1图片 2网页 3视频        
					  'richval'			   => $url,
					  'con'		           => $con,
					  'format'			   => 'json',
					  'third_source'	   =>$to   
		);
		print_r($post);
		exit;
		$response = $this->formPost($uri,$post);
		print_r($response);
		/*
		$response = json_decode($response);
		if($response->msg != '')
		{
			$this->js_notice($response->ret,$response->msg);
		}
		$this->js_notice($response->ret,$response->msg);
		*/
	}
	

	/*获取昵称头像*/
	private function get_user_info($token,$openid)
	{
		$uri    = 'https://graph.qq.com/user/get_user_info?';
		$post = array('access_token' => $token,
					  'oauth_consumer_key'=>$this->appid,
					  'openid'		 => $openid,
					  'format'	     => 'json'
		);
		$response = $this->formPost($uri,$post);
		$rs = json_decode($response,true);
		if($rs['msg'] == '')
		{
			$data['nickname'] = $rs['nickname'];
			$data['pic'] = substr($rs['figureurl'],0,-2).'100';
		}else{
			echo "<h3>error:</h3>" . $rs['ret'];
			echo "<h3>msg  :</h3>" . $rs['msg'];
			exit;
		}
		return $data;
	}
	
	
	/*中途错误报告*/
	private function js_notice($id,$msg)
	{
		echo '<script>alert("同步错误 #'.$id.':'.$msg.'");</script>';
	}
	
	
	private function formPost($url,$post_data){
		$o='';
		foreach ($post_data as $k=>$v){
			$o.= "$k=".rawurlencode($v)."&";
		}
		$post_data=substr($o,0,-1);
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_POST, 1); 
		curl_setopt($ch, CURLOPT_HEADER, 0);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1); 
		curl_setopt($ch, CURLOPT_POSTFIELDS, $post_data); 
		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
    	curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
		$ret = curl_exec($ch);
		curl_close($ch);
	
		return $ret;
	}
	

	
	private function postData($post_data)
	{
		$o='';
		foreach ($post_data as $k=>$v){
			$o.= "$k=".urlencode($v)."&";
		}
		$post_data=substr($o,0,-1);
		return $post_data;
	}
	
}
?>