<?php /* Smarty version Smarty-3.0.6, created on 2012-03-16 12:45:00
         compiled from "D:\freehost\wilee\web/tpl\user_mynotice.html" */ ?>
<?php /*%%SmartyHeaderCode:157164f62c54ca3e642-87391242%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '51d8f66a8bc8e9bbbcd6e1c09e15a07d04169bc2' => 
    array (
      0 => 'D:\\freehost\\wilee\\web/tpl\\user_mynotice.html',
      1 => 1331827207,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '157164f62c54ca3e642-87391242',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php $_template = new Smarty_Internal_Template("require_header.html", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>
<div class="all">
<div class="container">
<div id="article">
<h1><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'user','a'=>'mynotice'),$_smarty_tpl);?>
"<?php echo $_smarty_tpl->getVariable('curr_my_notice')->value;?>
>未读通知</a> <a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'user','a'=>'mynotice','isread'=>1),$_smarty_tpl);?>
"<?php echo $_smarty_tpl->getVariable('curr_my_isnotice')->value;?>
>已读通知</a> </h1>
<div id="message" style="margin:0">

<h2>系统通知(<?php echo $_smarty_tpl->getVariable('sysnotice_c')->value;?>
)</h2>
<?php  $_smarty_tpl->tpl_vars['d'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('sysnotice')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['d']->key => $_smarty_tpl->tpl_vars['d']->value){
?>

    <div class="article"  id="notice_<?php echo $_smarty_tpl->tpl_vars['d']->value['id'];?>
">
    <div class="delnotice">

    </div>
        <div><div class="facearea">
       		 <a href="<?php echo goUserHome(array('domain'=>$_smarty_tpl->tpl_vars['d']->value['user']['domain'],'uid'=>$_smarty_tpl->tpl_vars['d']->value['uid']),$_smarty_tpl);?>
" title="<?php echo $_smarty_tpl->tpl_vars['d']->value['user']['username'];?>
" target="_blank">
       			 <img src="<?php echo avatar(array('uid'=>$_smarty_tpl->tpl_vars['d']->value['user']['uid'],'size'=>'middle'),$_smarty_tpl);?>
" alt="<?php echo $_smarty_tpl->tpl_vars['d']->value['tome']['username'];?>
" align="absmiddle" class="face"/>
       		 </a>
        </div>
           <p><a href="<?php echo goUserHome(array('domain'=>$_smarty_tpl->tpl_vars['d']->value['user']['domain'],'uid'=>$_smarty_tpl->tpl_vars['d']->value['uid']),$_smarty_tpl);?>
" title="<?php echo $_smarty_tpl->tpl_vars['d']->value['user']['username'];?>
" target="_blank"><?php echo $_smarty_tpl->tpl_vars['d']->value['user']['username'];?>
</a> <?php echo $_smarty_tpl->tpl_vars['d']->value['title'];?>
 - <?php echo ybtime(array('time'=>$_smarty_tpl->tpl_vars['d']->value['time']),$_smarty_tpl);?>
</p>
            <p class="info"><?php echo replay_preg(array('msg'=>$_smarty_tpl->tpl_vars['d']->value['info']),$_smarty_tpl);?>

       <?php if ($_smarty_tpl->tpl_vars['d']->value['isread']==0){?>
        <a href="javascript:void(0)" onClick="isreadnotice('<?php echo $_smarty_tpl->tpl_vars['d']->value['id'];?>
','<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'blog','a'=>'readnotice','id'=>$_smarty_tpl->tpl_vars['d']->value['id']),$_smarty_tpl);?>
')">了解</a>
        <?php }else{ ?>
        <a href="javascript:void(0)" onClick="delnotice('<?php echo $_smarty_tpl->tpl_vars['d']->value['id'];?>
','<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'blog','a'=>'delnotice','id'=>$_smarty_tpl->tpl_vars['d']->value['id']),$_smarty_tpl);?>
')">删除</a>
        <?php }?></p>
       </div>
    </div>
   <?php }} else { ?>

     <div class="content">
           暂时没有系统通知
     </div>

<?php } ?>
<?php if ($_smarty_tpl->getVariable('sysnotice')->value){?>
    <p class="clear">
        <?php if ($_smarty_tpl->getVariable('d')->value['isread']==0){?>
      	  <input name="button" type="button" value="知道了" class="btn"  onclick="noticeclear(2)"/>
        <?php }else{ ?>
       		<input name="button" type="button" value="清空" class="btn"  onclick="noticedel(2)"/>
        <?php }?>
    </p>
<?php }?>


<h2>评论通知(<?php echo $_smarty_tpl->getVariable('repnotice_c')->value;?>
)</h2>
<?php  $_smarty_tpl->tpl_vars['d'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('repnotice')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['d']->key => $_smarty_tpl->tpl_vars['d']->value){
?>

    <div class="article"  id="notice_<?php echo $_smarty_tpl->tpl_vars['d']->value['id'];?>
">
    <div class="delnotice">
        <?php if ($_smarty_tpl->tpl_vars['d']->value['isread']==0){?>
        <a href="javascript:void(0)" onClick="isreadnotice('<?php echo $_smarty_tpl->tpl_vars['d']->value['id'];?>
','<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'blog','a'=>'readnotice','id'=>$_smarty_tpl->tpl_vars['d']->value['id']),$_smarty_tpl);?>
')">了解</a>
        <?php }else{ ?>
        <a href="javascript:void(0)" onClick="delnotice('<?php echo $_smarty_tpl->tpl_vars['d']->value['id'];?>
','<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'blog','a'=>'delnotice','id'=>$_smarty_tpl->tpl_vars['d']->value['id']),$_smarty_tpl);?>
')">删除</a>
        <?php }?>
    </div>
        <div><div class="facearea">
       		 <a href="<?php echo goUserHome(array('domain'=>$_smarty_tpl->tpl_vars['d']->value['user']['domain'],'uid'=>$_smarty_tpl->tpl_vars['d']->value['user']['uid']),$_smarty_tpl);?>
" title="<?php echo $_smarty_tpl->tpl_vars['d']->value['user']['username'];?>
" target="_blank">
       			 <img src="<?php echo avatar(array('uid'=>$_smarty_tpl->tpl_vars['d']->value['user']['uid'],'size'=>'middle'),$_smarty_tpl);?>
" alt="<?php echo $_smarty_tpl->tpl_vars['d']->value['tome']['username'];?>
" align="absmiddle" class="face"/>
       		 </a>
        </div>
           <p><a href="<?php echo goUserHome(array('domain'=>$_smarty_tpl->tpl_vars['d']->value['user']['domain'],'uid'=>$_smarty_tpl->tpl_vars['d']->value['user']['uid']),$_smarty_tpl);?>
" title="<?php echo $_smarty_tpl->tpl_vars['d']->value['user']['username'];?>
" target="_blank"><?php echo $_smarty_tpl->tpl_vars['d']->value['user']['username'];?>
</a> <?php echo $_smarty_tpl->tpl_vars['d']->value['title'];?>
 - <?php echo ybtime(array('time'=>$_smarty_tpl->tpl_vars['d']->value['time']),$_smarty_tpl);?>
</p>
            <p class="info"><?php echo replay_preg(array('msg'=>$_smarty_tpl->tpl_vars['d']->value['info']),$_smarty_tpl);?>
  <a href="<?php echo notice_preg(array('url'=>$_smarty_tpl->tpl_vars['d']->value['location']),$_smarty_tpl);?>
">查看原文</a></p>
       </div>
    </div>
   <?php }} else { ?>



     <div class="content">
           暂时没有评论通知
     </div>

<?php } ?>
<?php if ($_smarty_tpl->getVariable('repnotice')->value){?>
	<p>
        <?php if ($_smarty_tpl->getVariable('d')->value['isread']==0){?>
        <input name="button" type="button" value="知道了" class="btn"  onclick="noticeclear(1)"/>
        <?php }else{ ?>
        <input name="button" type="button" value="清空" class="btn"  onclick="noticedel(1)"/>
        <?php }?>
	</p>
<?php }?>


<h2>关注通知(<?php echo $_smarty_tpl->getVariable('flownotice_c')->value;?>
)</h2>
<?php  $_smarty_tpl->tpl_vars['d'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('flownotice')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['d']->key => $_smarty_tpl->tpl_vars['d']->value){
?>

    <div class="article fllows"  id="notice_<?php echo $_smarty_tpl->tpl_vars['d']->value['id'];?>
">
    <div class="delnotice">
        <?php if ($_smarty_tpl->tpl_vars['d']->value['isread']==0){?>
        <a href="javascript:void(0)" onClick="isreadnotice('<?php echo $_smarty_tpl->tpl_vars['d']->value['id'];?>
','<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'blog','a'=>'readnotice','id'=>$_smarty_tpl->tpl_vars['d']->value['id']),$_smarty_tpl);?>
')">了解</a>
        <?php }else{ ?>
        <a href="javascript:void(0)" onClick="delnotice('<?php echo $_smarty_tpl->tpl_vars['d']->value['id'];?>
','<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'blog','a'=>'delnotice','id'=>$_smarty_tpl->tpl_vars['d']->value['id']),$_smarty_tpl);?>
')">删除</a>
        <?php }?>
    </div>
        <div><div class="facearea">
       		 <a href="<?php echo goUserHome(array('domain'=>$_smarty_tpl->tpl_vars['d']->value['user']['domain'],'uid'=>$_smarty_tpl->tpl_vars['d']->value['uid']),$_smarty_tpl);?>
" title="<?php echo $_smarty_tpl->tpl_vars['d']->value['user']['username'];?>
" target="_blank">
       			 <img src="<?php echo avatar(array('uid'=>$_smarty_tpl->tpl_vars['d']->value['user']['uid'],'size'=>'middle'),$_smarty_tpl);?>
" alt="<?php echo $_smarty_tpl->tpl_vars['d']->value['tome']['username'];?>
" align="absmiddle" class="face"/>
       		 </a>
        </div>
           <p><a href="<?php echo goUserHome(array('domain'=>$_smarty_tpl->tpl_vars['d']->value['user']['domain'],'uid'=>$_smarty_tpl->tpl_vars['d']->value['uid']),$_smarty_tpl);?>
" title="<?php echo $_smarty_tpl->tpl_vars['d']->value['user']['username'];?>
" target="_blank"><?php echo $_smarty_tpl->tpl_vars['d']->value['user']['username'];?>
</a> <?php echo $_smarty_tpl->tpl_vars['d']->value['title'];?>
 - <?php echo ybtime(array('time'=>$_smarty_tpl->tpl_vars['d']->value['time']),$_smarty_tpl);?>
</p>
            <p class="info">
            <?php if ($_smarty_tpl->tpl_vars['d']->value['info']=='关注了你'){?>关注了你 <a href="javascript:void(0)" onclick="follows('<?php echo $_smarty_tpl->tpl_vars['d']->value['user']['uid'];?>
','<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'blog','a'=>'follows'),$_smarty_tpl);?>
')">我也关注TA</a><?php }?>
            <?php if ($_smarty_tpl->tpl_vars['d']->value['info']=='取消关注'){?>取消关注了你<?php }?>
            <?php if ($_smarty_tpl->tpl_vars['d']->value['info']=='互相关注'){?>你们互相关注<?php }?>

            </p>
       </div>
    </div>

   <?php }} else { ?>
     <div class="content">
           暂时没有关注通知
     </div>

<?php } ?>
<?php if ($_smarty_tpl->getVariable('flownotice')->value){?>
    <p class="clear">
        <?php if ($_smarty_tpl->getVariable('d')->value['isread']==0){?>
      	  <input name="button" type="button" value="知道了" class="btn"  onclick="noticeclear(3)"/>
        <?php }else{ ?>
       		<input name="button" type="button" value="清空" class="btn"  onclick="noticedel(3)"/>
        <?php }?>
    </p>
<?php }?>




    <div class="clear"></div>
</div>


     <div class="nav"><?php echo $_smarty_tpl->getVariable('pager')->value;?>
</div>
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