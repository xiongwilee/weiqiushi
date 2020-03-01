<?php /* Smarty version Smarty-3.0.6, created on 2012-03-16 10:54:32
         compiled from "D:\freehost\wilee\web/tpl\require_feeds.html" */ ?>
<?php /*%%SmartyHeaderCode:82834f62ab68c6a980-08800949%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '39dee16f52c90687b433d769378195e0a57c6b59' => 
    array (
      0 => 'D:\\freehost\\wilee\\web/tpl\\require_feeds.html',
      1 => 1331827189,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '82834f62ab68c6a980-08800949',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php  $_smarty_tpl->tpl_vars['d'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('data')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['d']->key => $_smarty_tpl->tpl_vars['d']->value){
?>
<div class="box" id="blog_<?php echo $_smarty_tpl->tpl_vars['d']->value['bid'];?>
">
     <div class="top">
     	<a <?php if ($_smarty_tpl->tpl_vars['d']->value['anonymous']){?> title="匿名用户" <?php }else{ ?> href="<?php echo goUserHome(array('domain'=>$_smarty_tpl->tpl_vars['d']->value['domain'],'uid'=>$_smarty_tpl->tpl_vars['d']->value['uid']),$_smarty_tpl);?>
" title="<?php echo $_smarty_tpl->tpl_vars['d']->value['user']['username'];?>
" target="_blank" <?php }?>>
     	<img src="<?php echo avatar(array('uid'=>$_smarty_tpl->tpl_vars['d']->value['uid'],'size'=>'middle','anon'=>$_smarty_tpl->tpl_vars['d']->value['anonymous']),$_smarty_tpl);?>
" <?php if ($_smarty_tpl->tpl_vars['d']->value['anonymous']){?> alt="匿名用户" <?php }else{ ?>alt="<?php echo $_smarty_tpl->tpl_vars['d']->value['user']['username'];?>
" <?php }?> class="face"/></a><span class="jiao"></span>
     </div>
     <div class="header">
       <cite>
       <?php if ($_smarty_tpl->tpl_vars['d']->value['anonymous']){?>
       <a href="javascript:;">匿名用户</a>
		<?php }else{ ?>
		<a href="<?php echo goUserHome(array('domain'=>$_smarty_tpl->tpl_vars['d']->value['domain'],'uid'=>$_smarty_tpl->tpl_vars['d']->value['uid']),$_smarty_tpl);?>
" target="_blank"><?php echo $_smarty_tpl->tpl_vars['d']->value['username'];?>
</a>
	   <?php }?>
	   <?php echo ybtime(array('time'=>$_smarty_tpl->tpl_vars['d']->value['time']),$_smarty_tpl);?>

	   </cite>
      <?php if ($_smarty_tpl->tpl_vars['d']->value['title']){?>
      	<h1>
      		<a href="<?php echo goUserBlog(array('bid'=>$_smarty_tpl->tpl_vars['d']->value['bid']),$_smarty_tpl);?>
" target="_blank"><?php echo $_smarty_tpl->tpl_vars['d']->value['title'];?>
</a>
      	</h1>
      <?php }?>
     </div>

     <div id="feedText_<?php echo $_smarty_tpl->tpl_vars['d']->value['bid'];?>
" class="content">
           <?php echo feeds(array('item'=>$_smarty_tpl->tpl_vars['d']->value['body'],'type'=>$_smarty_tpl->tpl_vars['d']->value['type'],'limit'=>$_smarty_tpl->getVariable('limits')->value,'bid'=>$_smarty_tpl->tpl_vars['d']->value['bid']),$_smarty_tpl);?>

     </div>


     <div class="footer">
      <div class="tag"><?php echo tag(array('tag'=>$_smarty_tpl->tpl_vars['d']->value['tag'],'c'=>'tag'),$_smarty_tpl);?>
 </div>

      <div class="like">
      	    <!--    <?php if ($_smarty_tpl->tpl_vars['d']->value['uid']!=$_SESSION['uid']){?>
                       <?php if ($_smarty_tpl->tpl_vars['d']->value['likeid']!=''){?>
                       <a href="javascript:void(0)" class="like" onclick="likes('<?php echo $_smarty_tpl->tpl_vars['d']->value['bid'];?>
','<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'blog','a'=>'likes','bid'=>$_smarty_tpl->tpl_vars['d']->value['bid']),$_smarty_tpl);?>
')">已喜欢</a>
                       <?php }else{ ?>
                       <a href="javascript:void(0)" class="" onclick="likes('<?php echo $_smarty_tpl->tpl_vars['d']->value['bid'];?>
','<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'blog','a'=>'likes','bid'=>$_smarty_tpl->tpl_vars['d']->value['bid']),$_smarty_tpl);?>
')">喜欢</a>
                       <?php }?>
                    <?php }?>
      		 -->
      		 <a class=<?php if ($_smarty_tpl->tpl_vars['d']->value['iflike']=="1"){?>'dolike dolikeyes' title="已喜欢" <?php }else{ ?>'dolike' <?php }?><?php if (islogin()&&$_smarty_tpl->tpl_vars['d']->value['likeid']==''&&$_smarty_tpl->tpl_vars['d']->value['uid']!=$_SESSION['uid']){?> onclick="dolike('<?php echo $_smarty_tpl->tpl_vars['d']->value['bid'];?>
','dolike','<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'blog','a'=>'doLike','bid'=>$_smarty_tpl->tpl_vars['d']->value['bid']),$_smarty_tpl);?>
')" href="javascript:;" <?php }else{ ?> title="喜欢"  <?php }?> ><?php echo $_smarty_tpl->tpl_vars['d']->value['dolikecount'];?>
</a>
      		 <a class=<?php if ($_smarty_tpl->tpl_vars['d']->value['iflike']=="2"){?>'unlike unlikeyes' title="已不喜欢" <?php }else{ ?>'unlike' <?php }?><?php if (islogin()&&$_smarty_tpl->tpl_vars['d']->value['likeid']==''&&$_smarty_tpl->tpl_vars['d']->value['uid']!=$_SESSION['uid']){?> onclick="dolike('<?php echo $_smarty_tpl->tpl_vars['d']->value['bid'];?>
','unlike','<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'blog','a'=>'doLike','bid'=>$_smarty_tpl->tpl_vars['d']->value['bid']),$_smarty_tpl);?>
')"  href="javascript:;"  <?php }else{ ?> title="不喜欢" <?php }?> ></a>
      </div>


      <div class="menu">

      				<?php if (islogin()){?>
	                   <?php if ($_smarty_tpl->tpl_vars['d']->value['uid']==$_SESSION['uid']||$_SESSION['admin']==1){?>
	                    <!-- //编辑 <a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'add','a'=>'edit','id'=>$_smarty_tpl->tpl_vars['d']->value['bid']),$_smarty_tpl);?>
"><img src="<?php echo $_smarty_tpl->getVariable('url')->value;?>
/tpl/image/edit.gif" title="编辑<?php if ($_smarty_tpl->tpl_vars['d']->value['open']==0){?>草稿<?php }?>" /></a> -->
	                    <span class="delrep"><a href="javascript:void(0)" onclick="delblogs('<?php echo $_smarty_tpl->tpl_vars['d']->value['bid'];?>
','<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'add','a'=>'del','id'=>$_smarty_tpl->tpl_vars['d']->value['bid']),$_smarty_tpl);?>
')" title="删除">&nbsp;&nbsp;&nbsp;</a></span>
	                   <?php }?>
                   <?php }?>

      <!-- //转载	<?php if ($_smarty_tpl->tpl_vars['d']->value['uid']!=$_SESSION['uid']){?>	<a href="javascript:void(0)" onclick="repto('<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'add','a'=>'rep','id'=>$_smarty_tpl->tpl_vars['d']->value['bid']),$_smarty_tpl);?>
')">转载</a><?php }?>  -->
      <!-- //动态    <a href="javascript:void(0)" onclick="indexPostTab('feeds','<?php echo $_smarty_tpl->tpl_vars['d']->value['bid'];?>
','<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'blog','a'=>'getFeeds'),$_smarty_tpl);?>
')" id="hid_btn_<?php echo $_smarty_tpl->tpl_vars['d']->value['bid'];?>
">动态<em><?php ob_start();?><?php echo $_smarty_tpl->tpl_vars['d']->value['feedcount'];?>
<?php $_tmp1=ob_get_clean();?><?php if ($_tmp1!=0){?>(<?php echo $_smarty_tpl->tpl_vars['d']->value['feedcount'];?>
)<?php }?></em></a> -->

                	<a href="javascript:void(0)" onclick="indexPostTab('comment','<?php echo $_smarty_tpl->tpl_vars['d']->value['bid'];?>
','<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'blog','a'=>'getReplay'),$_smarty_tpl);?>
')" id="comment_btn_<?php echo $_smarty_tpl->tpl_vars['d']->value['bid'];?>
">
      				 评论<em><?php ob_start();?><?php echo $_smarty_tpl->tpl_vars['d']->value['replaycount'];?>
<?php $_tmp2=ob_get_clean();?><?php if ($_tmp2!=0){?>(<?php echo $_smarty_tpl->tpl_vars['d']->value['replaycount'];?>
)<?php }?></em></a>

	  <!--//关注	<?php if (islogin()){?>
                	<?php if ($_smarty_tpl->tpl_vars['d']->value['uid']!=$_SESSION['uid']){?>
                       <?php if ($_smarty_tpl->tpl_vars['d']->value['followid']!=''){?> <a href="javascript:void(0)" onclick="follows('<?php echo $_smarty_tpl->tpl_vars['d']->value['uid'];?>
','<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'blog','a'=>'follows'),$_smarty_tpl);?>
')">已关注</a> <?php }else{ ?>
                       <a href="javascript:void(0)" onclick="follows('<?php echo $_smarty_tpl->tpl_vars['d']->value['uid'];?>
','<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'blog','a'=>'follows'),$_smarty_tpl);?>
')">关注</a>
                       <?php }?>
                   <?php }?>
               <?php }?>
 	   -->
               <?php if ($_smarty_tpl->tpl_vars['d']->value['title']==''){?><a href="<?php echo goUserBlog(array('bid'=>$_smarty_tpl->tpl_vars['d']->value['bid']),$_smarty_tpl);?>
">全文</a><?php }?>

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
                      <?php }else{ ?>
                      <a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'main','a'=>'login'),$_smarty_tpl);?>
">登录</a>后才能发表评论喔亲！
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
<?php }} ?>
