<?php /* Smarty version Smarty-3.0.6, created on 2012-03-16 11:08:55
         compiled from "D:\freehost\wilee\web/tpl\reglogin_header.html" */ ?>
<?php /*%%SmartyHeaderCode:192874f62aec7ba3979-10446019%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'eca8acedbe68049632725139c7d876798e4c47ef' => 
    array (
      0 => 'D:\\freehost\\wilee\\web/tpl\\reglogin_header.html',
      1 => 1331827185,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '192874f62aec7ba3979-10446019',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<!doctype html>
<html lang="zh-cn">
<head>
<meta charset="utf-8" />
<title><?php echo $_smarty_tpl->getVariable('yb')->value['site_title'];?>
 - <?php echo $_smarty_tpl->getVariable('yb')->value['site_titlepre'];?>
 - Power by 微糗事</title>
<meta name="author" content="<?php echo $_smarty_tpl->getVariable('yb')->value['author'];?>
" />
<meta name="description" content="<?php echo $_smarty_tpl->getVariable('yb')->value['site_desc'];?>
" />
<meta name="keywords" content="<?php echo $_smarty_tpl->getVariable('yb')->value['site_keyword'];?>
" />
<?php $_template = new Smarty_Internal_Template("require_js.html", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
$_template->assign('login','yes'); echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>
<link href="<?php echo $_smarty_tpl->getVariable('url')->value;?>
/tpl/image/css/login.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="<?php echo $_smarty_tpl->getVariable('url')->value;?>
/tpl/image/favicon.ico" type="image/x-icon">

</head>

<body>
<div  class="all">
<div id="relogin_header">
	<a class="logo" href="<?php echo $_smarty_tpl->getVariable('url')->value;?>
" title="<?php echo $_smarty_tpl->getVariable('yb')->value['site_titlepre'];?>
"></a>
	<ul>
		<li><a href="<?php echo $_smarty_tpl->getVariable('url')->value;?>
?c=main&a=reg" <?php if ($_smarty_tpl->getVariable('flag')->value=='reg'){?> class="current" <?php }?>>注册</a></li>
		<li><a href="<?php echo $_smarty_tpl->getVariable('url')->value;?>
?c=main&a=login" <?php echo $_smarty_tpl->getVariable('flag')->value;?>
 <?php if ($_smarty_tpl->getVariable('flag')->value=='login'){?> class="current" <?php }?>>登录</a></li>
	</ul>
</div>
