<?php
/////////////////////////////////////////////////////////////////
//微糗事, Copyright (C)   2011 - 2012  weiqiushi.com 
//EMAIL:birthday10241120@qq.com QQ:373071372                              
//$Id: db_follow.php 24 2011-09-29 08:04:37Z anythink $ 

class db_follow extends spModel  
{  
	var $pk = "id"; // 主键  
	var $table = "follow"; // 数据表的名称 
	var $linker = array(  
        array(  
             'type' => 'hasone',   // 关联类型，这里是一对一关联  
            'map' => 'tome',    // 关联的标识  
             'mapkey' => 'touid', // 本表与对应表关联的字段名  
             'fclass' => 'db_member', // 对应表的类名  
            'fkey' => 'uid',    // 对应表中关联的字段名
			'field'=>'uid,username,domain,sign',//你要限制的字段     
            'enabled' => true     // 启用关联  
        ), 
		

        array(  
             'type' => 'hasone',   // 关联类型，这里是一对一关联  
            'map' => 'meto',    // 关联的标识  
             'mapkey' => 'uid', // 本表与对应表关联的字段名  
             'fclass' => 'db_member', // 对应表的类名  
            'fkey' => 'uid',    // 对应表中关联的字段名
			'field'=>'uid,username,domain,sign',//你要限制的字段     
            'enabled' => true     // 启用关联  
        ), 
		  
    );
	

	/*进行关注和取消关注的操作 关注谁 1已关注  2取消关注*/
	function changeFollow($foruid,$imuid)
	{
		$link = 0;
		$result = $this->find(array('uid'=>$imuid,'touid'=>$foruid)); //判断我之前关注过没有
		$linker = $this->find(array('uid'=>$foruid,'touid'=>$imuid)); //判断他关注过我没
	
		if($foruid == $imuid){exit('自己不能加自己关注');	}
		
		
		if(is_array($result))
		{
			$this->delete(array('uid'=>$imuid,'touid'=>$foruid));  //删除我关注他
			spClass('db_member')->decrField(array('uid'=>$imuid),'flow'); //删除关注统计
			$this->update(array('uid'=>$foruid,'touid'=>$imuid),array('linker'=>0)); //取消关系
			return 2;
		}
		
		$pm = 1;
		if(is_array($linker))
		{
			$link = 1;
			$pm = 2;//发送跟随pm类型2
			$this->update(array('uid'=>$foruid,'touid'=>$imuid),array('linker'=>1));  //互相关注
			
		}
		
		$this->create(array('uid'=>$imuid,'touid'=>$foruid,'linker'=>$link,'time'=>time()));
		spClass('db_member')->incrField(array('uid'=>$imuid),'flow'); //增加回复统计
		spClass('db_notice')->noticeFollow($foruid,$imuid,$pm);//站内发通知
		return 1;
	}
	
	//获取跟随的用户动态
	function getFollowUid($uid)
	{
		$uidArr = $this->findAll(array('uid'=>$uid));
		$str = '';
		if(is_array($uidArr))
		{
			foreach($uidArr as $d)
			{
				$str .= $d['touid'].',';
			}
		}
		return substr($str,0,-1);
	}
}
?>