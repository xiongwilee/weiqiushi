<?php /* Smarty version Smarty-3.0.6, created on 2012-03-16 10:54:44
         compiled from "D:\freehost\wilee\web/tpl\user.html" */ ?>
<?php /*%%SmartyHeaderCode:170414f62ab747e83c6-55624467%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f17fe2660ead15aaa9f2d88331f1b8e8a83beb1b' => 
    array (
      0 => 'D:\\freehost\\wilee\\web/tpl\\user.html',
      1 => 1331827202,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '170414f62ab747e83c6-55624467',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php if (!is_callable('smarty_modifier_date_format')) include 'D:\freehost\wilee\web\init\Drivers\Smarty\plugins\modifier.date_format.php';
?><?php $_template = new Smarty_Internal_Template("require_header.html", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
$_template->assign('gallery','yes'); echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>
<div class="all">
<div class="container">
<div id="article">
<?php $_template = new Smarty_Internal_Template("require_post.html", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>
<?php if ($_smarty_tpl->getVariable('user')->value['flow']<=15&&islogin()){?>
<div class="box">您关注用户过少,<?php echo $_smarty_tpl->getVariable('yb')->value['site_title'];?>
将推送您更多内容 :)</div>
<div class="article_bottom"></div>
<?php }?>

<?php if ($_smarty_tpl->getVariable('noticeCount')->value){?>
<div id="message" style="display:none">
	<?php  $_smarty_tpl->tpl_vars['d'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('notice')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['d']->key => $_smarty_tpl->tpl_vars['d']->value){
?>
    <div id="notice_<?php echo $_smarty_tpl->tpl_vars['d']->value['id'];?>
">
    <div class="delnotice"><?php if ($_smarty_tpl->tpl_vars['d']->value['isread']==0){?><a href="javascript:void(0)" onClick="isreadnotice('<?php echo $_smarty_tpl->tpl_vars['d']->value['id'];?>
','<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'blog','a'=>'readnotice','id'=>$_smarty_tpl->tpl_vars['d']->value['id']),$_smarty_tpl);?>
')">我知道了</a><?php }else{ ?>删除消息<?php }?></div>
        <div><div class="facearea">
       		 <a href="<?php echo $_smarty_tpl->getVariable('url')->value;?>
/<?php echo $_smarty_tpl->tpl_vars['d']->value['user']['domain'];?>
" title="<?php echo $_smarty_tpl->tpl_vars['d']->value['user']['username'];?>
" target="_blank">
       			 <img src="<?php echo avatar(array('uid'=>$_smarty_tpl->tpl_vars['d']->value['user']['uid'],'size'=>'middle'),$_smarty_tpl);?>
" alt="<?php echo $_smarty_tpl->tpl_vars['d']->value['tome']['username'];?>
" align="absmiddle" class="face"/>
       		 </a>
        </div>
           <p><a href="<?php echo $_smarty_tpl->getVariable('url')->value;?>
/<?php echo $_smarty_tpl->tpl_vars['d']->value['user']['domain'];?>
" title="<?php echo $_smarty_tpl->tpl_vars['d']->value['user']['username'];?>
" target="_blank"><?php echo $_smarty_tpl->tpl_vars['d']->value['user']['username'];?>
</a> <?php echo $_smarty_tpl->tpl_vars['d']->value['title'];?>
 - <?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['d']->value['time'],"%Y-%M-%d/%H:%M:%S");?>
</p>
            <p class="info"><?php echo replay_preg(array('msg'=>$_smarty_tpl->tpl_vars['d']->value['info']),$_smarty_tpl);?>
  <a href="<?php echo notice_preg(array('url'=>$_smarty_tpl->tpl_vars['d']->value['location']),$_smarty_tpl);?>
">查看原文</a></p>
       </div>
    </div>
    <?php }} ?>
    <div class="clear"></div>


</div>
<?php }?>


<!--<div class="channl clearfix"><a href="#">文字</a>  <a href="">音乐</a>  <a href="#">图片</a>  <a href="#">视频</a></div>-->
<div id="feedArea">
<?php $_template = new Smarty_Internal_Template("require_feeds.html", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
$_template->assign('data',$_smarty_tpl->getVariable('blogs')->value);$_template->assign('limits',4); echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>
</div>

<?php if ($_smarty_tpl->getVariable('yb')->value['show_page_mode']==1){?>
<div id="feedAjaxTool" page="2" max="<?php echo $_smarty_tpl->getVariable('yb')->value['show_ajax_to'];?>
" area="feedArea" query="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'main','a'=>'index','ajaxload'=>true),$_smarty_tpl);?>
" class="feedajax">
<a href="javascript:void(0)" onclick="continueShow('feedAjaxTool')">查看更多...</a>
</div>
<script>feedToolBar('feedAjaxTool');</script>

<?php }else{ ?>

<div class="nav"><?php echo $_smarty_tpl->getVariable('pager')->value;?>
</div>
<?php }?>



</div>




<div id="aside">
   <?php $_template = new Smarty_Internal_Template("require_sider.html", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>
</div>
<div style="width:100%;height:1px;margin:0px;padding:0px;line-height:1px;font-size:1px;overflow:auto;"></div>
</div>
</div>
<?php $_template = new Smarty_Internal_Template("require_footer.html", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>