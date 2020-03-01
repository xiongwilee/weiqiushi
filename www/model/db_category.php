<?php
/////////////////////////////////////////////////////////////////
//微糗事, Copyright (C)   2011 - 2012  weiqiushi.com 
//EMAIL:birthday10241120@qq.com QQ:373071372                              
//$Id: db_category.php 7 2011-09-20 15:02:20Z anythink $ 

class db_category extends spModel  
{  
	var $pk = "cid"; // 主键  
	var $table = "catetags"; // 数据表的名称 
	
	
	function findCate()
	{
		return $this->spCache(3600)->findAll('','sort ASC');
	}
	
	
	function saveCate($post)
	{
		if(is_array($post['cate']))
		{
			foreach($post['cate'] as $k=>$v)
			{
				$arr['sort'] = $v['sort'];
				$arr['catename'] = $v['catename'];
				$this->update(array('cid'=>$k),$arr);
			}
		}
	}

}
?>