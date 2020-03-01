<?php
/*
	微糗事主题自定义配置文件
	参数说明:
	title:介绍
	id: css
	findid:选择器 (空格需要用@代替，.点号需要用$代替)
	type：渲染器 radio、单选 select下拉 color 颜色选择器 upload上传选择器
*/
if(!defined('IN_APP')){exit('access no read');}
$setting = array(
	array(
		'title'=>'背景图像',
		'id'=>'img1', //存储位置数据库共有4个存储区域
		'findid'=>'#header_bg',
		'type'=>'upload',
		'description'=>'jpg,png,gif图像,不超过1M',
	),
	
	array(
		'title'=>'背景平铺',
		'id'=>'background-repeat',
		'findid'=>'#header_bg',
		'type'=>'select',
		'options'=>array('repet'=>'背景平铺','repeat-x'=>'横向平铺','repeat-y'=>'纵向平铺','no-repeat'=>'不平铺'),
		'default' =>'repet',
		'description'=>'背景平铺方式',
	),
	array(
		'title'=>'背景位置',
		'id'=>'background-position',
		'findid'=>'#header_bg',
		'type'=>'select',
		'options'=>array('top'=>'顶部','left top'=>'左侧顶部','center top'=>'居中顶部','right top'=>'右侧顶部','left center'=>'左侧中部','center center'=>'居中中部','right center'=>'右侧中部','bottom left'=>'左侧底部','bottom center'=>'居中底部','bottom right'=>'右侧底部'),
		'default' =>'repet',
		'description'=>'背景平铺方式',
	),
	array(
		'title'=>'背景滚动',
		'id'=>'background-attachment',
		'findid'=>'#header_bg',
		'type'=>'radio',
		'options'=>array('fixed'=>'禁止','scroll'=>'滚动'),
		'default' =>'scroll',
		'description'=>'背景图片滚动方式',
	),
	
	array(
		'title'=>'背景颜色',
		'id'=>'background-color',
		'findid'=>'body',
		'type'=>'color',
	),
	array(
		'title'=>'是否显示签名',
		'id'=>'display',
		'findid'=>'#sign',
		'type'=>'radio',
		'options'=>array('inline'=>'显示','none'=>'不显示'),
		'default' =>'inline',
	),
	array(
		'title'=>'昵称颜色',
		'id'=>'color',
		'findid'=>'#title@a',
		'type'=>'color',
	),
	array(
		'title'=>'标题颜色',
		'id'=>'color',
		'findid'=>'#article@$box@a',
		'type'=>'color',
	),
	
	
);

?>