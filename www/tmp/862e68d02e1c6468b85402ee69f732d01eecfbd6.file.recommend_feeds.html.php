<?php /* Smarty version Smarty-3.0.6, created on 2012-03-17 20:38:40
         compiled from "D:\freehost\wilee\web/tpl\recommend_feeds.html" */ ?>
<?php /*%%SmartyHeaderCode:268674f6485d08215a3-27635618%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '862e68d02e1c6468b85402ee69f732d01eecfbd6' => 
    array (
      0 => 'D:\\freehost\\wilee\\web/tpl\\recommend_feeds.html',
      1 => 1331827182,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '268674f6485d08215a3-27635618',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php  $_smarty_tpl->tpl_vars['d'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('date')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['d']->key => $_smarty_tpl->tpl_vars['d']->value){
?>

    <div class="box">
    <div class="userInfo clearfix"> <a href="<?php echo goUserBlog(array('bid'=>$_smarty_tpl->tpl_vars['d']->value['bid']),$_smarty_tpl);?>
"  target="_blank"><img src="<?php echo avatar(array('uid'=>$_smarty_tpl->tpl_vars['d']->value['uid'],'size'=>'middle'),$_smarty_tpl);?>
" class="avatar"></a>
        <div class="username"><strong><a target="_blank"  href="<?php echo goUserHome(array('uid'=>$_smarty_tpl->tpl_vars['d']->value['uid']),$_smarty_tpl);?>
">@<?php echo $_smarty_tpl->tpl_vars['d']->value['user']['username'];?>
</a></strong>
          <p class="time"><?php echo ybtime(array('time'=>$_smarty_tpl->tpl_vars['d']->value['time']),$_smarty_tpl);?>
</p>
        </div>
      </div>
    <!--类型 <?php echo $_smarty_tpl->tpl_vars['d']->value['type'];?>
 -->
    	  <?php if ($_smarty_tpl->tpl_vars['d']->value['blog']['type']==1&&$_smarty_tpl->tpl_vars['d']->value['attr']){?><img src="<?php echo $_smarty_tpl->getVariable('url')->value;?>
/<?php echo $_smarty_tpl->tpl_vars['d']->value['attr'];?>
" class="image"/><?php }?>
          <?php if ($_smarty_tpl->tpl_vars['d']->value['blog']['type']==2||$_smarty_tpl->tpl_vars['d']->value['type']==4){?><?php echo parseMedia(array('attrs'=>$_smarty_tpl->tpl_vars['d']->value['attr'],'bid'=>$_smarty_tpl->tpl_vars['d']->value['bid']),$_smarty_tpl);?>
<?php }?>
          <?php if ($_smarty_tpl->tpl_vars['d']->value['blog']['type']==3){?><?php echo parseImage(array('attrs'=>$_smarty_tpl->tpl_vars['d']->value['attr'],'bid'=>$_smarty_tpl->tpl_vars['d']->value['bid']),$_smarty_tpl);?>
<?php }?>
          <?php if ($_smarty_tpl->tpl_vars['d']->value['blog']['type']==5){?><?php echo parseShop(array('attrs'=>$_smarty_tpl->tpl_vars['d']->value['attr'],'bid'=>$_smarty_tpl->tpl_vars['d']->value['bid']),$_smarty_tpl);?>
<?php }?>

     <p class="info"><a href="<?php echo goUserBlog(array('bid'=>$_smarty_tpl->tpl_vars['d']->value['bid']),$_smarty_tpl);?>
"  target="_blank"><?php echo preg_replace('!<[^>]*?>!', ' ', $_smarty_tpl->tpl_vars['d']->value['content']);?>
</a></p>
      <!--作者-->

     <span class="tag"><?php if ($_smarty_tpl->tpl_vars['d']->value['blog']['type']==1){?>文字<?php }elseif($_smarty_tpl->tpl_vars['d']->value['blog']['type']==2){?>音乐
     					<?php }elseif($_smarty_tpl->tpl_vars['d']->value['blog']['type']==3){?>图片<?php }elseif($_smarty_tpl->tpl_vars['d']->value['blog']['type']==4){?>视频
                        <?php }elseif($_smarty_tpl->tpl_vars['d']->value['blog']['type']==5){?>宝贝<?php }else{ ?>其他<?php }?>
    </span>
    </div>
<?php }} ?>