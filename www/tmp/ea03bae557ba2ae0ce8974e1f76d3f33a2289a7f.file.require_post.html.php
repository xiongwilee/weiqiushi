<?php /* Smarty version Smarty-3.0.6, created on 2012-03-16 10:54:32
         compiled from "D:\freehost\wilee\web/tpl\require_post.html" */ ?>
<?php /*%%SmartyHeaderCode:295464f62ab68b98445-66507055%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ea03bae557ba2ae0ce8974e1f76d3f33a2289a7f' => 
    array (
      0 => 'D:\\freehost\\wilee\\web/tpl\\require_post.html',
      1 => 1331827193,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '295464f62ab68b98445-66507055',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<div id="postblog">
        <div class="img"><img src="<?php echo avatar(array('uid'=>$_SESSION['uid'],'size'=>'middle'),$_smarty_tpl);?>
" alt="<?php echo $_SESSION['username'];?>
" class="face"/></div>
        <div class="pop">
     <?php if ($_smarty_tpl->getVariable('yb')->value['addtext_switch']==1){?> <li><a <?php if (islogin()){?> href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'add','a'=>'text'),$_smarty_tpl);?>
" <?php }else{ ?> href="javascript:tips('请先登录');" <?php }?> class="text">文本糗事</a></li> <li class="ln"></li><?php }?>
    <?php if ($_smarty_tpl->getVariable('yb')->value['addmusic_switch']==1){?> <li><a <?php if (islogin()){?> href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'add','a'=>'music'),$_smarty_tpl);?>
" <?php }else{ ?> href="javascript:tips('请先登录');" <?php }?>  class="music">音频糗事</a></li><li class="ln"></li><?php }?>
    <?php if ($_smarty_tpl->getVariable('yb')->value['addimg_switch']==1){?> <li><a <?php if (islogin()){?> href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'add','a'=>'image'),$_smarty_tpl);?>
" <?php }else{ ?> href="javascript:tips('请先登录');" <?php }?>  class="photo">有真相的</a></li><li class="ln"></li><?php }?>
    <?php if ($_smarty_tpl->getVariable('yb')->value['addvideo_switch']==1){?><li><a <?php if (islogin()){?> href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'add','a'=>'video'),$_smarty_tpl);?>
" <?php }else{ ?> href="javascript:tips('请先登录');" <?php }?>  class="video">视频糗事</a></li><li class="ln"></li><?php }?>
     <?php if ($_smarty_tpl->getVariable('yb')->value['addbaobei_switch']==1){?><li><a <?php if (islogin()){?>   href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'add','a'=>'product'),$_smarty_tpl);?>
" <?php }else{ ?> href="javascript:tips('请先登录');" <?php }?> class="product">宝贝</a></li><?php }?>
    <!--<li><a href="#" class="link">其他</a></li>-->
      </div>
</div>