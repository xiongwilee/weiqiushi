<?php
/////////////////////////////////////////////////////////////////
//微糗事, Copyright (C)   2011 - 2012  weiqiushi.com 
//EMAIL:birthday10241120@qq.com QQ:373071372                              
//$Id: db_theme.php 34 2011-10-28 16:56:54Z anythink $ 

class db_theme extends spModel  
{  
	var $pk = "uid"; //主键  
	var $table = "theme"; // 数据表的名称 
	


	
	function getByDomain($domain)
	{
		return spClass('db_member')->find(array('domain'=>$domain),'','uid,username,domain,blogtag,sign,num,flow,likenum,local,logtime');
	}
	
	function getByUid($uid)
	{
		return spClass('db_member')->find(array('uid'=>$uid),'','uid,username,domain,blogtag,sign,num,flow,likenum,local,logtime');
	}
	
	function getByBid($bid)
	{
		$rs = spClass('db_blog')->find(array('bid'=>$bid),'','uid');
		return spClass('db_member')->find(array('uid'=>$rs['uid']),'','uid,username,domain,blogtag,sign,num,flow,likenum,local,logtime');
	}
	
	/*更新扩展字段并删除之前的内容*/
	function updateExtField($uid,$field,$rootpath,$filepath)
	{
		$user = $this->find(array('uid'=>$uid));

		if($user[$field] !='')
		{
			@unlink($rootpath.$user[$field]);
		}
		$this->update(array('uid'=>$uid),array($field=>$filepath));
	}
	
	function clearCustom()
	{
		$ext = spExt('aUpload');
		$savedir = $ext['savepath'].'/'.$ext['savedir'].'/theme/';
		$this->updateExtField($_SESSION['uid'],'img1',$savedir,'');
		$this->updateExtField($_SESSION['uid'],'img2',$savedir,'');
		$this->updateExtField($_SESSION['uid'],'img3',$savedir,'');
		$this->updateExtField($_SESSION['uid'],'img4',$savedir,'');
		$this->update(array('uid'=>$_SESSION['uid']),array('setup'=>'','css'=>''));
	}
	
	
	function saveTheme()
	{
		$rs = $this->find(array('uid'=>$_SESSION['uid']));
		if($rs)
		{
			$this->update( array('uid'=>$_SESSION['uid']),array('theme'=>$_SESSION['customize']['theme'],'css'=>$_SESSION['customize']['css'],'setup'=>serialize($_SESSION['customize']['config'])));
		}else{
			$this->create(array('uid'=>$_SESSION['uid'],'theme'=>$_SESSION['customize']['theme'],'css'=>$_SESSION['customize']['css'],'setup'=>serialize($_SESSION['customize']['config'])));
		}
		spClass('db_skins')->incrField(array('skindir'=>$_SESSION['customize']['theme']), 'usenumber'); 
		$_SESSION['customize'] = '';
	}


}
?>