<?php
/////////////////////////////////////////////////////////////////
//微糗事, Copyright (C)   2011 - 2012  weiqiushi.com 
//EMAIL:birthday10241120@qq.com QQ:373071372                              
//$Id: db_notice.php 34 2011-10-28 16:56:54Z anythink $ 

//通知发送
//系统通知级别 0 用户私信  1 评论通知  2 系统通知 3关注通知
class db_notice extends spModel  
{  
	var $pk = "id"; 
	var $table = "notice"; // 数据表的名称
	var $linker = array(  
        array(  
             'type' => 'hasone',   // 关联类型，这里是一对一关联  
            'map' => 'user',    // 关联的标识  
             'mapkey' => 'foruid', // 本表与对应表关联的字段名  
             'fclass' => 'db_member', // 对应表的类名  
            'fkey' => 'uid',    // 对应表中关联的字段名
			'field'=>'uid,username,domain ',//你要限制的字段     
            'enabled' => true     // 启用关联  
        ), 
		

    );  

	/*评论回复列表*/
	function noticeReplay($row,$title,$msg='')
	{
		$this->create(array('uid'=>$row['foruid'],'sys'=>'1','foruid'=>$_SESSION['uid'],'title'=>$title,'info'=>$msg,'time'=>time(),'location'=>'blog|'.$row['bid'],'time'=>time()));
		$this->sendReplay($_SESSION['uid'],$row['foruid'],$msg,$row['bid']);
	}
	
	/*发送私信
		进行严格私信限制
	*/
	function noticePm($row)
	{
		if($row['uid'] != $_SESSION['uid'])
		{
			$uid = $row['uid'];
			if($row['info'] == ''){ return 0; }//内容没写
			if($_SESSION['pmsend'][$uid] > time()){return -1;}//频率限制
			$this->create(array('uid'=>$uid,'sys'=>'0','foruid'=>$_SESSION['uid'],'title'=>'','info'=>$row['info'],'time'=>time(),'location'=>'user|'.$row['uid'],'time'=>time()));
			$_SESSION['pmsend'][$uid] = time()+30;
			$this->sendPm($_SESSION['uid'],$row['uid'],$row['info']);
			return 1;
		}else{
			return -2;
		}
		
		exit;
		
	}
	
	/*关注通知*/
	function noticeFollow($uid,$imuid,$is=1)
	{
		if($is ==1)
		{
			$this->noticeReady($uid,3,$imuid,'关注通知','关注了你','user|'.$uid);
			$this->sendFollow($uid,$imuid);
		}else{
			$this->noticeReady($uid,3,$imuid,'关注通知','互相关注','user|'.$uid);
			$this->sendFollow($uid,$imuid);
		}
	}
	
	/*发送评论邮件*/
	function sendReplay($imuid,$uid,$msga,$bid)
	{
		if($imuid == $_SESSION['uid']) {return true;}
		$rs = spClass('db_member')->find(array('uid'=>$uid));
		$for = spClass('db_member')->find(array('uid'=>$imuid));
		if($rs['m_rep'] != 1) return true;
		$title = '亲爱'.$rs['username'].',您在'.$GLOBALS['YB']['site_title'].'的糗事回复通知';
		$uri = pathinfo($GLOBALS['uri']);
		@preg_match("/\[at=(.*?)](.*?)\[\/at\]/i",$msga,$msg); //$msg[1]
		$msg = str_replace($msg[0],'<a href="'.$uri['dirname'].goUserHome(array('uid'=>$msg[1])).'" target="_blank">'.$msg[2].'</a>',$msga); //处理邮件中的at
		$tpl = '<p>亲爱的'.$rs['username'].'：</p>
				<p><img src="'.$uri['dirname'].avatar(array('uid'=>$imuid,'size'=>'middle')).'" align="bottom" style="margin-right:15px"/>
				'.$for['username'].'回复了您的糗事：</p>
				<p>"'.$msg.'"</p><a href="'.$uri['dirname'].goUserBlog(array('bid'=>$bid)).'" target="_blank">你可以立即查看您的糗事</a></p>';
				
		$body = $this->sendmailTemplate($title,$tpl);
		$this->emailReady($rs['email'],$title,$body);
	}
	
	/*发送注册邮件*/
	function sendRegisgtr($uid)
	{
		$rs = spClass('db_member')->find(array('uid'=>$uid));
		$title = '亲爱的会员,这是一封来自'.$GLOBALS['YB']['site_title'].'的注册通知';
		$tpl = '<p>亲爱的会员：</p><p>您使用邮箱：'.$rs['email'].',在'.$GLOBALS['YB']['site_title'].'注册,祝您使用愉快。</p><p>'.date('Y-m-d H:i',time()).'</p>';
		$body = $this->sendmailTemplate($title,$tpl);
		$this->emailReady($rs['email'],$title,$body);
	}
	
	/*发送私信*/
	function sendPm($imuid,$uid,$info)
	{
		$rs = spClass('db_member')->find(array('uid'=>$uid));
		$for = spClass('db_member')->find(array('uid'=>$imuid));
		if($rs['m_pm'] != 1) return true;
		$title = '亲爱'.$rs['username'].',您收到了来自'.$GLOBALS['YB']['site_title'].'的私信通知';
		$uri = pathinfo($GLOBALS['uri']);
		$tpl = '<p>亲爱的'.$rs['username'].'：</p>
				<p><img src="'.$uri['dirname'].avatar(array('uid'=>$imuid,'size'=>'middle')).'" align="bottom" style="margin-right:15px"/>
				'.$for['username'].',对您说:"'.$info.'" <a href="'.$uri['dirname'].spUrl('user','pm',array('look'=>$imuid)).'" target="_blank">你可以立即给Ta回复</a></p>
				<p>'.date('Y-m-d H:i',time()).'</p>';
		$body = $this->sendmailTemplate($title,$tpl);
		$this->emailReady($rs['email'],$title,$body);
	
	}
	
	/*发送关注邮件*/
	function sendFollow($uid,$imuid)
	{
		$rs = spClass('db_member')->find(array('uid'=>$uid));
		$for = spClass('db_member')->find(array('uid'=>$imuid));
		if($rs['m_fow'] != 1) return true;
		$title = '亲爱'.$rs['username'].',您收到了来自'.$GLOBALS['YB']['site_title'].'的关注通知';
		$uri = pathinfo($GLOBALS['uri']);
		$tpl = '<p>亲爱的'.$rs['username'].'：</p>
				<p><img src="'.$uri['dirname'].avatar(array('uid'=>$imuid,'size'=>'middle')).'" align="bottom" style="margin-right:15px"/>
				'.$for['username'].',关注了你。<a href="'.$uri['dirname'].goUserHome(array('domain'=>'home','uid'=>$imuid)).'" target="_blank">你可以去看看Ta哟</a></p>
				<p>'.date('Y-m-d H:i',time()).'</p>';
		$body = $this->sendmailTemplate($title,$tpl);
		$this->emailReady($rs['email'],$title,$body);
	}
	
	
	
	
	
	
	/*测试发信*/
	function sendMailTest()
	{
		$to =  $GLOBALS['YB']['mail_from'];
		$title = '这是一封测试邮件';
		$tpl = $this->sendmailTemplate($title,'您看到这封邮件标示您的邮件服务器配置正确，可以启用邮件发送功能。');
		$this->emailReady($to,$title,$tpl);
	}
	
	
	function sendmailTemplate($title,$body)
	{
		$yb =  $GLOBALS['YB'];
		$tpl = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
					<html xmlns="http://www.w3.org/1999/xhtml">
					<head>
					<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
					<title>'.$title.'</title>
					</head>
					<body>
					<div style="border:1px solid #DDDDDD; width:700px; margin:0px auto">
						<div style="margin:10px"><img src="'.$yb['url'].'/tpl/image/logo.png" alt="logo" /></div>
						<div style="font-size:20px; margin:10px; font-weight:bold;font-family:\'黑体\'">'.$title.'</div>
						
						<div style="margin:10px; line-height:2em; font-size:12px">'.$body.'</div>
						<div style="color:#AAAAAA; font-size:12px; margin:10px;">取消邮件通知请在个人设置中取消勾选相关通知,请不要回复本系统邮件。<br/>
						Power by <a href="'.$yb['url'].'" target="_blank">'.$yb['soft'].'</a>'.$yb['version'].' Copyright @2011-'.(date('Y',time())+1).' 
						'.$yb['site_title'].' <a href="'.$yb['uri'].'" target="_blank">'.$yb['uri'].'</a>
						</div>

					</div>
					</body>
					</html>';
		return $tpl;
	}
	

	
	/*creaty ready*/
	/*location formay gotomod|id*/
	private function noticeReady($uid,$type,$imuid,$title,$info,$location)
	{
		return $this->create(array('uid'=>$uid,'sys'=>$type,'foruid'=>$imuid,'title'=>$title,'info'=>$info,'location'=>$location,'time'=>time()));
	}
	
	
	/*send mail ready*/
	private function emailReady($to,$title,$body)
	{
		$yb =  $GLOBALS['YB'];
		$mail = spClass('PHPMailer');
		$mail = new PHPMailer(); 
		$mail->Mailer = 'smtp';
		$mail->CharSet = "UTF-8";
		$mail->Encoding = "base64";
		$mail->IsSMTP();                         
		$mail->SMTPAuth   = true;  
	
		$mail->SMTPSecure = 'ss1'; 		
		$mail->Port       = $yb['mail_port'];                   
		$mail->Host       = $yb['mail_host']; 
		$mail->Username   = $yb['mail_user'];     
		$mail->Password   = $yb['mail_pwd'];     
		$mail->From       = $yb['mail_from'];
		$mail->FromName   = $yb['mail_fromname'];
		if($yb['mail_debug'] == 1){ $mail->SMTPDebug  =  True;}
		
		$mail->AddAddress($to);
		$mail->Subject    = $title;
		$mail->MsgHTML($body);
		$mail->IsHTML(true); // send as HTML
		if($yb['mail_open'] == 1)
		{
			if(!$mail->Send()){echo  $mail->ErrorInfo;}
		}
	}
}
?>