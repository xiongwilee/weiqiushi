<?php /* Smarty version Smarty-3.0.6, created on 2012-03-16 11:11:37
         compiled from "D:\freehost\wilee\web/tpl\theme/default/aside.html" */ ?>
<?php /*%%SmartyHeaderCode:299934f62af6982e289-13145399%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '598cf2bc3e37f84b7215358088b01068f1715cfc' => 
    array (
      0 => 'D:\\freehost\\wilee\\web/tpl\\theme/default/aside.html',
      1 => 1331827076,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '299934f62af6982e289-13145399',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
  <div id="menu">
     <div class="avatar"><img src="<?php echo avatar(array('uid'=>$_smarty_tpl->getVariable('d')->value['uid'],'size'=>'big','anon'=>$_smarty_tpl->getVariable('anon')->value),$_smarty_tpl);?>
" alt="<?php echo $_smarty_tpl->getVariable('username')->value;?>
" /></div>
     <div class="followme"> <?php echo $_smarty_tpl->getVariable('myLook')->value;?>
 关注</div>

     <?php if ($_smarty_tpl->getVariable('isfollow')->value==1){?>
    	 <a href="javascript:void(0)" onclick="follows('<?php echo $_smarty_tpl->getVariable('uid')->value;?>
','<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'blog','a'=>'follows'),$_smarty_tpl);?>
')">您已关注,取消</a>
     <?php }elseif($_smarty_tpl->getVariable('isfollow')->value==0){?>
     <a href="javascript:void(0)" onclick="follows('<?php echo $_smarty_tpl->getVariable('uid')->value;?>
','<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'blog','a'=>'follows'),$_smarty_tpl);?>
')">关注作者</a>
     <?php }?>

     <?php if ($_SESSION['uid']!=$_smarty_tpl->getVariable('user')->value['uid']){?>   <a href="javascript:void(0)" onClick="sendpm(<?php echo $_smarty_tpl->getVariable('uid')->value;?>
)">发送私信</a> <?php }?>
      <?php if ($_smarty_tpl->getVariable('user')->value['logtime']){?> <a href="javascript:void(0)">最近登录: <?php echo ybtime(array('time'=>$_smarty_tpl->getVariable('user')->value['logtime']),$_smarty_tpl);?>
</a><?php }?>
       <a href="javascript:void(0)">来自<?php echo $_smarty_tpl->getVariable('user')->value['local'];?>
</a>
    </div>

 	<div class="title"><?php echo $_smarty_tpl->getVariable('username')->value;?>
的关注(<?php echo $_smarty_tpl->getVariable('user')->value['flow'];?>
)</div>


    <div class="follow">
    <?php  $_smarty_tpl->tpl_vars['da'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('follow')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['da']->key => $_smarty_tpl->tpl_vars['da']->value){
?>
       <a href="<?php echo goUserHome(array('domain'=>$_smarty_tpl->tpl_vars['da']->value['tome']['domain'],'uid'=>$_smarty_tpl->tpl_vars['da']->value['touid']),$_smarty_tpl);?>
" title="<?php echo $_smarty_tpl->tpl_vars['da']->value['tome']['username'];?>
">
       <img src="<?php echo avatar(array('uid'=>$_smarty_tpl->tpl_vars['da']->value['touid'],'size'=>'middle'),$_smarty_tpl);?>
" alt="<?php echo $_smarty_tpl->tpl_vars['da']->value['tome']['username'];?>
" style="max-width:40px" /></a>
    <?php }} ?>
    </div>

