<?php /* Smarty version Smarty-3.0.6, created on 2012-03-16 10:54:35
         compiled from "D:\freehost\wilee\web/tpl\add_text.html" */ ?>
<?php /*%%SmartyHeaderCode:236064f62ab6b5e1b84-95159925%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a33d5699dd1ab12509cdef2629c0a7241df429d8' => 
    array (
      0 => 'D:\\freehost\\wilee\\web/tpl\\add_text.html',
      1 => 1331827173,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '236064f62ab6b5e1b84-95159925',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php if (!is_callable('smarty_modifier_date_format')) include 'D:\freehost\wilee\web\init\Drivers\Smarty\plugins\modifier.date_format.php';
?><?php $_template = new Smarty_Internal_Template("require_header.html", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
$_template->assign('addcss','yes');$_template->assign('editor','yes');$_template->assign('titlepre',"发布文字"); echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>
<div class="all">
<div class="container">
<div class="contentTop"></div>
<div class="content">
<form action="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'add','a'=>'post'),$_smarty_tpl);?>
" id="form1" method="post">
  <div id="content">

    <div id="main">

      <h2 id="title">发布文字</h2>
      <div id="pb-post-area">
        <div>
          <h3 class="title"> 标题 <span>(可以起个醒目的标题也可以空空如也)</span> </h3>
          <input type="text" name="pb-text-title" id="pb-text-title" class="input" tabindex="1" value="<?php echo $_smarty_tpl->getVariable('blog')->value['title'];?>
">
        </div>



        <div>
          <h3 class="title">内容</h3>
          <span id="uploadpic">
          <span id="upload_bar">
           <div class="uploadBtn" id="upload_img"><span>上传图片</span><input type="file" size="1" name="filedata" ext="jpg,jpeg,gif,png" /></div>
            </span>
        	  <span id="uploading" style="display:none">正在上传...</span>

              </span>

          <textarea name="textarea" id="textarea" style="width:100%"><?php echo $_smarty_tpl->getVariable('body')->value['content'];?>
</textarea>
           </div>



           <?php if (is_array($_smarty_tpl->getVariable('attach')->value)){?>
            <div id="media_lib">
          <h3 class="title">我的媒体库 <span>(您可以插入本博客的媒体文件)</span> </h3>
          <table border="0" width="100%" align="center" cellpadding="0" cellspacing="0" class="globox">
              <tr>
                <th width="30">ID</th>
                <th>名称</th>
                <th width="60">大小</th>
                <th width="40">类型</th>
                <th width="140">上传时间</th>
                <th width="100">操作</th>
              </tr>
                <?php  $_smarty_tpl->tpl_vars['d'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('attach')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['d']->key => $_smarty_tpl->tpl_vars['d']->value){
?>
               <tr class="trg" id="attach_<?php echo $_smarty_tpl->tpl_vars['d']->value['id'];?>
">
                <td align="center"><?php echo $_smarty_tpl->tpl_vars['d']->value['id'];?>
</td>
                <td><?php echo $_smarty_tpl->tpl_vars['d']->value['blogdesc'];?>
 </td>
                <td align="center"><?php echo formatBytes(array('size'=>$_smarty_tpl->tpl_vars['d']->value['filesize']),$_smarty_tpl);?>
</td>
                <td align="center"><?php echo $_smarty_tpl->tpl_vars['d']->value['mime'];?>
</td>
                <td align="center"><?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['d']->value['time'],"%Y/%m/%d %H:%M");?>
</td>
                <td align="center"><a href="javascript:void(0)" onclick="<?php echo attach_insert(array('file'=>$_smarty_tpl->tpl_vars['d']->value['path'],'name'=>$_smarty_tpl->tpl_vars['d']->value['blogdesc'],'id'=>$_smarty_tpl->tpl_vars['d']->value['id']),$_smarty_tpl);?>
">插入</a> /
                 <a href="javascript:void(0)" onclick="delAttach('<?php echo $_smarty_tpl->tpl_vars['d']->value['id'];?>
')">删除</a></td>
              </tr>
                <?php }} ?>
            </table>
           </div>
           <?php }?>



      </div>
      <div id="pb-action-holder">
          <a id="submit" class="blue-button">发布</a>
          <a id="preview" class="gray-button">预览</a>
          <a id="cancel" class="gray-button">取消</a>
       <span style="display:none;" id="pb-submiting-tip">正在保存...</span>
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
      -->
      <?php if ($_SESSION['openconnect']['WEIB']){?>
        <div class="aside-item pb-side-opt" id="top-post-holder">
         <label><input name="openconnect[WEIB]" type="checkbox"  value="1" checked="checked">发布到新浪微薄</label>
      </div>
       <?php }?>
      <input type="hidden" name="blog-types" id="blog-types" value="1" />
      <input type="hidden" name="blog-open" id="blog-open" value="1" />
      <input type="hidden" name="blog-tags" id="blog-tags" value="" />
      <input type="hidden" name="blog-attach" id="blog-attach" value="<?php echo $_smarty_tpl->getVariable('body')->value['attr'];?>
"/>
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
