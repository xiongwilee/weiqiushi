<?php /* Smarty version Smarty-3.0.6, created on 2012-03-16 11:50:59
         compiled from "D:\freehost\wilee\web/tpl\now.html" */ ?>
<?php /*%%SmartyHeaderCode:85274f62b8a3680749-07713847%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '481c000fb3858f87b947b1b3997f7451b23f0d82' => 
    array (
      0 => 'D:\\freehost\\wilee\\web/tpl\\now.html',
      1 => 1331827181,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '85274f62b8a3680749-07713847',
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
<?php $_template = new Smarty_Internal_Template("require_post.html", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>
<div id="feedArea">
<?php $_template = new Smarty_Internal_Template("require_feeds.html", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
$_template->assign('data',$_smarty_tpl->getVariable('blogs')->value);$_template->assign('limits',4); echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>
</div>
<!--<footer class="nav"><?php echo $_smarty_tpl->getVariable('pager')->value;?>
</footer> -->
<div id="feedAjaxTool" page="2" max="10" area="feedArea" query="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'main','a'=>'now','ajaxload'=>true),$_smarty_tpl);?>
" class="feedajax">
<a href="javascript:void(0)" onclick="continueShow('feedAjaxTool')">查看更多...</a>
</div>
<script>feedToolBar('feedAjaxTool');</script>

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