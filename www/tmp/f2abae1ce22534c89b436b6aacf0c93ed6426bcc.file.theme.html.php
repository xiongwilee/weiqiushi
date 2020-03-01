<?php /* Smarty version Smarty-3.0.6, created on 2012-03-17 20:04:39
         compiled from "D:\freehost\wilee\web/tpl\admin/theme.html" */ ?>
<?php /*%%SmartyHeaderCode:73334f647dd7d043c0-76750443%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f2abae1ce22534c89b436b6aacf0c93ed6426bcc' => 
    array (
      0 => 'D:\\freehost\\wilee\\web/tpl\\admin/theme.html',
      1 => 1331826662,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '73334f647dd7d043c0-76750443',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php $_template = new Smarty_Internal_Template('admin/header.html', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>
  <div id="content">

    
 <h2>用户主题管理</h2>
 <h3><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'admin','a'=>'theme'),$_smarty_tpl);?>
">全部主题</a> | <a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'admin','a'=>'theme','filter'=>'close'),$_smarty_tpl);?>
">已禁用</a> | 
    <a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'admin','a'=>'theme','filter'=>'open'),$_smarty_tpl);?>
">已启用</a> | <a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'admin','a'=>'theme','filter'=>'exclusive'),$_smarty_tpl);?>
">专属主题</a>
   </h3>
    <div id="setup">
    <br />
    <form id="form1" name="form1" method="post" action="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'admin','a'=>'theme','m'=>'install'),$_smarty_tpl);?>
">
        <div>请将新主题文件夹上传至 tpl/theme/ 目录下</div>
        请输入新主题所在的目录：<input name="installdir" type="text" /><input type="submit" name="button" id="button" value="提交" />
    </form>
    </div>
    
	  <div class="nav"><?php echo $_smarty_tpl->getVariable('pager')->value;?>
</div>
      <table width="100%" border="0" cellspacing="0" cellpadding="0" class="table2">
  <tr>
    <th width="200">主题截图</th>
    <th width="120">名称</th>
    <th width="120">目录</th>
    <th width="120">作者</th>
    <th width="80">版本</th>
    <th width="80">启用</th>
    <th width="60">专属主题</th>
    <th>操作</th>
  </tr>
  <?php  $_smarty_tpl->tpl_vars['d'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('skins')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['d']->key => $_smarty_tpl->tpl_vars['d']->value){
?>
  <tr>
    <td><img src="<?php echo $_smarty_tpl->getVariable('url')->value;?>
/tpl/theme/<?php echo $_smarty_tpl->tpl_vars['d']->value['skindir'];?>
/cover.jpg" width="200" height="120" /></td>
    <td><?php echo $_smarty_tpl->tpl_vars['d']->value['name'];?>
(<?php echo $_smarty_tpl->tpl_vars['d']->value['usenumber'];?>
)</td>
    <td><?php echo $_smarty_tpl->tpl_vars['d']->value['skindir'];?>
</td>
    <td><?php echo $_smarty_tpl->tpl_vars['d']->value['author'];?>
</td>
    <td><?php echo $_smarty_tpl->tpl_vars['d']->value['version'];?>
</td>
    <td><?php if ($_smarty_tpl->tpl_vars['d']->value['open']==1){?>已启用<?php }else{ ?>已关闭<?php }?></td>
    <td><?php if ($_smarty_tpl->tpl_vars['d']->value['exclusive']==0){?> 否<?php }else{ ?> 指派：<?php echo $_smarty_tpl->tpl_vars['d']->value['exclusive'];?>
 <?php }?></td>
     <td><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'admin','a'=>'theme','m'=>'info','id'=>$_smarty_tpl->tpl_vars['d']->value['id']),$_smarty_tpl);?>
">详情</a> / <a href="javascript:void(0)" onclick="unInstallTheme(<?php echo $_smarty_tpl->tpl_vars['d']->value['id'];?>
)">卸载</a></td>
  </tr>
  <?php }} ?>
</table>

    

    
    <div class="nav"><?php echo $_smarty_tpl->getVariable('pager')->value;?>
</div>
    
    
    
   
  </div>
<?php $_template = new Smarty_Internal_Template('admin/footer.html', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>
