<?php /* Smarty version Smarty-3.0.6, created on 2020-03-01 18:33:11
         compiled from "/var/www/html/tpl/require_header.html" */ ?>
<?php /*%%SmartyHeaderCode:9093467185e5b8f67800184-10167812%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e526ebf421b45bcf0ce029b1f467cd93efe3d965' => 
    array (
      0 => '/var/www/html/tpl/require_header.html',
      1 => 1583057119,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '9093467185e5b8f67800184-10167812',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<!doctype html>
<html lang="zh-cn">
<head>
    <title><?php if ($_smarty_tpl->getVariable('titlepre')->value){?><?php echo $_smarty_tpl->getVariable('titlepre')->value;?>
 -<?php }?> <?php echo $_smarty_tpl->getVariable('title')->value;?>
 <?php echo $_smarty_tpl->getVariable('yb')->value['site_title'];?>
 - <?php echo $_smarty_tpl->getVariable('yb')->value['site_titlepre'];?>
</title>
    <meta charset="utf-8" />
    <meta name="author" content="<?php echo $_smarty_tpl->getVariable('yb')->value['author'];?>
" />
    <meta name="description" content="<?php echo $_smarty_tpl->getVariable('yb')->value['site_desc'];?>
" />
    <meta name="keywords" content="<?php if ($_smarty_tpl->getVariable('titlepre')->value){?><?php echo $_smarty_tpl->getVariable('titlepre')->value;?>
,<?php }?><?php echo $_smarty_tpl->getVariable('yb')->value['site_keyword'];?>
" />
    <meta property="wb:webmaster" content="9fb98de0cb5cfd95" />
    <link rel="shortcut icon" href="<?php echo $_smarty_tpl->getVariable('url')->value;?>
/tpl/image/favicon.ico" type="image/x-icon">
	<?php $_template = new Smarty_Internal_Template("require_js.html", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>
</head>
<body>
<div id="uberbar">
	<div id="top">
	<div class="all">
		<h1 id="logo">
			<a title="<?php if ($_smarty_tpl->getVariable('titlepre')->value){?><?php echo $_smarty_tpl->getVariable('titlepre')->value;?>
 -<?php }?> <?php echo $_smarty_tpl->getVariable('yb')->value['site_title'];?>
 - <?php echo $_smarty_tpl->getVariable('yb')->value['site_titlepre'];?>
" href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'main','a'=>'index'),$_smarty_tpl);?>
"></a>
		</h1>
		<ul id="nav">
		    <li class="mainlevel" id="mainlevel_01"><a title="我的首页" href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'main','a'=>'user'),$_smarty_tpl);?>
" >首页</a></li>

		    <li class="mainlevel" id="mainlevel_02"><a href="#" target="_blank">乌托邦</a>
		    <ul id="sub_02">
		    <li><a href="#" target="_blank">许愿区</a></li>
		    <li><a href="#" target="_blank">祝福区</a></li>
		    <li><a href="#" target="_blank">秘密区</a></li>
		    <li><a href="#" target="_blank">埋怨区</a></li>
		    <li><a href="#" target="_blank">咆哮区</a></li>
		    </ul>
		    </li>

		    <li class="mainlevel" id="mainlevel_03"><a href="#" target="_blank">笑站导航</a></li>

		    <li class="mainlevel" id="mainlevel_04"><a href="#" target="_blank">糗事下载</a></li>

		    <div class="clear"></div>

		</ul>
		<div id="search">
			<input type="text" value="搜索标签,发现兴趣" class="searchipt">
			<input type="button" class="searchbtn" value="" onClick="searchTag()">
		</div>
		<?php if (!islogin()){?><div id="login"><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'main','a'=>'reg'),$_smarty_tpl);?>
" class="left_border">注册</a> <a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'main','a'=>'login'),$_smarty_tpl);?>
">登录</a></div><?php }?>
	    <?php if (islogin()){?>
	    <div id="loginedin">
	         <ul id="side">
	         	<div id="name"><a href="<?php echo goUserHome(array('domain'=>$_SESSION['domain'],'uid'=>$_SESSION['uid']),$_smarty_tpl);?>
" target="_blank" title="我的主页"><?php echo $_SESSION['username'];?>
</a></div>
	           	<ul id="notice">
		            <li><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'user','a'=>'mynotice'),$_smarty_tpl);?>
">通知<?php if ($_smarty_tpl->getVariable('noticeCount')->value){?><font style="color:#cc0000">(<?php echo $_smarty_tpl->getVariable('noticeCount')->value;?>
)</font><?php }?></a></li>
		            <li><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'user','a'=>'pm'),$_smarty_tpl);?>
" class="left_border">私信<?php if ($_smarty_tpl->getVariable('pmCount')->value){?><font style="color:#cc0000">(<?php echo $_smarty_tpl->getVariable('pmCount')->value;?>
)</font><?php }?></a></li>
	       		</ul>
	            <div id="user_nav">
	            	<a id="img" href="javascript:;" tabindex="1">
		            	<img src="<?php echo avatar(array('uid'=>$_SESSION['uid'],'size'=>'middle'),$_smarty_tpl);?>
" alt="<?php echo $_SESSION['username'];?>
" width="30" height="30"/>
		            </a>
		            <ul id="menuSide" style="display:none;" tabindex="1">
		            	<li><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'user','a'=>'setting'),$_smarty_tpl);?>
">设置</a></li>
		                <?php if ($_SESSION['admin']==1){?><li><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'admin'),$_smarty_tpl);?>
">后台</a></li><?php }?>
		                <li><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'main','a'=>'logout'),$_smarty_tpl);?>
">退出</a></li>
		         	</ul>
	            </div>

	        </ul>
	      </div>
	     <?php }?>
	</div>
	</div>

	<div id="anno">
	<div class="all">
		<h1></h1>
		<span>敬告：本网站仅供十八岁及以上用户浏览，请十八岁以下用户在监护人陪同下选择查看！</span>
		<a href="javascript:closeAnno()">×</a>
	</div>
	</div>
</div>

<input type="hidden"  name="login_url" id="login_url" value="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'main','a'=>'login'),$_smarty_tpl);?>
" />
<input type="hidden"  name="reg_url" id="reg_url" value="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'main','a'=>'reg'),$_smarty_tpl);?>
" />