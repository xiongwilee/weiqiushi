<?php /* Smarty version Smarty-3.0.6, created on 2012-03-16 21:21:42
         compiled from "D:\freehost\wilee\web/tpl\admin/user.html" */ ?>
<?php /*%%SmartyHeaderCode:300364f633e66af27f7-74185043%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'c3d49cb1598fe6344cd790be359e360d567f6b7d' => 
    array (
      0 => 'D:\\freehost\\wilee\\web/tpl\\admin/user.html',
      1 => 1331826663,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '300364f633e66af27f7-74185043',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php $_template = new Smarty_Internal_Template('admin/header.html', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>
  <div id="content">
   
    
     <h2>搜索</h2>
    <form id="form1" name="form1" method="post" action="">
    <table width="100%" class="table">

      <tr>
        <td width="25%">用户邮箱、用户昵称、用户域名</td>
        <td valign="middle"><input name="where" type="text" value="<?php echo $_smarty_tpl->getVariable('get')->value['niname'];?>
"/></td>
      </tr>
    </table>
    
   <input name="submit" type="submit" value="搜索" />
    </form>
    
 <h2>用户列表，共 <?php echo $_smarty_tpl->getVariable('countuser')->value;?>
 名会员</h2>
	  <div class="nav"><?php echo $_smarty_tpl->getVariable('pager')->value;?>
</div>
    <table width="100%" class="table2">
    <tr>

        <th width="30" align="center" valign="middle">UID</th>
         <th width="120" align="center" valign="middle">账号</th>
        <th width="40" align="center" valign="middle">访问</th>
       
        <th width="140" align="center" valign="middle">昵称</th>
        <th width="100" align="center" valign="middle">注册</th>
        <th width="100" align="center" valign="middle">登陆</th>
        <th width="40" align="center" valign="middle">发布</th>
        <th width="40" align="center"  valign="middle">跟随</th>
        <th width="40" align="center"  valign="middle">喜欢</th>
        <th  align="center" valign="middle">&nbsp;</th>
      </tr>
  <?php  $_smarty_tpl->tpl_vars['d'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('user')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['d']->key => $_smarty_tpl->tpl_vars['d']->value){
?>
    <tr>
      <td><?php echo $_smarty_tpl->tpl_vars['d']->value['uid'];?>
</td>
            <td valign="middle"><a href="<?php echo goUserHome(array('domain'=>$_smarty_tpl->tpl_vars['d']->value['domain'],'uid'=>$_smarty_tpl->tpl_vars['d']->value['uid']),$_smarty_tpl);?>
" target="_blank"><?php echo $_smarty_tpl->tpl_vars['d']->value['email'];?>
</a></td>
        <td valign="middle"><?php if ($_smarty_tpl->tpl_vars['d']->value['open']==1){?>允许<?php }else{ ?>禁止<?php }?></td>
        <td valign="middle"><?php echo $_smarty_tpl->tpl_vars['d']->value['username'];?>
</td>
        <td valign="middle"><?php echo ybtime(array('time'=>$_smarty_tpl->tpl_vars['d']->value['regtime']),$_smarty_tpl);?>
</td>
        <td valign="middle"><?php echo ybtime(array('time'=>$_smarty_tpl->tpl_vars['d']->value['logtime']),$_smarty_tpl);?>
</td>
        <td valign="middle"><?php echo $_smarty_tpl->tpl_vars['d']->value['num'];?>
</td>
        <td valign="middle"><?php echo $_smarty_tpl->tpl_vars['d']->value['flow'];?>
</td>
        <td valign="middle"><?php echo $_smarty_tpl->tpl_vars['d']->value['likenum'];?>
</td>
       	<td valign="middle"><?php if ($_smarty_tpl->tpl_vars['d']->value['admin']==1){?>管理员<?php }?> <a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'admin','a'=>'user','mod'=>'info','uid'=>$_smarty_tpl->tpl_vars['d']->value['uid']),$_smarty_tpl);?>
">详情</a> | 
        <a href="javascript:;" onclick="nologin(<?php echo $_smarty_tpl->tpl_vars['d']->value['uid'];?>
)"><?php if ($_smarty_tpl->tpl_vars['d']->value['open']==1){?>禁访<?php }else{ ?>解禁<?php }?></a>
       | <a href="javascript:resetpwd(<?php echo $_smarty_tpl->tpl_vars['d']->value['uid'];?>
,'<?php echo $_smarty_tpl->tpl_vars['d']->value['username'];?>
')">重设密码</a></td>
      </tr>
   <?php }} ?>
    </table>
    

    
    <div class="nav"><?php echo $_smarty_tpl->getVariable('pager')->value;?>
</div>
    
    
    
   
  </div>
<?php $_template = new Smarty_Internal_Template('admin/footer.html', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>
