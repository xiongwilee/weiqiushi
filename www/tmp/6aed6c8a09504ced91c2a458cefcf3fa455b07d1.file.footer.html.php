<?php /* Smarty version Smarty-3.0.6, created on 2012-03-16 11:11:37
         compiled from "D:\freehost\wilee\web/tpl\theme/default/footer.html" */ ?>
<?php /*%%SmartyHeaderCode:42704f62af69cd73b0-13549996%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '6aed6c8a09504ced91c2a458cefcf3fa455b07d1' => 
    array (
      0 => 'D:\\freehost\\wilee\\web/tpl\\theme/default/footer.html',
      1 => 1331827079,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '42704f62af69cd73b0-13549996',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php if (!is_callable('smarty_modifier_date_format')) include 'D:\freehost\wilee\web\init\Drivers\Smarty\plugins\modifier.date_format.php';
?>

<div id="foorer">
<small>Powered by  <a href="<?php echo $_smarty_tpl->getVariable('url')->value;?>
/<?php echo $_smarty_tpl->getVariable('domain')->value;?>
"><?php echo $_smarty_tpl->getVariable('username')->value;?>
</a>&nbsp;&amp;&nbsp;<a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'main','a'=>'index'),$_smarty_tpl);?>
"><?php echo $_smarty_tpl->getVariable('yb')->value['soft'];?>
 <b><?php echo $_smarty_tpl->getVariable('yb')->value['version'];?>
</a>
 2011-<?php echo smarty_modifier_date_format(time(),"%Y");?>
&nbsp;<?php echo $_smarty_tpl->getVariable('yb')->value['site_icp'];?>
<?php echo $_smarty_tpl->getVariable('yb')->value['site_count'];?>
 </small>


</div>
</div>
</div>
</div>
</body>
</html>
