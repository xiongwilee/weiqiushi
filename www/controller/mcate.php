<?php
/////////////////////////////////////////////////////////////////
//微糗事, Copyright (C)   2011 - 2012  weiqiushi.com 
//EMAIL:birthday10241120@qq.com QQ:373071372                              
//$Id: mcate.php 6 2011-09-20 14:50:50Z anythink $ 

class mcate extends spController
{
	 function __construct(){  
         parent::__construct(); 
		if($_SESSION['admin'] != 1){prient_jump(spUrl('main'));}
     }  
	 
	function index(){
		$this->cate = spClass('db_category')->spPager($this->spArgs('page',1),15)->findAll('','sort ASC');
		$this->pager = spClass('db_category')->spPager()->pagerHtml('mcate');
		$this->curr_cate = 'class="curr"';
		$this->display('admin/catelist.html');
	}
	
	function create()
	{
		$catename = $this->spArgs('catename');
		$sort = intval($this->spArgs('sort'));
		if($catename == '' || $sort == '')
		{
			$this->error('不能为空,排序必须为数字');
		}

		spClass("db_category")->create($this->spArgs());
		$this->success('添加成功',spUrl('mcate'));
	}
	
	
	function edit()
	{
		spClass("db_category")->update(array('cid' =>$this->spArgs('cid')),$this->spArgs());
		$this->success('修改成功！',spUrl('mcate'));
		
		
		
	}
}