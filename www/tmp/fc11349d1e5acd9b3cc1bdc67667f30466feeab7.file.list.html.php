<?php /* Smarty version Smarty-3.0.6, created on 2012-03-16 11:37:49
         compiled from "D:\freehost\wilee\web/tpl/theme/default/list.html" */ ?>
<?php /*%%SmartyHeaderCode:151254f62b58dec2fb2-01858281%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'fc11349d1e5acd9b3cc1bdc67667f30466feeab7' => 
    array (
      0 => 'D:\\freehost\\wilee\\web/tpl/theme/default/list.html',
      1 => 1331827081,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '151254f62b58dec2fb2-01858281',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php $_template = new Smarty_Internal_Template("theme/default/header.html", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
$_template->assign('titles',$_smarty_tpl->getVariable('d')->value['title']); echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>



<div id="wrap">

<div id="main">
    <?php if (!$_smarty_tpl->getVariable('anon')->value){?>
    <div id="title"><a href="<?php echo goUserHome(array('domain'=>$_smarty_tpl->getVariable('domain')->value,'uid'=>$_smarty_tpl->getVariable('uid')->value),$_smarty_tpl);?>
"><?php echo $_smarty_tpl->getVariable('username')->value;?>
</a></div>
    <div id="sign"><?php echo $_smarty_tpl->getVariable('signhtml')->value;?>
</div>
	<?php }else{ ?>
	<div id="title"><a href="javascript:;">匿名用户</a></div>
	<?php }?>
</div>





<div id="article">
  <div class="box" id="blog_<?php echo $_smarty_tpl->getVariable('d')->value['bid'];?>
">
   <div class="header">  <h1><a href="<?php echo goUserBlog(array('bid'=>$_smarty_tpl->getVariable('d')->value['bid']),$_smarty_tpl);?>
"><?php echo $_smarty_tpl->getVariable('d')->value['title'];?>
</a></h1> </div>

     <div class="content">
      <?php echo feeds(array('item'=>$_smarty_tpl->getVariable('d')->value['body'],'type'=>$_smarty_tpl->getVariable('d')->value['type'],'limit'=>'all','bid'=>$_smarty_tpl->getVariable('d')->value['bid'],'showmedia'=>1),$_smarty_tpl);?>

     </div>

     <div class="footer">
     点击(<?php echo $_smarty_tpl->getVariable('d')->value['hitcount'];?>
) &nbsp;
      <div class="tag">标签: <?php echo tag(array('tag'=>$_smarty_tpl->getVariable('d')->value['tag'],'c'=>'tag'),$_smarty_tpl);?>
 </div>
      <div class="menu"><?php echo ybtime(array('time'=>$_smarty_tpl->getVariable('d')->value['time']),$_smarty_tpl);?>
   <a href="javascript:void(0)" onclick="indexPostTab('comment','<?php echo $_smarty_tpl->getVariable('d')->value['bid'];?>
','<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'blog','a'=>'getReplay'),$_smarty_tpl);?>
')" id="comment_btn_<?php echo $_smarty_tpl->getVariable('d')->value['bid'];?>
">  评论<em><?php ob_start();?><?php echo $_smarty_tpl->getVariable('d')->value['replaycount'];?>
<?php $_tmp1=ob_get_clean();?><?php if ($_tmp1!=0){?>(<?php echo $_smarty_tpl->getVariable('d')->value['replaycount'];?>
)<?php }?></em></a>

        <?php if ($_smarty_tpl->getVariable('d')->value['uid']!=$_SESSION['uid']){?>
               <a href="javascript:void(0)" onclick="likes('<?php echo $_smarty_tpl->getVariable('d')->value['bid'];?>
','<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'blog','a'=>'likes','bid'=>$_smarty_tpl->getVariable('d')->value['bid']),$_smarty_tpl);?>
')">喜欢</a>
               <a href="javascript:void(0)" onClick="tuijian('<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'blog','a'=>'tuijian','bid'=>$_smarty_tpl->getVariable('d')->value['bid']),$_smarty_tpl);?>
')">推荐</a>
               <?php }?>
         <a href="javascript:void(0)" onclick="indexPostTab('feeds','<?php echo $_smarty_tpl->getVariable('d')->value['bid'];?>
','<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'blog','a'=>'getFeeds'),$_smarty_tpl);?>
')" id="hid_btn_<?php echo $_smarty_tpl->getVariable('d')->value['bid'];?>
">动态<em><?php ob_start();?><?php echo $_smarty_tpl->getVariable('d')->value['feedcount'];?>
<?php $_tmp2=ob_get_clean();?><?php if ($_tmp2!=0){?>(<?php echo $_smarty_tpl->getVariable('d')->value['feedcount'];?>
)<?php }?></em></a>


        <?php if ($_smarty_tpl->getVariable('d')->value['uid']==$_SESSION['uid']||$_SESSION['admin']==1){?>
                    <a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'add','a'=>'edit','id'=>$_smarty_tpl->getVariable('d')->value['bid']),$_smarty_tpl);?>
">编辑<?php if ($_smarty_tpl->getVariable('d')->value['open']==0){?>草稿<?php }?></a>
                   <a href="javascript:void(0)" onclick="delblogs('<?php echo $_smarty_tpl->getVariable('d')->value['bid'];?>
','<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'add','a'=>'del','id'=>$_smarty_tpl->getVariable('d')->value['bid']),$_smarty_tpl);?>
')" title="删除">删除</a>
          <?php }?>
       </div>
        <div class="clear"></div>
     </div>

     <hr size="1" />
     <div class="favatitle">谁喜欢...(<?php echo $_smarty_tpl->getVariable('fava')->value['count'];?>
)</div>
    <?php if ($_smarty_tpl->getVariable('fava')->value['count']!=0){?>
     <div class="fava">
         <?php  $_smarty_tpl->tpl_vars['d'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('fava')->value['rs']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['d']->key => $_smarty_tpl->tpl_vars['d']->value){
?>
           <a href="<?php echo goUserHome(array('domain'=>$_smarty_tpl->tpl_vars['d']->value['domain'],'uid'=>$_smarty_tpl->tpl_vars['d']->value['uid']),$_smarty_tpl);?>
" title="<?php echo $_smarty_tpl->tpl_vars['d']->value['username'];?>
 - <?php echo ybtime(array('time'=>$_smarty_tpl->tpl_vars['d']->value['time']),$_smarty_tpl);?>
">
           <img src="<?php echo avatar(array('uid'=>$_smarty_tpl->tpl_vars['d']->value['uid'],'size'=>'middle'),$_smarty_tpl);?>
" alt="<?php echo $_smarty_tpl->tpl_vars['d']->value['username'];?>
"/></a>
         <?php }} ?>
      </div>
      <?php }?>


     <script>indexPostTab('comment','<?php echo $_smarty_tpl->getVariable('d')->value['bid'];?>
','<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'blog','a'=>'getReplay'),$_smarty_tpl);?>
');</script>
     <div id="comment_<?php echo $_smarty_tpl->getVariable('d')->value['bid'];?>
">
            <div class="comment">
            <?php if (islogin()){?>
                <textarea id="replyInput_<?php echo $_smarty_tpl->getVariable('d')->value['bid'];?>
"></textarea>
                <input type="hidden" id="replyTo_<?php echo $_smarty_tpl->getVariable('d')->value['bid'];?>
" />
				<div class="submit">
	                 <em class="green" id="replyInput_lengthinf_<?php echo $_smarty_tpl->getVariable('d')->value['bid'];?>
"></em>
	                 <input type="button" value="提交评论" onclick="sendReplay('<?php echo $_smarty_tpl->getVariable('d')->value['bid'];?>
','<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'blog','a'=>'replay'),$_smarty_tpl);?>
')" class="btn" />
				</div>
             <?php }?>
             <ul class="commentList" id="commentList_<?php echo $_smarty_tpl->getVariable('d')->value['bid'];?>
"></ul>
            </div>
      </div>
      <div id="feeds_<?php echo $_smarty_tpl->getVariable('d')->value['bid'];?>
"  style="display:none">
          <div class="comment">
            <ul class="feedList" id="feedList_<?php echo $_smarty_tpl->getVariable('d')->value['bid'];?>
">
            </ul>
          </div>
      </div>

    </div>
</div>

<div class="aside">
<?php if (!$_smarty_tpl->getVariable('anon')->value){?>
<?php $_template = new Smarty_Internal_Template("theme/default/aside.html", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>
<?php }else{ ?>
<?php $_template = new Smarty_Internal_Template("theme/default/anon.html", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>
<?php }?>

</div>

<?php $_template = new Smarty_Internal_Template("theme/default/footer.html", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>