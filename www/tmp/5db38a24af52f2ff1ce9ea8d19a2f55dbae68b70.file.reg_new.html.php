<?php /* Smarty version Smarty-3.0.6, created on 2012-03-16 11:08:55
         compiled from "D:\freehost\wilee\web/tpl\reg_new.html" */ ?>
<?php /*%%SmartyHeaderCode:155744f62aec7a26d39-66565913%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '5db38a24af52f2ff1ce9ea8d19a2f55dbae68b70' => 
    array (
      0 => 'D:\\freehost\\wilee\\web/tpl\\reg_new.html',
      1 => 1331827184,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '155744f62aec7a26d39-66565913',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php $_template = new Smarty_Internal_Template("reglogin_header.html", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>
<div id="relogin_body">
<div class="form">
       <form action="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'main','a'=>'reg'),$_smarty_tpl);?>
" method="post">
        <div id="regarea">
              <h1>注册<?php echo $_smarty_tpl->getVariable('yb')->value['site_title'];?>
账号</h1>
              <?php if ($_smarty_tpl->getVariable('errmsg')->value){?>
                <div id="errmsg"><?php echo $_smarty_tpl->getVariable('errmsg')->value;?>
</div>
              <?php }?>

              <div class="filed"><label class="nocontent">邮箱</label>
              	<input type="text"  name="email" class="input" tabindex="1" value="<?php echo $_POST['email'];?>
" title="请使用自己邮箱,使用他人邮箱被举报将会删除该账号">
                </div><div class="clear"></div>
              <div class="filed"><label class="nocontent">密码</label>
              <input type="password"  name="password" class="input" tabindex="2" value="<?php echo $_POST['password'];?>
" title="请输入密码"></div><div class="clear"></div>
              <div class="filed"><label class="nocontent">重复</label>
              <input type="password"  name="password2" class="input" tabindex="3" value="<?php echo $_POST['password2'];?>
" title="请重复输入密码"></div><div class="clear"></div>
              <div class="filed" style="margin-bottom:0px"><label class="nocontent">昵称</label>
              <input type="text"  name="username" class="input" tabindex="4" value="<?php echo $_POST['username'];?>
" title="请输入昵称"></div><div class="clear"></div>


              <?php if ($_smarty_tpl->getVariable('yb')->value['regCodeSwitch']!='close'){?>
            <div class="filed" style="margin:0px">
            <label class="nocontent"><img src="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'main','a'=>'vcode','t'=>$_smarty_tpl->getVariable('time')->value),$_smarty_tpl);?>
" class="vericode"  onclick="javascript:reloadcode(this,this.src);" title="看不清楚，换一张" style="cursor:pointer;" /></label>
            <input name="verifycode" type="text" id="verifycode"  class="input" size="8" maxlength="4"  /></div><div class="clear"></div>
            <?php }?>

               <div class="filed"><label class="nocontent"></label>
               <input class="regBtn" type="button" name="do"  value="" tabindex="5" onClick="checkReg()" /><span class="regcurr"></span></div><div class="clear"></div>
        </div>
        <input type="hidden" name="doing" value="true" />
        <input type="hidden" value="<?php echo $_smarty_tpl->getVariable('callback')->value;?>
" name="callback">
        </form>
</div>
<div class="remember"><span><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'site','a'=>'service'),$_smarty_tpl);?>
" target="_blank">注册将视为您同意服务条款</a></span> </div>
 <?php if ($_smarty_tpl->getVariable('yb')->value['openlogin_qq_open']==1||$_smarty_tpl->getVariable('yb')->value['openlogin_weib_open']==1){?>
  <div id="openconnent" >
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
  <div class="clear"></div>
  </div>
  </div>
   <?php }?>
   </div>
<?php $_template = new Smarty_Internal_Template("reglogin_footer.html", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>