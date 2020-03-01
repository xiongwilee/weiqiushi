<?php /* Smarty version Smarty-3.0.6, created on 2012-03-16 21:27:18
         compiled from "D:\freehost\wilee\web/tpl\admin/user_info.html" */ ?>
<?php /*%%SmartyHeaderCode:71334f633fb62c6769-50000908%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f97c2f29c9a91cfb1650ec789c794b0f4971d996' => 
    array (
      0 => 'D:\\freehost\\wilee\\web/tpl\\admin/user_info.html',
      1 => 1331826664,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '71334f633fb62c6769-50000908',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php if (!is_callable('smarty_modifier_date_format')) include 'D:\freehost\wilee\web\init\Drivers\Smarty\plugins\modifier.date_format.php';
?><?php $_template = new Smarty_Internal_Template('admin/header.html', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
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
    
 <h2>用户显示</h2>
	  <div class="nav"><?php echo $_smarty_tpl->getVariable('pager')->value;?>
</div>
      
    <table width="500" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><?php if ($_smarty_tpl->getVariable('info')->value['admin']==1){?>管理员<?php }?> 账号</td>
        </tr>
        <tr>
          <td><a href="<?php echo goUserHome(array('domain'=>$_smarty_tpl->getVariable('info')->value['domain'],'uid'=>$_smarty_tpl->getVariable('info')->value['uid']),$_smarty_tpl);?>
" target="_blank"><?php echo $_smarty_tpl->getVariable('info')->value['email'];?>
</a>&nbsp;<?php if ($_smarty_tpl->getVariable('info')->value['open']==1){?>允许<?php }else{ ?>禁止<?php }?></td>
        </tr>
        <tr>
          <td>头像</td>
        </tr>
        <tr>
          <td><img src="<?php echo avatar(array('uid'=>$_smarty_tpl->getVariable('info')->value['uid'],'size'=>'middle'),$_smarty_tpl);?>
" alt="<?php echo $_smarty_tpl->getVariable('info')->value['username'];?>
"/>&nbsp;</td>
        </tr>
        <tr>
          <td>注册时间</td>
        </tr>
        <tr>
          <td><?php echo smarty_modifier_date_format($_smarty_tpl->getVariable('info')->value['regtime'],'%Y-%m-%d %H:%M:%S');?>
&nbsp;</td>
        </tr>
        <tr>
          <td>最近登陆</td>
        </tr>
        <tr>
          <td><?php echo smarty_modifier_date_format($_smarty_tpl->getVariable('info')->value['logtime'],'%Y-%m-%d %H:%M:%S');?>
&nbsp;</td>
        </tr>
        <tr>
          <td>发布 / 跟随 / 喜欢</td>
        </tr>
        <tr>
          <td><?php echo $_smarty_tpl->getVariable('info')->value['num'];?>
 / <?php echo $_smarty_tpl->getVariable('info')->value['flow'];?>
 / <?php echo $_smarty_tpl->getVariable('info')->value['likenum'];?>
</td>
        </tr>
        <tr>
          <td> 
        <a href="javascript:;" onclick="nologin(<?php echo $_smarty_tpl->getVariable('info')->value['uid'];?>
)"><?php if ($_smarty_tpl->getVariable('info')->value['open']==1){?>禁访<?php }else{ ?>解禁<?php }?></a>
       | <a href="javascript:resetpwd(<?php echo $_smarty_tpl->getVariable('info')->value['uid'];?>
,'<?php echo $_smarty_tpl->getVariable('info')->value['username'];?>
')">重设密码</a>&nbsp;</td>
        </tr>
        <tr>
          <td><input name="button" type="button" value="返回上一页" onclick="window.history.go(-1)" />&nbsp;</td>
        </tr>
    </table>


    
    
    
   
  </div>
<?php $_template = new Smarty_Internal_Template('admin/footer.html', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>
