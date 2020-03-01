<?php /* Smarty version Smarty-3.0.6, created on 2012-03-16 12:18:36
         compiled from "D:\freehost\wilee\web/tpl\theme/default/anon.html" */ ?>
<?php /*%%SmartyHeaderCode:31764f62bf1c0f4476-49938678%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f169fe83c2bddc281fb24ea21ee447757deadf6a' => 
    array (
      0 => 'D:\\freehost\\wilee\\web/tpl\\theme/default/anon.html',
      1 => 1331827076,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '31764f62bf1c0f4476-49938678',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
  <div id="menu">
     <div class="avatar"><img src="<?php echo avatar(array('uid'=>$_smarty_tpl->getVariable('d')->value['uid'],'size'=>'big','anon'=>$_smarty_tpl->getVariable('anon')->value),$_smarty_tpl);?>
" /></div>
     <div class="followme">匿名用户</div><br/>
  </div>
