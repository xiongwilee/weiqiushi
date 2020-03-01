<?php
/////////////////////////////////////////////////////////////////
//微糗事, Copyright (C)   2011 - 2012  weiqiushi.com 
//EMAIL:birthday10241120@qq.com QQ:373071372                              
//$Id: db_tags.php 35 2011-11-03 08:18:14Z anythink $ 

class db_tags extends spModel  
{  
	var $pk = "tid"; //主键  
	var $table = "tags"; // 数据表的名称 
	
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
		  
    );  

	function tagCreate($tag,$uid)
	{
		if($result = $this->find(array('title'=>$tag))) //如果是已存在的tag
		{
			$this->incrField(array('title'=>$tag), 'num'); 
			$this->update(array('title'=>$tag),array('updates'=>time()));
		}else{
			$this->create(array('title'=>$tag,'uid'=>$uid,'time'=>time()));
		}
	}
	
	function saveCate($post)
	{
		if(is_array($post['tag']))
		{
			foreach($post['tag'] as $k=>$v)
			{
				$this->update(array('tid'=>$k),array('title'=>$v));
			}
		}
	}
	
	/*获取热门分类*/
	function getHotTag($num=60)
	{
		$rs = $this->spLinker()->findAll('','num desc,updates desc','',$num);
	
		$data = '';
		foreach($rs as $d)
		{
			$data .= "'".$d['title']."',";
		}
		$da['string'] = strreplaces(substr($data,0,-1));
		$da['rs'] = $rs;
		return  $da;
	}

}
?>