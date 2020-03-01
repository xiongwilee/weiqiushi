<?php /* Smarty version Smarty-3.0.6, created on 2012-03-17 20:04:49
         compiled from "D:\freehost\wilee\web/tpl\user_mylikes.html" */ ?>
<?php /*%%SmartyHeaderCode:72644f647de15c88c7-46064772%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '563d850f13bb381755fe6a42b7f466978cc268b8' => 
    array (
      0 => 'D:\\freehost\\wilee\\web/tpl\\user_mylikes.html',
      1 => 1331827204,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '72644f647de15c88c7-46064772',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php $_template = new Smarty_Internal_Template("require_header.html", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
$_template->assign('gallery','yes'); echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>
<div class="all">
<div class="container">
<div id="article">
<h1><a href="javascript:void(0)" class="current">我喜欢的</a></h1>
<?php  $_smarty_tpl->tpl_vars['d'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('blogs')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['d']->key => $_smarty_tpl->tpl_vars['d']->value){
?>

<div class="box" id="blog_<?php echo $_smarty_tpl->tpl_vars['d']->value['bid'];?>
">
     <div class="top">
     	<a href="<?php echo goUserHome(array('domain'=>$_smarty_tpl->tpl_vars['d']->value['domain'],'uid'=>$_smarty_tpl->tpl_vars['d']->value['uid']),$_smarty_tpl);?>
" title="<?php echo $_smarty_tpl->tpl_vars['d']->value['username'];?>
" target="_blank">
     	<img src="<?php echo avatar(array('uid'=>$_smarty_tpl->tpl_vars['d']->value['uid'],'size'=>'middle'),$_smarty_tpl);?>
" alt="<?php echo $_smarty_tpl->tpl_vars['d']->value['username'];?>
" class="face"/></a><span class="jiao"></span>
     </div>
     <div class="header">
       <cite> <a href="<?php echo goUserHome(array('domain'=>$_smarty_tpl->tpl_vars['d']->value['domain'],'uid'=>$_smarty_tpl->tpl_vars['d']->value['uid']),$_smarty_tpl);?>
" target="_blank"><?php echo $_smarty_tpl->tpl_vars['d']->value['username'];?>
</a> <?php echo ybtime(array('time'=>$_smarty_tpl->tpl_vars['d']->value['ktime']),$_smarty_tpl);?>
</cite>
       <h1><?php echo $_smarty_tpl->tpl_vars['d']->value['title'];?>
</h1>
    </div>

     <div id="feedText_<?php echo $_smarty_tpl->tpl_vars['d']->value['bid'];?>
" class="content">
           <?php echo feeds(array('item'=>$_smarty_tpl->tpl_vars['d']->value['body'],'type'=>$_smarty_tpl->tpl_vars['d']->value['type'],'limit'=>4,'bid'=>$_smarty_tpl->tpl_vars['d']->value['bid']),$_smarty_tpl);?>

     </div>


     <div class="footer">
      <div class="tag"> <?php echo tag(array('tag'=>$_smarty_tpl->tpl_vars['d']->value['tag'],'c'=>'tag'),$_smarty_tpl);?>
 </div>
      <div class="menu">
       <a href="javascript:void(0)" onclick="indexPostTab('comment','<?php echo $_smarty_tpl->tpl_vars['d']->value['bid'];?>
','<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'blog','a'=>'getReplay'),$_smarty_tpl);?>
')" id="comment_btn_<?php echo $_smarty_tpl->tpl_vars['d']->value['bid'];?>
">
       评论<em><?php ob_start();?><?php echo $_smarty_tpl->tpl_vars['d']->value['blog']['replaycount'];?>
<?php $_tmp1=ob_get_clean();?><?php if ($_tmp1!=0){?>(<?php echo $_smarty_tpl->tpl_vars['d']->value['blog']['replaycount'];?>
)<?php }?></em></a>
           <a href="javascript:void(0)" onclick="indexPostTab('feeds','<?php echo $_smarty_tpl->tpl_vars['d']->value['bid'];?>
','<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'blog','a'=>'getFeeds'),$_smarty_tpl);?>
')" id="hid_btn_<?php echo $_smarty_tpl->tpl_vars['d']->value['bid'];?>
">动态<em><?php ob_start();?><?php echo $_smarty_tpl->tpl_vars['d']->value['blog']['feedcount'];?>
<?php $_tmp2=ob_get_clean();?><?php if ($_tmp2!=0){?>(<?php echo $_smarty_tpl->tpl_vars['d']->value['blog']['feedcount'];?>
)<?php }?></em></a>
      <!-- <a href="javascript:void(0)" onclick="indexPostTab('reprint','<?php echo $_smarty_tpl->tpl_vars['d']->value['bid'];?>
')" id="reprint_btn_<?php echo $_smarty_tpl->tpl_vars['d']->value['bid'];?>
">转发</a>  -->
           <a href="javascript:void(0)" onclick="likes('<?php echo $_smarty_tpl->tpl_vars['d']->value['bid'];?>
','<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'blog','a'=>'likes','bid'=>$_smarty_tpl->tpl_vars['d']->value['bid']),$_smarty_tpl);?>
')" id="like_btn_<?php echo $_smarty_tpl->tpl_vars['d']->value['bid'];?>
">取消喜欢</a>
      </div>
        <div class="clear"></div>
     </div>


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
    <div class="article_bottom"></div>
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