<?php
/////////////////////////////////////////////////////////////////
//微糗事, Copyright (C)   2011 - 2012  weiqiushi.com 
//EMAIL:birthday10241120@qq.com QQ:373071372                              
//$Id: db_member.php 35 2011-11-03 08:18:14Z anythink $ 

class db_recommend extends spModel  
{  
	var $pk = "uid"; // 主键  
	var $table = "recommend"; // 数据表的名称
	
	var $linker = array(  
        array(  
             'type' => 'hasone',   // 关联类型，这里是一对一关联  
            'map' => 'user',    // 关联的标识  
             'mapkey' => 'uid', // 本表与对应表关联的字段名  
             'fclass' => 'db_member', // 对应表的类名  
            'fkey' => 'uid',    // 对应表中关联的字段名
			'field'=>'uid,username,domain ',//你要限制的字段     
            'enabled' => true     // 启用关联  
        ), 
		 array(  
             'type' => 'hasone',   // 关联类型，这里是一对一关联  
            'map' => 'blog',    // 关联的标识  
             'mapkey' => 'bid', // 本表与对应表关联的字段名  
             'fclass' => 'db_blog', // 对应表的类名  
            'fkey' => 'bid',    // 对应表中关联的字段名
			'field'=>'bid,title,type,body',//你要限制的字段     
            'enabled' => true     // 启用关联  
        ), 
		  
    );
	
	
	//添加一个推荐 后台
	function createRecommend($row)
	{
		if($row['uid'])
		{
			$rs = spClass('db_member')->find(array('uid'=>$row['uid']));
			if(!is_array($rs)){ return -3; } //不存在的用户
			$uid = $this->find(array('tuiuid'=>$row['uid']));
			if(is_array($uid)){return -4;} //已经在列表
			
			$row['open'] = 1;
			$row['tuiuid'] = $row['uid'];
			$row['time'] = time();
			$row['uid'] = $_SESSION['uid'];
			return $this->create($row);
			
		
		
		}else{
			$rs = spClass('db_blog')->find(array('bid'=>$row['bid']));
			if(!is_array($rs)){ return -1; } //不存在的日志
			
			$rs = $this->find(array('bid'=>$row['bid']));
			if(is_array($rs)){ return -2; } //已经存在的

			$row['open'] = 1;
			$row['time'] = time();
			$row['uid'] = $_SESSION['uid'];
			return $this->create($row);
		}
	
		
	}
	
	//前台
	
	function createTuijian($row)
	{
		unset($row['id']);
		

		if($row['bid'])  //如果推荐的是bid
		{
			if($row['desc'] == ''){	return -2;}
			$rs = spClass('db_blog')->find(array('bid'=>$row['bid']));
			if(!is_array($rs)){ return -1; } //不存在的日志
			$rs = $this->find(array('bid'=>$row['bid'])); //检查是否已经被推荐过
		
			if(is_array($rs)) //已经被推荐过
			{
				$this->incrField(array('bid'=>$row['bid']),'num');
				return 1;
			}else{
				unset($row['tuiuid']);
				$row['time'] = time();
				$row['open'] = 0;
				$row['uid'] = $_SESSION['uid'];
				spClass('db_feeds')->recommend($row,$_SESSION['uid']);
				return $this->create($row);
			}
		}elseif(isset($row['tuiuid'])){   //如果推荐的是uid
			if($row['desc'] == ''){	return -2;}
			if(!$row['cid']){	return -3;}
			$rs = $this->find(array('tuiuid'=>$row['tuiuid'])); //检查是否已经被推荐过
			if(is_array($rs)) //已经被推荐过
			{
				$this->incrField(array('tuiuid'=>$row['tuiuid']),'num');
				return 1;
			}else{
				unset($row['bid']);
				$row['time'] = time();
				$row['open'] = 0;
				$row['uid'] = $_SESSION['uid'];
				//插入推荐动态
				
				return $this->create($row);
			}
		
		
		
		
		}else{

		}
		
		
		
		
		
		
		
		
	
		

		$row['open'] = 1;
		$row['time'] = time();
		$row['uid'] = $_SESSION['uid'];
		return $this->create($row);
	
	}
	 

}
?>