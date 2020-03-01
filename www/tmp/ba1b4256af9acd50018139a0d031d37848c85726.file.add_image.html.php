<?php /* Smarty version Smarty-3.0.6, created on 2012-03-16 10:58:44
         compiled from "D:\freehost\wilee\web/tpl\add_image.html" */ ?>
<?php /*%%SmartyHeaderCode:157884f62ac64eeb286-98886737%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ba1b4256af9acd50018139a0d031d37848c85726' => 
    array (
      0 => 'D:\\freehost\\wilee\\web/tpl\\add_image.html',
      1 => 1331827166,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '157884f62ac64eeb286-98886737',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php $_template = new Smarty_Internal_Template("require_header.html", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
$_template->assign('addcss','yes');$_template->assign('editor','yes');$_template->assign('swfupload','yes'); echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>
<div class="all">
<div class="container">
<div class="contentTop"></div>
<div class="content">
<div>&nbsp;</div>
<form action="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'add','a'=>'post'),$_smarty_tpl);?>
" id="form1" method="post">
  <div id="content">

    <div id="main">

      <h2 id="title">发布图片</h2>
      <div id="pb-post-area">

      <div id="uploadArea">
           <?php if (is_array($_smarty_tpl->getVariable('attach')->value)){?>
             <?php  $_smarty_tpl->tpl_vars['d'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('attach')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['d']->key => $_smarty_tpl->tpl_vars['d']->value){
?>
             <?php if ($_smarty_tpl->tpl_vars['d']->value['mime']=='jpg'||$_smarty_tpl->tpl_vars['d']->value['mime']=='png'||$_smarty_tpl->tpl_vars['d']->value['mime']=='gif'||$_smarty_tpl->tpl_vars['d']->value['mime']=='bmp'){?>
            <div id="attach_<?php echo $_smarty_tpl->tpl_vars['d']->value['id'];?>
">
                <img src="<?php echo $_smarty_tpl->getVariable('url')->value;?>
/<?php echo thubimg(array('path'=>$_smarty_tpl->tpl_vars['d']->value['path']),$_smarty_tpl);?>
" width="100" height="100" />
                <textarea name="localimg[<?php echo $_smarty_tpl->tpl_vars['d']->value['id'];?>
]" onblur=""><?php echo $_smarty_tpl->tpl_vars['d']->value['blogdesc'];?>
</textarea>
                <a href="javascript:void(0)" onclick="delAttachIMAGE('<?php echo $_smarty_tpl->tpl_vars['d']->value['id'];?>
')" class="delete">remove</a>
            </div>
            <?php }?>
            <?php }} ?>
           <?php }?>

      </div>

      <div id="listArea" bid="<?php echo $_smarty_tpl->getVariable('tempid')->value;?>
"  ssid="<?php echo session_id();?>
">
      <div id="controlBtns" style="display:none;"><a href="javascript:void(0);" id="btnClear" onclick="removeFile();" class="btn" style="display:none;"><span><img src="<?php echo $_smarty_tpl->getVariable('url')->value;?>
/tpl/image/add/clear.gif" /> 删除文件</span></a> <a href="javascript:void(0);" id="btnStart" onclick="startUploadFiles();" class="btn"><span>开始上传</span></a></div>

			<table width="100%" border="0" cellpadding="0" cellspacing="0">
				<tbody id="listBody">
				</tbody>
			</table>
		</div>
     <div id="progressArea">
			<div id="progressBar"><span>0%</span><div id="progress" style="width:1px;"></div></div>
		</div>

      <div class="upimgBar">
            <div id="divAddFiles"><div id="fileButton"></div></div>
            <div id="upimgText">在文件列表中，您可以按住Shift多选。jpg,png,bmp.每张不超过<?php echo formatBytes(array('size'=>$_smarty_tpl->getVariable('yb')->value['addimg_upsize']),$_smarty_tpl);?>
,最多发布<?php echo $_smarty_tpl->getVariable('yb')->value['addimg_count'];?>
张</div>
            <div class="clear"></div>
        </div>







        <div>
          <h3 class="title"> 图组标题 </h3>
          <input type="text" name="pb-text-title" id="pb-text-title" class="input" tabindex="1" value="<?php echo $_smarty_tpl->getVariable('blog')->value['title'];?>
">
        </div>



        <div>
          <h3 class="title">图组介绍<span>(选填)</span></h3>
          <textarea name="textarea" id="textarea" style="width:100%; height:180px"><?php echo $_smarty_tpl->getVariable('body')->value['content'];?>
</textarea>
           </div>



      </div>
      <div id="pb-action-holder">
          <a id="submit_image" class="blue-button">发布</a>
          <a id="preview" class="gray-button">预览</a>
          <a id="cancel" class="gray-button">取消</a>
       <span style="display:none;" id="pb-submiting-tip">正在执行中...</span>
      </div>
    </div>


    <div id="aside">
      <div class="aside-item" id="post-privacy-holder">
        <select id="post-privacy-select" name="post-privacy-select">
        <option value="1">所有人可见</option>
         <option value="0">保存为草稿</option>
        </select>
      </div>

      <hr class="separator">

      <div class="aside-item" id="post-tag-holder">
        <div id="post-tag">
          <ul class="clearfix" id="post-tag-list"><!--动态插入标签-->
          <?php  $_smarty_tpl->tpl_vars['d'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('myTag')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['d']->key => $_smarty_tpl->tpl_vars['d']->value){
?>
          <li tag="<?php echo $_smarty_tpl->tpl_vars['d']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['d']->value;?>
<a href="javascript:void(0)" onclick="remTags(this)">x</a></li>
        <?php }} ?>
          </ul>
          <div id="post-tag-input-holder">
            <input type="text" id="post-tag-input" class="pb-tag-tip" value="">
          </div>
        </div>
      </div>

      <hr class="separator">

      <div class="aside-item" id="recommand-tag-holder">
        <h4>常用标签</h4>
        <ul class="clearfix" id="recommand-tag-list">
        <?php  $_smarty_tpl->tpl_vars['d'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('myTagUsually')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['d']->key => $_smarty_tpl->tpl_vars['d']->value){
?>
          <li tag="<?php echo $_smarty_tpl->tpl_vars['d']->value['title'];?>
"><a href="javascript:void(0)" onclick="tuiTag('<?php echo $_smarty_tpl->tpl_vars['d']->value['title'];?>
',this)"><?php echo $_smarty_tpl->tpl_vars['d']->value['title'];?>
</a></li>
        <?php }} ?>
        </ul>
        <div class="clear"></div>
      </div>
      <hr class="separator">

      <div class="aside-item pb-side-opt" id="top-post-holder">

        <label>
         <?php if ($_smarty_tpl->getVariable('blog')->value['top']==1){?>
        <input type="checkbox" id="pb-top-post" name="pb-top-post" value="1" checked="checked">
        <?php }else{ ?>
           <input type="checkbox" id="pb-top-post" name="pb-top-post" value="1">
        <?php }?>
        文章置顶
        </label>
        <p class="top-post-tip">多个置顶将按照时间排序</p>
      </div>

      <div class="aside-item pb-side-opt" id="top-post-holder">
        <label>

         <?php if ($_smarty_tpl->getVariable('blog')->value['noreply']==1){?>
        <input type="checkbox" id="pb-nowrite-post" name="pb-nowrite-post" value="1" checked="checked">
        <?php }else{ ?>
           <input type="checkbox" id="pb-nowrite-post" name="pb-nowrite-post" value="1">
        <?php }?>
        禁止评论
        </label>
        <p class="top-post-tip">本条内容不允许评论</p>
      </div>

      <div class="aside-item pb-side-opt" id="top-post-holder">
        <label>

      <?php if ($_smarty_tpl->getVariable('blog')->value['anonymous']==1){?>
        <input type="checkbox" id="pb-anon-post" name="pb-anon-post" value="1" checked="checked">
        <?php }else{ ?>
           <input type="checkbox" id="pb-anon-post" name="pb-anon-post" value="1">
        <?php }?>
        匿名发表
        </label>
        <p class="top-post-tip">匿名发表本条糗事</p>
      </div>
       <hr class="separator">
      <!--
        <div class="aside-item pb-side-opt" id="top-post-holder">
         <label> <input name="pb-sync-to-qqweibo" type="checkbox" id="pb-sync-to-qqweibo" value="1">转发腾讯微薄</label>
      </div>

        <div class="aside-item pb-side-opt" id="top-post-holder">
         <label><input name="pb-sync-to-weibo" type="checkbox" id="pb-sync-to-weibo" value="1">转发新浪微薄</label>
      </div>
      -->
      <input type="hidden" name="blog-types" id="blog-types" value="3" />
      <input type="hidden" name="blog-open" id="blog-open" value="1" />
      <input type="hidden" name="blog-tags" id="blog-tags" value="" />
      <input type="hidden" name="blog-attach" id="blog-attach" value="<?php echo $_smarty_tpl->getVariable('body')->value['attr'];?>
"/>
      <input type="hidden" name="uploadcount" id="uploadcount" value="<?php echo $_smarty_tpl->getVariable('yb')->value['addimg_count'];?>
" />
      <input type="hidden" name="uploadcount" id="uploadmaxsize" value="<?php echo formatBytes(array('size'=>$_smarty_tpl->getVariable('yb')->value['addimg_upsize']),$_smarty_tpl);?>
" />
      <input type="hidden" name="id" value="<?php echo $_smarty_tpl->getVariable('blog')->value['bid'];?>
" />


    </div>
    <div class="clear"></div>
  </div>
</form>
</div>
</div>
</div>
<?php $_template = new Smarty_Internal_Template("require_footer.html", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>
