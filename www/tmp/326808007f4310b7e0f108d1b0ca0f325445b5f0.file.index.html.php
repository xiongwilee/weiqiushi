<?php /* Smarty version Smarty-3.0.6, created on 2020-03-01 18:33:11
         compiled from "/var/www/html/tpl/index.html" */ ?>
<?php /*%%SmartyHeaderCode:20869001595e5b8f67718048-50661818%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '326808007f4310b7e0f108d1b0ca0f325445b5f0' => 
    array (
      0 => '/var/www/html/tpl/index.html',
      1 => 1583057119,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '20869001595e5b8f67718048-50661818',
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
<?php if (isLogin()){?><?php $_template = new Smarty_Internal_Template("require_post.html", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?><?php }?>
<div id="feedArea">
<?php $_template = new Smarty_Internal_Template("require_feeds.html", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
$_template->assign('data',$_smarty_tpl->getVariable('blogs')->value);$_template->assign('limits',4); echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>
</div>
<!--<footer class="nav"><?php echo $_smarty_tpl->getVariable('pager')->value;?>
</footer> -->
<?php if ($_smarty_tpl->getVariable('yb')->value['show_page_mode']==1){?>
<div id="feedAjaxTool" page="2" max="10" area="feedArea" query="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'main','a'=>'now','ajaxload'=>true),$_smarty_tpl);?>
" class="feedajax">
<a href="javascript:void(0)" onclick="continueShow('feedAjaxTool')">查看更多...</a>
</div>
<script>feedToolBar('feedAjaxTool');</script>

<?php }else{ ?>

<div class="nav"><?php echo $_smarty_tpl->getVariable('pager')->value;?>
</div>

<?php }?>
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