<?php /* Smarty version Smarty-3.0.6, created on 2012-03-16 22:52:53
         compiled from "D:\freehost\wilee\web/tpl\user_mail_ajax.html" */ ?>
<?php /*%%SmartyHeaderCode:323164f6353c5344f13-98644244%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '4e06ed46dcfd676d2fe4716c7ed109d57266cc90' => 
    array (
      0 => 'D:\\freehost\\wilee\\web/tpl\\user_mail_ajax.html',
      1 => 1331827203,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '323164f6353c5344f13-98644244',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" style="background:#fff;">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo $_smarty_tpl->getVariable('yb')->value['site_title'];?>
 - 发送私信</title>
<?php $_template = new Smarty_Internal_Template("require_js.html", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
$_template->assign('loadedit','yes'); echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>
<link rel="stylesheet" type="text/css" media="screen" href="tpl/image/css/ajaxfrom.css" />

<script>
function dosubmit()
{
	document.getElementById('submit_button').style.display = 'none';
	document.getElementById('submit_tip').style.display = 'inline';
}
</script>

</head>

<form method="post" id="postpm" name="postpm" style="background:#fff;">
    <fieldset>
        <div>
          <label for="username">发 给</label>
			  <?php if ($_smarty_tpl->getVariable('rs')->value['username']){?>
			  <?php echo $_smarty_tpl->getVariable('rs')->value['username'];?>

			   <input name="uid" type="hidden"  value="<?php echo $_smarty_tpl->getVariable('rs')->value['uid'];?>
"/>
			  <?php }else{ ?>
				 <input name="username" type="text" id="username" size="25" maxlength="50" value="<?php echo $_smarty_tpl->getVariable('rs')->value['username'];?>
" class="ipt" tabindex="1" />
			  <?php }?>
           </div>

          <div>
          <label for="info">内 容</label>
		  <textarea name="info"  id="info"   class="xheditor {tools:'smallmail'}" style="width:300px; height:140px" ><?php echo $_GET['info'];?>
<?php echo $_POST['info'];?>
</textarea>
		  <p>&nbsp; <?php echo $_smarty_tpl->getVariable('err')->value;?>
 </p>
         </div>



          <div class="button">
            <span id="submit_tip">正在发送...</span>
           <input name="button" type="button" id="submit_button" class="blue-button submit"  value="发送" onclick="doPmSubmit(1);" tabindex="4"/>
        </div>
    </fieldset>
	<br/>
</form>
</body>
</html>