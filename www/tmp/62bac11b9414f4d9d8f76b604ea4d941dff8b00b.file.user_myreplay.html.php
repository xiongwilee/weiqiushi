<?php /* Smarty version Smarty-3.0.6, created on 2012-06-10 16:16:01
         compiled from "D:\freehost\wilee\web/tpl\user_myreplay.html" */ ?>
<?php /*%%SmartyHeaderCode:259714fd457c1c47517-43382982%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '62bac11b9414f4d9d8f76b604ea4d941dff8b00b' => 
    array (
      0 => 'D:\\freehost\\wilee\\web/tpl\\user_myreplay.html',
      1 => 1331827211,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '259714fd457c1c47517-43382982',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php if (!is_callable('smarty_modifier_date_format')) include 'D:\freehost\wilee\web\init\Drivers\Smarty\plugins\modifier.date_format.php';
?><?php $_template = new Smarty_Internal_Template("require_header.html", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>
<div class="all">
<div class="container">
<div id="article">
<h1><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'user','a'=>'myreplay'),$_smarty_tpl);?>
"<?php echo $_smarty_tpl->getVariable('curr_myreplay')->value;?>
>发出的回复</a> <a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'user','a'=>'myreplay','received'=>1),$_smarty_tpl);?>
"<?php echo $_smarty_tpl->getVariable('curr_myreplay_r')->value;?>
>收到的回复</a></h1>
<?php  $_smarty_tpl->tpl_vars['d'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('myreplay')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['d']->key => $_smarty_tpl->tpl_vars['d']->value){
?>

<div class="box" id="blog_<?php echo $_smarty_tpl->tpl_vars['d']->value['bid'];?>
">

    <?php if ($_smarty_tpl->getVariable('received')->value==1){?>
     <div class="top">
     	<a href="<?php echo goUserHome(array('domain'=>$_smarty_tpl->tpl_vars['d']->value['user']['domain'],'uid'=>$_smarty_tpl->tpl_vars['d']->value['uid']),$_smarty_tpl);?>
" title="<?php echo $_smarty_tpl->tpl_vars['d']->value['user']['username'];?>
" target="_blank">
     	<img src="<?php echo avatar(array('uid'=>$_smarty_tpl->tpl_vars['d']->value['user']['uid'],'size'=>'middle'),$_smarty_tpl);?>
" alt="<?php echo $_smarty_tpl->tpl_vars['d']->value['user']['username'];?>
" class="face"/></a><span class="jiao"></span>
     </div>
     <div class="header">
       <cite> <a href="<?php echo goUserHome(array('domain'=>$_smarty_tpl->tpl_vars['d']->value['user']['domain'],'uid'=>$_smarty_tpl->tpl_vars['d']->value['uid']),$_smarty_tpl);?>
"><?php echo $_smarty_tpl->tpl_vars['d']->value['user']['username'];?>
</a></cite>
     </div>
  	<?php }else{ ?>
     <div class="top">
     	<a href="<?php echo goUserHome(array('domain'=>$_smarty_tpl->tpl_vars['d']->value['user']['domain'],'uid'=>$_smarty_tpl->tpl_vars['d']->value['uid']),$_smarty_tpl);?>
" title="<?php echo $_smarty_tpl->tpl_vars['d']->value['user']['username'];?>
" target="_blank">
     	<img src="<?php echo avatar(array('uid'=>$_smarty_tpl->tpl_vars['d']->value['user']['uid'],'size'=>'middle'),$_smarty_tpl);?>
" alt="<?php echo $_smarty_tpl->tpl_vars['d']->value['user']['username'];?>
" class="face"/></a><span class="jiao"></span>
     </div>
     <div class="header">
       <cite> <a href="<?php echo goUserHome(array('domain'=>$_smarty_tpl->tpl_vars['d']->value['user']['domain'],'uid'=>$_smarty_tpl->tpl_vars['d']->value['uid']),$_smarty_tpl);?>
"><?php echo $_smarty_tpl->tpl_vars['d']->value['user']['username'];?>
</a></cite>
     </div>



    <?php }?>



     <div id="feedText_<?php echo $_smarty_tpl->tpl_vars['d']->value['bid'];?>
" class="content">
           <?php echo replay_preg(array('msg'=>$_smarty_tpl->tpl_vars['d']->value['msg']),$_smarty_tpl);?>

     </div>
     <div class="footer">
      <div class="tag" style="width:550px"><?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['d']->value['time'],"%Y-%m-%d %H:%m");?>
</dv>
      <div class="menu">
      <a href="javascript:void(0)" onclick="indexPostTab('comment','<?php echo $_smarty_tpl->tpl_vars['d']->value['bid'];?>
','<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'blog','a'=>'getReplay'),$_smarty_tpl);?>
')" id="comment_btn_<?php echo $_smarty_tpl->tpl_vars['d']->value['bid'];?>
">
       评论原文<em><?php ob_start();?><?php echo $_smarty_tpl->tpl_vars['d']->value['replaycount'];?>
<?php $_tmp1=ob_get_clean();?><?php if ($_tmp1!=0){?>(<?php echo $_smarty_tpl->tpl_vars['d']->value['replaycount'];?>
)<?php }?></em></a>
       <a href="<?php echo goUserBlog(array('bid'=>$_smarty_tpl->tpl_vars['d']->value['bid']),$_smarty_tpl);?>
#comment">查看原文</a> </div>
        <div class="clear"></div>
     </div>
     <div class="clear"></div>


      <div style="display:none" id="comment_<?php echo $_smarty_tpl->tpl_vars['d']->value['bid'];?>
">
        <div class="comment">
        <?php if (islogin()){?>
            <textarea id="replyInput_<?php echo $_smarty_tpl->tpl_vars['d']->value['bid'];?>
"></textarea>
            <input type="hidden" id="replyTo_<?php echo $_smarty_tpl->tpl_vars['d']->value['bid'];?>
" />
            <div class="submit">
             <em class="green" id="replyInput_lengthinf_<?php echo $_smarty_tpl->tpl_vars['d']->value['bid'];?>
"></em>
             <input type="button" value="提交评论" onclick="sendReplay('<?php echo $_smarty_tpl->tpl_vars['d']->value['bid'];?>
','<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'blog','a'=>'replay'),$_smarty_tpl);?>
')" class="btn" />
         </div>
          <?php }?>
          <ul class="commentList" id="commentList_<?php echo $_smarty_tpl->tpl_vars['d']->value['bid'];?>
"></ul>
        </div>
      </div>

       <div id="feeds_<?php echo $_smarty_tpl->tpl_vars['d']->value['bid'];?>
"  style="display:none">
        <div class="comment">
          <ul class="feedList" id="feedList_<?php echo $_smarty_tpl->tpl_vars['d']->value['bid'];?>
">
          </ul>
        </div>
      </div>


    </div>
    </div>
<?php }} ?>


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