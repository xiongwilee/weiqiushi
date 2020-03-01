<?php /* Smarty version Smarty-3.0.6, created on 2012-03-16 11:08:46
         compiled from "D:\freehost\wilee\web/tpl\tag_index.html" */ ?>
<?php /*%%SmartyHeaderCode:241324f62aebe3484a1-00853104%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'eea986e8b2aaefa38b2af1a706d1b9b35190fb73' => 
    array (
      0 => 'D:\\freehost\\wilee\\web/tpl\\tag_index.html',
      1 => 1331827200,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '241324f62aebe3484a1-00853104',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php $_template = new Smarty_Internal_Template("require_header.html", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
$_template->assign('titlepre',$_smarty_tpl->getVariable('tagname')->value);$_template->assign('gallery','yes'); echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>

<div class="all">
<div class="container">

<div id="article">
<?php if (is_array($_smarty_tpl->getVariable('tag')->value)){?>
<h1 style="margin:15px 0px"><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'blog','a'=>'tag','tag'=>$_smarty_tpl->getVariable('tagname')->value),$_smarty_tpl);?>
" class="current">#<?php echo $_smarty_tpl->getVariable('tagname')->value;?>
#</a>

<a href="javascript:void(0)" onclick="addMytag('<?php echo $_smarty_tpl->getVariable('tagname')->value;?>
','<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'blog','a'=>'addMytag'),$_smarty_tpl);?>
')" id="flowTag">关注该标签</a>
</h1>
<?php }?>
<div id="feedArea">
<?php $_template = new Smarty_Internal_Template("require_feeds.html", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
$_template->assign('data',$_smarty_tpl->getVariable('tag')->value);$_template->assign('limits',4); echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>
</div>

<?php if (!is_array($_smarty_tpl->getVariable('tag')->value)){?>
 <div class="box">
    	 <div class="content"> 没有找到内容,请在右侧选择一个您关注度的标签 </div>
    </div>
<?php }?>


<?php if ($_smarty_tpl->getVariable('tag')->value){?>
<div class="nav"><?php echo $_smarty_tpl->getVariable('pager')->value;?>
</div>
<?php }?>


</div>




<div id="aside">
   <?php $_template = new Smarty_Internal_Template("require_sider.html", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
$_template->assign('in_tagindex',true); echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>
</div>
<div class="clear"></div>
</div>
</div>
<?php $_template = new Smarty_Internal_Template("require_footer.html", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>