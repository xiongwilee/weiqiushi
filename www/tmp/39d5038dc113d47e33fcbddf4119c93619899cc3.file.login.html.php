<?php /* Smarty version Smarty-3.0.6, created on 2012-03-16 11:17:39
         compiled from "D:\freehost\wilee\web/tpl\login.html" */ ?>
<?php /*%%SmartyHeaderCode:90624f62b0d357b499-76375452%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '39d5038dc113d47e33fcbddf4119c93619899cc3' => 
    array (
      0 => 'D:\\freehost\\wilee\\web/tpl\\login.html',
      1 => 1331827180,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '90624f62b0d357b499-76375452',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php $_template = new Smarty_Internal_Template("reglogin_header.html", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>
<div id="relogin_body">
	<div class="form">
	<h1>登陆<?php echo $_smarty_tpl->getVariable('yb')->value['site_title'];?>
网</h1>
          <form action="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'main','a'=>'login'),$_smarty_tpl);?>
" method="post" onSubmit="return checkLogin()">
        <?php if ($_smarty_tpl->getVariable('errmsg')->value){?>
        <div id="errmsg"><?php echo $_smarty_tpl->getVariable('errmsg')->value;?>
</div>
        <?php }?>
                <input type="hidden" value="<?php echo $_smarty_tpl->getVariable('callback')->value;?>
" name="callback">
                <input type="hidden" value="" name="formKey">
                <div id="loginarea">
                    <div class="filed">
                    	<label for="email" class="nocontent">邮箱</label>
                        <input tabindex="1" type="text" id="email" name="email" class="input" tabindex="1" value="<?php if ($_POST['email']){?><?php echo $_POST['email'];?>
<?php }else{ ?><?php echo $_smarty_tpl->getVariable('email')->value;?>
<?php }?>">
                    </div>
                    <div class="filed">
                    	<label for="password" class="nocontent">密码</label>
                    	<input tabindex="2" type="password" id="password" class="input" value="<?php echo $_POST['password'];?>
" name="password" >
                    </div>
                    <div class="filedBtn"><input class="subBtn" type="submit" name="submit"  value="&nbsp;" /></div><div class="clear"></div>
                    <table width="400" border="0" cellspacing="0" cellpadding="0" class="remember">
                      <tr>
                        <td width="190"> <input name="savename" type="checkbox" id="savename" value="1" checked="checked" title="保存账号"/><label for="savename" >记住账号</label></td>
                        <td  align="left" valign="middle">  <a href="#">忘记密码?</a></td>
                      </tr>
                    </table>
                   <?php if ($_smarty_tpl->getVariable('yb')->value['loginCodeSwitch']!='close'){?>
                    <table width="400" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="195">
                        <div class="filed"><label for="verifycode" class="nocontent">验证码</label><input type="text" id="verifycode" class="input"  name="verifycode" tabindex="3"></div></td>
                        <td width="205" align="left" valign="middle">
                        <img src="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'main','a'=>'vcode','t'=>$_smarty_tpl->getVariable('time')->value),$_smarty_tpl);?>
" class="vericode" onClick="javascript:reloadcode(this,this.src);" title="看不清楚，换一张" style="cursor:pointer;" /></td>
                      </tr>
                    </table>
                   <?php }?>
             </div>

       <?php if ($_smarty_tpl->getVariable('yb')->value['openlogin_qq_open']==1||$_smarty_tpl->getVariable('yb')->value['openlogin_weib_open']==1){?>
      <div id="openconnent">
      <h1>用合作账户登陆</h1>
          <div id="area">
              <?php if ($_smarty_tpl->getVariable('yb')->value['openlogin_qq_open']==1){?>
              <li><a href="javascript:void(0)" onClick="openconnect('<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'openconnect','a'=>'qq'),$_smarty_tpl);?>
')"><img src="tpl/image/qq_login.png" border="0" style="margin-top:10px"/></a></li>
              <?php }?>
              <?php if ($_smarty_tpl->getVariable('yb')->value['openlogin_weib_open']==1){?>
              <li> <a href="javascript:void(0)" onClick="openconnect('<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'openconnect','a'=>'weibo'),$_smarty_tpl);?>
')"><img src="tpl/image/weib_login.png" border="0" style="margin-top:10px"/></a></li>
              <?php }?>
          </div>
          <div class="clear"></div>
      </div>
       <?php }?>
          </form>
	</div>
</div>
<?php $_template = new Smarty_Internal_Template("reglogin_footer.html", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>