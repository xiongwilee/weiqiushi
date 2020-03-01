<?php /* Smarty version Smarty-3.0.6, created on 2012-04-01 17:51:09
         compiled from "D:\freehost\wilee\web/tpl\tuijian.html" */ ?>
<?php /*%%SmartyHeaderCode:25794f78250d882527-74988952%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f9d0e27966c67d922b30532619608ac84d23920b' => 
    array (
      0 => 'D:\\freehost\\wilee\\web/tpl\\tuijian.html',
      1 => 1331827201,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '25794f78250d882527-74988952',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<style>
a{
	text-decoration:none
}
.syscateul {
	   margin: 0 -1px;
	 background: url("tpl/image/syscateline.png");
	 height:auto;
}
.syscate h2{
	font-size:16px; font-family:'微软雅黑';
	margin:5px 0px;
}
.syscate li {
    float: left;
    width: 100px;
	overflow:hidden;
	margin:4px;
	padding:2px;
	color: #193E5C;
    display: block;
    font-size: 14px;
    height: 20px;
    line-height: 20px;
    text-align: left;
}

</style>
</head>

<body>
<div style="height:300px; width:500px;overflow-x:hidden; overflow-y:auto ;">
    <form id="form1" name="form1" method="post" action=""> 
     <div class="syscate"> 
    <?php if (!$_smarty_tpl->getVariable('bid')->value){?>
       <h2>请选择分类</h2>
        <ul class="syscateul clearfix">
            <?php  $_smarty_tpl->tpl_vars['d'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('cate')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['d']->key => $_smarty_tpl->tpl_vars['d']->value){
?>
                <li><input type="radio" name="cid" id="cid" value="<?php echo $_smarty_tpl->tpl_vars['d']->value['cid'];?>
" /><?php echo $_smarty_tpl->tpl_vars['d']->value['catename'];?>
</li>
            <?php }} ?>
         </ul>
           <div style=" clear:both"></div>
    <?php }?>
   
     <h2>请填写推荐理由</h2>
     <textarea name="desc" rows="4" id="desc" style="width:470px"></textarea>
     <input type="hidden" name="bid" value="<?php echo $_smarty_tpl->getVariable('bid')->value;?>
"  />
     <input type="hidden" name="tuiuid" value="<?php echo $_smarty_tpl->getVariable('tuiuid')->value;?>
" /> 
     <input type="submit" name="submit" id="button" value="推荐" /> 
     <?php if ($_smarty_tpl->getVariable('err')->value){?> <?php echo $_smarty_tpl->getVariable('err')->value;?>
 <?php }?>
    </div>
    </form>
    <div style=" clear:both"></div>
</div>
</body>
</html>