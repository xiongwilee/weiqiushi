<?php
/////////////////////////////////////////////////////////////////
//微糗事, Copyright (C)   2011 - 2012  weiqiushi.com 
//EMAIL:birthday10241120@qq.com QQ:373071372                              
//$Id: db_mytag.php 20 2011-09-23 05:39:32Z anythink $ 

class db_mytag extends spModel  
{  
	var $pk = "id"; //主键  
	var $table = "mytags"; // 数据表的名称 
	
	var $linker = array(  
        array(  
             'type' => 'hasone',   // 关联类型，这里是一对一关联  
            'map' => 'tag',    // 关联的标识  
             'mapkey' => 'tagid', // 本表与对应表关联的字段名  
             'fclass' => 'db_tags', // 对应表的类名  
            'fkey' => 'tid',    // 对应表中关联的字段名
			'field'=>'title,num,updates',//你要限制的字段     
            'enabled' => true     // 启用关联  
        ), 
		  
    );  
	
	/*我喜欢的标签*/
	function myFavaTag($uid,$limit='')
	{
		return $this->spLinker()->findAll(array('uid'=>$uid),'id DESC','',$limit);
	}
	
	
	/*添加我喜欢的tag*/
	function addMyFavaTag($tag,$uid)
	{
		$rs = spClass('db_tags')->find(array('title'=>$tag),'','tid,title');
		if($rs)
		{
			$find = $this->find( array('tagid'=>$rs['tid'],'uid'=>$uid) );
		
			if($find)
			{
			  $this->delete(array('tagid'=>$rs['tid'],'uid'=>$uid));
			  return 2;
			}else{
				$this->create(array('tagid'=>$rs['tid'],'uid'=>$uid));
				 return 1;
			}
		}else{
			return '系统没有检索到相关信息';
		}
		
	
	}

}
?>