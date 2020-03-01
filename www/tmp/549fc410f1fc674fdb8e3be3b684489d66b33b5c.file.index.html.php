<?php /* Smarty version Smarty-3.0.6, created on 2012-03-16 11:11:36
         compiled from "D:\freehost\wilee\web/tpl/theme/default/index.html" */ ?>
<?php /*%%SmartyHeaderCode:179074f62af68e35e05-46478229%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '549fc410f1fc674fdb8e3be3b684489d66b33b5c' => 
    array (
      0 => 'D:\\freehost\\wilee\\web/tpl/theme/default/index.html',
      1 => 1331827080,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '179074f62af68e35e05-46478229',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php $_template = new Smarty_Internal_Template("theme/default/header.html", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>



<div id="wrap">

<div id="main">
<div id="title"><a href="<?php echo goUserHome(array('domain'=>$_smarty_tpl->getVariable('domain')->value,'uid'=>$_smarty_tpl->getVariable('uid')->value),$_smarty_tpl);?>
"><?php echo $_smarty_tpl->getVariable('username')->value;?>
</a></div>
<div id="sign"><?php echo $_smarty_tpl->getVariable('signhtml')->value;?>
</div>
</div>





<div id="article">
   
    <?php  $_smarty_tpl->tpl_vars['d'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('blogs')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['d']->key => $_smarty_tpl->tpl_vars['d']->value){
?>
    <div class="box" id="blog_<?php echo $_smarty_tpl->tpl_vars['d']->value['bid'];?>
">
   <div class="header"><h1><a href="<?php echo goUserBlog(array('bid'=>$_smarty_tpl->tpl_vars['d']->value['bid']),$_smarty_tpl);?>
"><?php if ($_smarty_tpl->tpl_vars['d']->value['top']==1){?>置顶 <?php }?><?php echo $_smarty_tpl->tpl_vars['d']->value['title'];?>
</a></h1> </div>
     
     <div class="content">
      <?php echo feeds(array('item'=>$_smarty_tpl->tpl_vars['d']->value['body'],'type'=>$_smarty_tpl->tpl_vars['d']->value['type'],'limit'=>4,'bid'=>$_smarty_tpl->tpl_vars['d']->value['bid'],'showmedia'=>1,'readall'=>1),$_smarty_tpl);?>

     </div>
     
     
     <div class="footer clearfix">
      <div class="tag">标签: <?php echo tag(array('tag'=>$_smarty_tpl->tpl_vars['d']->value['tag'],'c'=>'tag'),$_smarty_tpl);?>
</div>
      <div class="menu"><?php echo ybtime(array('time'=>$_smarty_tpl->tpl_vars['d']->value['time']),$_smarty_tpl);?>
   <a href="javascript:void(0)" onclick="indexPostTab('comment','<?php echo $_smarty_tpl->tpl_vars['d']->value['bid'];?>
','<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'blog','a'=>'getReplay'),$_smarty_tpl);?>
')" id="comment_btn_<?php echo $_smarty_tpl->tpl_vars['d']->value['bid'];?>
">
       评论<em><?php ob_start();?><?php echo $_smarty_tpl->tpl_vars['d']->value['replaycount'];?>
<?php $_tmp1=ob_get_clean();?><?php if ($_tmp1!=0){?>(<?php echo $_smarty_tpl->tpl_vars['d']->value['replaycount'];?>
)<?php }?></em></a></div>
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
   
    </div>
      <?php }} else { ?>
       <div class="box">会员还没有发布任何糗事</div>
    <?php } ?>
    
    <div class="page"><?php echo $_smarty_tpl->getVariable('pager')->value;?>
</div>     

    

</div>

<div class="aside">
    <?php $_template = new Smarty_Internal_Template("theme/default/aside.html", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>
</div>











<?php $_template = new Smarty_Internal_Template("theme/default/footer.html", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>