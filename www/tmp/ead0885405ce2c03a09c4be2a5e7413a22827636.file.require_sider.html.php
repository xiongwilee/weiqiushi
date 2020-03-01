<?php /* Smarty version Smarty-3.0.6, created on 2012-03-17 19:01:50
         compiled from "D:\freehost\wilee\web/tpl\require_sider.html" */ ?>
<?php /*%%SmartyHeaderCode:82454f646f18bcf961-33293628%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ead0885405ce2c03a09c4be2a5e7413a22827636' => 
    array (
      0 => 'D:\\freehost\\wilee\\web/tpl\\require_sider.html',
      1 => 1331982105,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '82454f646f18bcf961-33293628',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<!--右侧菜单组件-->


	<?php if ($_smarty_tpl->getVariable('inindex')->value){?>
	<div class="select">
		<div class="nav">
		<h2 class="nav_all"><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'main','a'=>'index'),$_smarty_tpl);?>
">所有糗事</a></h2>
		<ul>
			<li><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'main','a'=>'index','nav'=>1),$_smarty_tpl);?>
" class="select1<?php if ($_smarty_tpl->getVariable('type')->value=='1'){?> nav_current1<?php }?>">只有文字</a></li>
			<li><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'main','a'=>'index','nav'=>3),$_smarty_tpl);?>
" class="select2<?php if ($_smarty_tpl->getVariable('type')->value=='3'){?> nav_current2<?php }?>">只有图片</a></li>
			<li><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'main','a'=>'index','nav'=>2),$_smarty_tpl);?>
" class="select3<?php if ($_smarty_tpl->getVariable('type')->value=='2'){?> nav_current3<?php }?>">只有音频</a></li>
			<li><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'main','a'=>'index','nav'=>4),$_smarty_tpl);?>
" class="select4<?php if ($_smarty_tpl->getVariable('type')->value=='4'){?> nav_current4<?php }?>">只有视频</a></li>
		</ul>
		</div>
		<div class="taxis">
		<h2 class="nav_all"><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'main','a'=>'index'),$_smarty_tpl);?>
">默认排序</a></h2>
		<ul>
			<li><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'main','a'=>'index','taxis'=>1),$_smarty_tpl);?>
" class="select5<?php if ($_smarty_tpl->getVariable('taxis')->value=='1'){?> nav_current5<?php }?>">按时间排序</a></li>
			<li><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'main','a'=>'index','taxis'=>2),$_smarty_tpl);?>
" class="select6<?php if ($_smarty_tpl->getVariable('taxis')->value=='2'){?> nav_current6<?php }?>">按热度排序</a></li>
		</ul>
		</div>
	</div>
	<div class="clear"></div>
	<?php }?>

<?php if ($_SESSION['uid']!=''){?>


  <?php if (!$_smarty_tpl->getVariable('in_tagindex')->value){?>

	<?php if ($_smarty_tpl->getVariable('inuser')->value){?>
	<div id="user_nav">
		<ul>
	    <li <?php if ($_smarty_tpl->getVariable('CurrentModule')->value=='index'){?>class="current"<?php }?>><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'main','a'=>'user'),$_smarty_tpl);?>
">首页</a></li>
	    <li <?php if ($_smarty_tpl->getVariable('CurrentModule')->value=='recommend'){?>class="current"<?php }?>><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'main','a'=>'recommend'),$_smarty_tpl);?>
">推荐</a></li>
	    <li <?php if ($_smarty_tpl->getVariable('CurrentModule')->value=='discover'){?>class="current"<?php }?>><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'main','a'=>'discovery'),$_smarty_tpl);?>
">发现</a></li>
	    <li <?php if ($_smarty_tpl->getVariable('CurrentModule')->value=='now'){?>class="current"<?php }?>><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'main','a'=>'now'),$_smarty_tpl);?>
">此刻</a></li>
	    <!--<li><a href="<?php echo $_smarty_tpl->getVariable('url')->value;?>
/group.php"  target="_blank">论坛</a></li>-->
		</ul>
	</div>
	<?php }?>

  <div id="sidetop">
    <div class="myfollow"><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'user','a'=>'myfollow'),$_smarty_tpl);?>
">我关注<?php echo $_smarty_tpl->getVariable('user')->value['flow'];?>
个糗友</a></div>
    <div class="showfollow"><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'user','a'=>'myfollow'),$_smarty_tpl);?>
">管理我的关注</a></div>
   </div>

    <div id="dasbard">
        <div class="item"><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'user','a'=>'mylikes'),$_smarty_tpl);?>
">我的最爱</a><span><?php echo $_smarty_tpl->getVariable('user')->value['likenum'];?>
</span></div>
        <div class="item"><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'user','a'=>'mypost'),$_smarty_tpl);?>
">我的糗事</a><span><?php echo $_smarty_tpl->getVariable('user')->value['num'];?>
</span></div>
         <div class="item"><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'user','a'=>'myreplay'),$_smarty_tpl);?>
">我回复的</a></div>
    </div>
  <?php }?>


    <?php if ($_smarty_tpl->getVariable('in_tagindex')->value){?>

         <?php if ($_smarty_tpl->getVariable('favatag')->value){?>
             <div id="menu">
             <ul>
             <?php  $_smarty_tpl->tpl_vars['d'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('favatag')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['d']->key => $_smarty_tpl->tpl_vars['d']->value){
?>
             	<?php if ($_smarty_tpl->tpl_vars['d']->value['tag']['title']==$_smarty_tpl->getVariable('tagname')->value){?>
                <li class="current"><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'blog','a'=>'tag','tag'=>$_smarty_tpl->tpl_vars['d']->value['tag']['title']),$_smarty_tpl);?>
" title="最近更新<?php echo ybtime(array('time'=>$_smarty_tpl->tpl_vars['d']->value['tag']['updates']),$_smarty_tpl);?>
"><?php echo $_smarty_tpl->tpl_vars['d']->value['tag']['title'];?>
</a><span><?php if ($_smarty_tpl->tpl_vars['d']->value['tag']['num']){?>(<?php echo $_smarty_tpl->tpl_vars['d']->value['tag']['num'];?>
)<?php }?></span></li>
                <?php }else{ ?>
                <li><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'blog','a'=>'tag','tag'=>$_smarty_tpl->tpl_vars['d']->value['tag']['title']),$_smarty_tpl);?>
" title="最近更新<?php echo ybtime(array('time'=>$_smarty_tpl->tpl_vars['d']->value['tag']['updates']),$_smarty_tpl);?>
"><?php echo $_smarty_tpl->tpl_vars['d']->value['tag']['title'];?>
</a><span><?php if ($_smarty_tpl->tpl_vars['d']->value['tag']['num']){?>(<?php echo $_smarty_tpl->tpl_vars['d']->value['tag']['num'];?>
)<?php }?></span></li>
                <?php }?>
			<div class="clear"></div>
            <?php }} ?>
            <li class="end"><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'main','a'=>'user'),$_smarty_tpl);?>
" title="返回个人中心">返回个人中心</a></li>
            </ul>
			<div class="clear"></div>
            </div>
            <?php }else{ ?>
             <div id="menu">
              <li class="end"><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'main','a'=>'recommend'),$_smarty_tpl);?>
">没有关注标签,发现一下吧</a></li>
              <div class="clear"></div>
            </div>
         <?php }?>
    <?php }else{ ?>
    	<?php if ($_smarty_tpl->getVariable('favatag')->value){?>
             <div id="menu">
             <ul>
             <?php  $_smarty_tpl->tpl_vars['d'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('favatag')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['d']->key => $_smarty_tpl->tpl_vars['d']->value){
?>
              <li><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'blog','a'=>'tag','tag'=>$_smarty_tpl->tpl_vars['d']->value['tag']['title']),$_smarty_tpl);?>
" title="最近更新<?php echo ybtime(array('time'=>$_smarty_tpl->tpl_vars['d']->value['tag']['updates']),$_smarty_tpl);?>
"><?php echo $_smarty_tpl->tpl_vars['d']->value['tag']['title'];?>
</a> <span><?php if ($_smarty_tpl->tpl_vars['d']->value['tag']['num']){?>(<?php echo $_smarty_tpl->tpl_vars['d']->value['tag']['num'];?>
)<?php }?></span></li>
            <?php }} ?>

             <li class="end"><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'blog','a'=>'tag'),$_smarty_tpl);?>
">查看更多标签</a></li>
             </ul>
            <div class="clear"></div>
            </div>
            <?php }else{ ?>
             <div id="menu">
              <li class="end"><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'main','a'=>'recommend'),$_smarty_tpl);?>
">没有关注标签,发现一下吧</a></li>
              <div class="clear"></div>
            </div>
        <?php }?>
    <?php }?>

	<div class="clear"></div>
 <?php }?>

   	<div class="welcome">
   	<h1>欢迎访问微糗事</h1>
    <a href="#"><img alt="" src="<?php echo $_smarty_tpl->getVariable('url')->value;?>
/tpl/image/nologin.jpg"></a>
    <div class="footer">更多精彩，尽在微糗事·weiqiushi.com</div>
    </div>

<!--
	<nav class="list">
	   	 <h1>推荐阅读  <span>  </span> <a id="rec_focusTa" href="javascript:void(0)">关注Ta</a>  转发</h1>
	    <a href="#"><img width="250" alt="" src=""></a>
	     <footer><a href="#">看看Ta的作品</a></footer>
    </nav>
-->

<!--
	<nav class="list">
	   	 <h1>音乐推荐  <span>  </span> <a id="rec_focusTa" href="javascript:void(0)">关注Ta</a>  转发</h1>
	    <embed width="250" height="62" type="application/x-mplayer2"src=""></embed>
	     <footer><a href="#">看看Ta的作品</a></footer>
    </nav>
 -->
<div id="box_float">
<div id="float_sidebar" class="div1 div2">
	<div id="aside_bottom">
		<a class="totop" href="#" title="回到顶部"></a>
		<a class="wap" href="#" title="手机访问"></a>
		<a class="rss" href="#" title="RSS订阅"></a>
	</div>
</div>
</div>


<script>
$(function(){
    var oDiv=document.getElementById("float_sidebar");
    var H=0,iE6;
    var Y=oDiv;
    while(Y){H+=Y.offsetTop;Y=Y.offsetParent};
    iE6=window.ActiveXObject&&!window.XMLHttpRequest;
    if(!iE6){
        window.onscroll=function()
        {
            var s=document.body.scrollTop||document.documentElement.scrollTop;
            if(s>H){oDiv.className="div1 div2";if(iE6){oDiv.style.top=(s-H)+"px";}}
            else{oDiv.className="div1";}
        };
    }
})();
</script>
