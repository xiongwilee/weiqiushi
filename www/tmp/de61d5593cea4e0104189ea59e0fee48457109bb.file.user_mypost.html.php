<?php /* Smarty version Smarty-3.0.6, created on 2012-03-16 11:39:23
         compiled from "D:\freehost\wilee\web/tpl\user_mypost.html" */ ?>
<?php /*%%SmartyHeaderCode:86054f62b5eb1b5ef4-39587973%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'de61d5593cea4e0104189ea59e0fee48457109bb' => 
    array (
      0 => 'D:\\freehost\\wilee\\web/tpl\\user_mypost.html',
      1 => 1331827211,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '86054f62b5eb1b5ef4-39587973',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php $_template = new Smarty_Internal_Template("require_header.html", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
$_template->assign('gallery','yes'); echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>
<div class="all">
<div class="container">
<div id="article">
<h1><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'user','a'=>'mypost'),$_smarty_tpl);?>
"<?php echo $_smarty_tpl->getVariable('curr_my_index')->value;?>
>我发布的</a><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'user','a'=>'mypost','draft'=>'yes'),$_smarty_tpl);?>
"<?php echo $_smarty_tpl->getVariable('curr_my_draft')->value;?>
>草稿</a></h1>
     <?php $_template = new Smarty_Internal_Template("require_feeds.html", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
$_template->assign('data',$_smarty_tpl->getVariable('blogs')->value);$_template->assign('limits','all'); echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>
  <div class="nav"><?php echo $_smarty_tpl->getVariable('pager')->value;?>
</div>
</div>






<div id="aside">
   <?php $_template = new Smarty_Internal_Template("require_sider.html", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>
</div>
<div class="clear"></div>
</div>
</div>
<?php $_template = new Smarty_Internal_Template("require_footer.html", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>