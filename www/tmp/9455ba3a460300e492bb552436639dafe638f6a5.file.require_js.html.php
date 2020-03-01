<?php /* Smarty version Smarty-3.0.6, created on 2020-03-01 18:33:11
         compiled from "/var/www/html/tpl/require_js.html" */ ?>
<?php /*%%SmartyHeaderCode:19095168025e5b8f678db734-25566552%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '9455ba3a460300e492bb552436639dafe638f6a5' => 
    array (
      0 => '/var/www/html/tpl/require_js.html',
      1 => 1583057119,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '19095168025e5b8f678db734-25566552',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
	<script>var urlpath = '<?php echo $_smarty_tpl->getVariable('url')->value;?>
'</script>

	<script type="text/javascript" src="<?php echo $_smarty_tpl->getVariable('url')->value;?>
/tpl/js/jquery.min.js"></script>
	<script type="text/javascript" src="<?php echo $_smarty_tpl->getVariable('url')->value;?>
/tpl/js/dialog/dialog.js?skin=mac"></script>
	<script type="text/javascript" src="<?php echo $_smarty_tpl->getVariable('url')->value;?>
/tpl/js/dialog/dialogTools.js"></script>
	<script type="text/javascript" src="<?php echo $_smarty_tpl->getVariable('url')->value;?>
/tpl/js/global.js"></script>
	<script type="text/javascript" src="<?php echo $_smarty_tpl->getVariable('url')->value;?>
/tpl/js/slide.js"></script>
	<script type="text/javascript" src="<?php echo $_smarty_tpl->getVariable('url')->value;?>
/tpl/swf/player.js"></script>

     <!--[if lte IE 6]>
        <script src="<?php echo $_smarty_tpl->getVariable('url')->value;?>
/tpl/js/pngfixed.js" type="text/javascript"></script>
        <script> DD_belatedPNG.fix('img,#lbtn,#loginarea .filed .input,#loginarea .filedBtn .subBtn,#area li,#BalloonA,#BalloonB,#regbox,#rbtn,#aside #sidetop,#aside #dasbard,#wrap,#postblog .pop,#header #tool #side #menuSideBtn,#header #nav li.current,#header #logo a,#aside #search input.btn,#aside #search,#aside .hr,#article .box .top .jiao,.contentTop');</script>
        <![endif]-->

    <?php if ($_smarty_tpl->getVariable('login')->value=='yes'){?>
  	  <script src="<?php echo $_smarty_tpl->getVariable('url')->value;?>
/tpl/js/login.js"></script>
    <?php }else{ ?>
    	<link rel="stylesheet" type="text/css" media="screen" href="<?php echo $_smarty_tpl->getVariable('url')->value;?>
/tpl/image/css/anythink.css" />
    <?php }?>

    <?php if ($_smarty_tpl->getVariable('gallery')->value=='yes'){?>
	<script type="text/javascript" src="<?php echo $_smarty_tpl->getVariable('url')->value;?>
/tpl/js/gallery.min.js"></script>
    <script type="text/javascript" src="<?php echo $_smarty_tpl->getVariable('url')->value;?>
/tpl/js/gallery.global.js"></script>
     <link href="<?php echo $_smarty_tpl->getVariable('url')->value;?>
/tpl/image/css/gallery.show.css" rel="stylesheet" type="text/css">
    <?php }?>




    <?php if ($_smarty_tpl->getVariable('editor')->value=='yes'){?>
    <script type="text/javascript" src="<?php echo $_smarty_tpl->getVariable('url')->value;?>
/tpl/js/editor/xheditor.js"></script>
    <script type="text/javascript" src="<?php echo $_smarty_tpl->getVariable('url')->value;?>
/tpl/js/add.js"></script>
    <?php }?>

    <?php if ($_smarty_tpl->getVariable('custom')->value=='yes'){?>
      <script type="text/javascript" src="<?php echo $_smarty_tpl->getVariable('url')->value;?>
/tpl/js/custom.js"></script>
      <script type="text/javascript" src="<?php echo $_smarty_tpl->getVariable('url')->value;?>
/tpl/js/colorselect/jquery.modcoder.excolor.js"></script>
    <?php }?>


	 <?php if ($_smarty_tpl->getVariable('loadedit')->value=='yes'){?>
    <script type="text/javascript" src="<?php echo $_smarty_tpl->getVariable('url')->value;?>
/tpl/js/editor/xheditor.js"></script>
    <?php }?>

<?php if ($_smarty_tpl->getVariable('layout')->value=='yes'){?>
<script type="text/javascript" src="<?php echo $_smarty_tpl->getVariable('url')->value;?>
/tpl/js/masonry.min.js"></script>
<script type="text/javascript" src="<?php echo $_smarty_tpl->getVariable('url')->value;?>
/tpl/js/jquery.infinitescroll.min.js"></script>
<link rel="stylesheet" type="text/css" media="screen" href="<?php echo $_smarty_tpl->getVariable('url')->value;?>
/tpl/image/css/recommend.css" />

<script>
$(document).ready(function(){
	var $container = $('#container');
	  $container.masonry({
		itemSelector: '.box'
	  });
	  $('.box').hover(function(){
		  $(this).find('.userInfo').show();
		  },function(){
			 $(this).find('.userInfo').hide();
		})
});
</script>

    <?php }?>

    <?php if ($_smarty_tpl->getVariable('swfupload')->value=='yes'){?>
    <script type="text/javascript" src="<?php echo $_smarty_tpl->getVariable('url')->value;?>
/tpl/js/swfupload.js"></script>
    <script type="text/javascript" src="<?php echo $_smarty_tpl->getVariable('url')->value;?>
/tpl/js/multiupload.js"></script>
    <?php }?>

    <?php if ($_smarty_tpl->getVariable('addcss')->value=='yes'){?>
    <link rel="stylesheet" type="text/css" media="screen" href="<?php echo $_smarty_tpl->getVariable('url')->value;?>
/tpl/image/css/add.css" />
    <?php }?>