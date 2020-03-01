(function($) {
        $.fn.disable = function() {
            return $(this).find("*").each(function() {
                $(this).attr("disabled", "disabled");
            });
        }
        $.fn.enable = function() {
        return $(this).find("*").each(function() {
         $(this).removeAttr("disabled");
            });
        }
    })(jQuery);
	
$(document).ready(function(){
	   textbody =  $('#textarea').xheditor({loadCSS:urlpath+'/tpl/image/css/editor.css',urlBase:urlpath+'/',internalStyle:false});
	   
	   	var jUpload=$('#upload_img input');
		jUpload.mousedown(function(){textbody.saveBookmark();}).change(function(){
			var $this=$(this),sExt=$this.attr('ext'),$prev=$this.prev();
			if($this.val().match(new RegExp('\.('+sExt.replace(/,/g,'|')+')$','i'))){
				$('#uploading').show();
				var upload=new textbody.html4Upload(this,urlpath+'/index.php?c=add&a=uploadimg',function(sText){
					$('#uploading').hide();
					var data=Object,bOK=false;
				
					try{data=eval('('+sText+')');}catch(ex){alert(sText)};
					if(!data.err){
						textbody.loadBookmark();
						var urls = data.msg.url.split('||');
						if(urls.length ==2)
						{
							if($('#blog-types').val() == 1){$('#blog-attach').val(urls[0]);}
							textbody.pasteHTML('<a href="'+urls[1]+'"><img src="'+urls[0]+'" class="feedimg" /></a>');
						}else{
							if($('#blog-types').val() == 1){$('#blog-attach').val(data.msg.url);}
							textbody.pasteHTML('<img src="'+data.msg.url+'" class="feedimg" />');
						}
						
					}else{
						alert(data.err);	
					}
				});
				upload.start();
			}
			else alert('请上传'+sExt+'文件');
		});
		
			var jUpload=$('#upload_mp3 input');
		jUpload.mousedown(function(){textbody.saveBookmark();}).change(function(){
			var $this=$(this),sExt=$this.attr('ext'),$prev=$this.prev();
			if($this.val().match(new RegExp('\.('+sExt.replace(/,/g,'|')+')$','i'))){
				var upload=new textbody.html4Upload(this,urlpath+'/index.php?c=add&a=uploadmedia',function(sText){
					$('#uploading').hide();
					var data=Object,bOK=false;
					try{data=eval('('+sText+')');}catch(ex){};
					if(!data.err){
						iattachMp3(data.msg.fid,data.msg.localname);
					}else{
						alert(data.err);	
					}
				});
				upload.start();
				$('#uploading').show();
			}
			else alert('请上传'+sExt+'文件');
		});
		
		 	var jUpload=$('#upload_photo input'),$uploading=$('#upload_photo span');
		jUpload.mousedown(function(){textbody.saveBookmark();}).change(function(){
			var $this=$(this),sExt=$this.attr('ext'),$prev=$this.prev();
			if($this.val().match(new RegExp('\.('+sExt.replace(/,/g,'|')+')$','i'))){
				var upload=new textbody.html4Upload(this,urlpath+'/index.php?c=user&a=upavatar',function(sText){

					var data=Object,bOK=false;
				
					try{data=eval('('+sText+')');}catch(ex){alert(sText)};
					if(!data.err){
						textbody.loadBookmark();
					$uploading.html('已完成');
						tipok('头像上传完成');
						setTimeout(function(){window.location.reload()},2000);
					
					
					}else{
						alert(data.err);	
					}
				});
				upload.start();
				$uploading.show();
				$uploading.html('loading...');
			}
			else alert('请上传'+sExt+'文件');
		});
		
	   var qsearch = '添加标签,写一个回车一下'
	   if($('#post-tag-input').val() == ''){$('#post-tag-input').val(qsearch);}
	   $('#post-tag-input').click(function(){if($('#post-tag-input').val() == qsearch){$('#post-tag-input').val('');}})
	   $('#post-tag-input').blur(function(){
	
		if( $('#post-tag-input').val() == qsearch || $('#post-tag-input').val() == ''){ $('#post-tag-input').val(qsearch);}else{
			var tags = $('#post-tag-input').val();
			$('#post-tag-list').append('<li tag="'+tags+'"><span>'+tags+'</span><a href="javascript:;" onclick="remTags(this)" title="删除">x</a></li>');
			$('#post-tag-input').val('');} })
		
		$('.globox .trg:even').addClass("alt-row"); 
		

	   
	   $('#preview').click(function(){
			textbody.exec('Preview');			  
		});
	    $('#cancel').click(function(){
			window.history.go(-1);			  
		});

	   $('#draft').click(function(){
			$('#blog-open').val(0);
			if($('#textarea').val() == ''){$.dialog({icon: 'alert', content: '内容不能为空喔',time:2,fixed:true});return false;}
			$('#form1').submit();
		});	

		
		$('#post-tag-input').bind('keyup', function(event){
		   if (event.keyCode=="13"){
				var tags = $('#post-tag-input').val();
			if(tags != '')
			$('#post-tag-list').append('<li tag="'+tags+'"><span>'+tags+'</span><a href="javascript:;" onclick="remTags(this)" title="删除">x</a></li>');
			$('#post-tag-input').val('');
		   }
		});

		
		/*保存个人资料修*/
		$('#submit_baseinfo').click(function(){
				var niname = $('#niname').val();
				var domain = $('#domain').val();
				var signss = $('#sign').val();
				var m_reps  = $('#m_rep').val();
				var m_fows  = $('#m_fow').val();
				var m_pms   = $('#m_pm').val();
				
			
				var tag_str='';
				$('#post-tag2 li').each(function(){  
				tag_str  += $(this).attr('tag') + ',';
			})
			 chks = /^[a-zA-Z]{1}([a-zA-Z0-9]|[._]){1,15}$/;
			if(!chks.exec(domain)){ tips('个性域名不符合要求'); return false;}
			$('#tag').val(tag_str); //写入标签
			
			$('#userSetting').submit();
			
			$('#pb-submiting-tip,#submit_baseinfo,#chgpwd,#cancel').toggle();
			/*
			$.post($('#submit_baseinfo').attr('submiturl'),{'niname':niname,'domain':domain,'sign':signss,'tag':tag_str,'m_rep':m_reps,'m_fow':m_fows,'m_pm':m_pms},function(result){ 
				$('#pb-submiting-tip,#submit_baseinfo,#chgpwd,#cancel').toggle();
				$.dialog({id:'alerts',icon: 'face-smile', content: result,time:2});							
			})*/

		});


	   

		/*修改密码弹出框*/
		 $('#chgpwd').click(function(){
			var dls = $.dialog({
					 content:document.getElementById('pwd_wrap'),
					 lock:true,
					 title:'修改密码',
					 
					 button:[{name: '保存修改', callback: function (){
															var pwd = $('#pwd'); var pwd1 = $('#pwd1'); var pwd2 = $('#pwd2');
															if(pwd.val() == ''){pwd.focus();return false;}
															if(pwd1.val() == ''){pwd1.focus();return false;}
															if(pwd2.val() == ''){pwd2.focus();return false;}
															$('#loadings').toggle();
															this.button({name: '保存修改',disabled: true});
															this.button({name: '取消',disabled: true});
															$.post($('#pwd').attr('submiturl'),{'pwd':pwd.val(),'pwd1':pwd1.val(),'pwd2':pwd2.val()},function(result){ 
																$('#loadings').toggle();
																if(result == 'ok')
																{
																	$.dialog({id:'alerts',icon: 'success', content:'密码成功修改,下次登录不要忘记使用新密码',time:3});
																	dls.close();
																}else{
																	
																	$.dialog({id:'alerts',icon: 'alert', content: result,time:2});
																}
																
															dls.button({name: '保存修改',disabled: false});
															dls.button({name: '取消',disabled: false});
																						
															})
															
															return false;	
														}},
							 {name: '取消'}] ,
					
					noFn:true
			  });
		});	
		 
		 	
	   
	   /*发布text*/
	   $('#submit').click(function(){
			var title = $('#pb-text-title').val(); 
			var text = $('#textarea').val();
			if(text == ''){tips('内容不能为空喔'); $('#textarea').focus();return false}
			if(!setTags()){ tips('标签至少要写一个~回车确定标签');return false;	}
			$('#submit,#draft,#preview,#cancel,#pb-submiting-tip').toggle();
			$('#form1').submit();
		});	
	   
	     /*发布music*/
	   $('#submit_music').click(function(){
			var umus = '';//获取发布音乐字符串
			$('#musicList .list').each(function(){ umus  += $(this).attr('type') +'|'+ $(this).attr('img') +'|'+ $(this).attr('pid') +'|'+$(this).find('input').val() +'|'+ $(this).attr('url') +'[YB]';  }) //获取音乐字串
			if(!setTags()){ tips('标签至少要写一个~回车确定标签');return false;	}
			
			if($('#useedit').val() == 1)
			{
				
				$.dialog({content:'您确认使用编辑器中的媒体作为最终发布的内容吗？',lock:true,yesFn:function(){ 
					
						$('#urlmusic').val(umus); //写入数据
						$('#submit_music,#draft,#preview,#cancel,#pb-submiting-tip').toggle();
						$('#form1').submit();
		
								   
				},noFn:true});
				
			}else{
					if(umus ==''){ tips('请添加一个网络音乐或者上传音乐');return false;}
				
						$('#urlmusic').val(umus); //写入数据
						$('#submit_music,#draft,#preview,#cancel,#pb-submiting-tip').toggle();
						$('#form1').submit();
			}
			
			
		
			//alert(umus);return false;
		
		});	
	   
	      /*发布image*/
	   $('#submit_image').click(function(){
			var umus = '';//获取发布音乐字符串
			$('#uploadArea div').each(function(){ umus  += 1}) //获取音乐字串
			if(umus ==''){ tips('请上传至少一张图片');return false;}
			if(!setTags()){ tips('标签至少要写一个~');return false;	}
			$('#urlmusic').val(umus); //写入数据
			$('#submit_image,#draft,#preview,#cancel,#pb-submiting-tip').toggle();
			$('#form1').submit();
		});	
	   
	      /*发布video*/
	   $('#submit_video').click(function(){
			var umus = '';//获取发布音乐字符串
				$('#musicList .list').each(function(){ umus  += $(this).attr('type') +'|'+ $(this).attr('img') +'|'+ $(this).attr('pid') +'|'+$(this).find('input').val() +'|'+ $(this).attr('url') +'[YB]';  }) //获取音乐字串
			if(umus ==''){ tips('请添加一个网络视频,并点击保存');return false;}
			//alert(umus);return false;
			if(!setTags()){ tips('标签至少要写一个');return false;	}
			$('#urlmusic').val(umus); //写入数据
			$('#submit_music,#draft,#preview,#cancel,#pb-submiting-tip').toggle();
			$('#form1').submit();
		});	
		
		   /*发布product*/
	   $('#submit_product').click(function(){
			var umus = '';//获取发产品字符串
				$('#musicList .list').each(function(){ umus  += $(this).attr('type') +'|'+ $(this).attr('img') +'|'+ $(this).attr('title') + '|' + $(this).attr('price') +'|'+$(this).attr('count') +'|'+ $(this).attr('url') +'[YB]';  }) //获取音乐字串
			if(umus ==''){ tips('请添加一个宝贝视频,并点击保存');return false;}
			//alert(umus);return false;
			if(!setTags()){ tips('标签至少要写一个');return false;	}
			$('#urlmusic').val(umus); //写入数据
			$('#submit_music,#draft,#preview,#cancel,#pb-submiting-tip').toggle();
			$('#form1').submit();
		});	
	   
	   
		
});


function postoff()
{
$('#pb-submiting-tip,#submit_baseinfo,#chgpwd,#cancel').toggle();	
}

function setTags()
{
	var tag_str = ''; 
	$('#post-tag-list li').each(function(){  	tag_str  += $(this).attr('tag') + ',';})
	$('#blog-tags').val(tag_str); //写入标签
	if($('#blog-tags').val() == ''){return false}else{return true}
}

/*处理音乐模型需要的方法*/

/*网络音乐和编辑器切换*/
function SelectLink()
{
	 $('#musicFrom').show();
	 $('#musicUpload').hide();
	 $('#useedit').val(0);
	 $('#mountchange ul li').removeClass('curr');
	 $('#url_link').addClass('curr');
}
function SelectUpload(that){
	 $('#musicFrom').hide();
	 $('#musicUpload').show();
	 $('#useedit').val(0)
	 $('#mountchange ul li').removeClass('curr');
	 $('#url_upload').addClass('curr');
}


/*判断添加网络音乐的mouseover事件*/
function musicMouse(thisa){ if($(thisa).val() == 'http://' || $(thisa).val() == '介绍(选填)'){$(thisa).val('');}	}
/*判断添加网络音乐的mouseout的事件*/
function musicMosout(thisa,t)
{
	if($(thisa).val() == '' && t=='u'){$(thisa).val('http://');}
	if($(thisa).val() == '' && t=='c'){$(thisa).val('介绍(选填)');}
}

/*保存一个条目*/
function saveMusicList(url)
{
	var url = $('#musicurl').val();
	if(url == 'http://'){ tips('请填写一个引用地址');	return false;}
	
	$("#musicFrom").disable();$("#urlParseLoading").val('正在解析...');
	$.post(urlpath+'/index.php?c=add&a=links',{'url':url},function(result){ 
																	 // alert(result);
		$("#musicFrom").enable();$("#urlParseLoading").val('添加地址');
		var data = eval("(" + result + ")");
		if(data.error != undefined){ tips(data.error);return false;}
		desc = data.title;
		var html = '<div class="list" type="'+data.type+'" pid="'+data.id+'" img="'+data.img+'" url="'+url+'"> <div class="uri">已添加：'+url+'</div>'+
			'<input type="text" name="musicList['+data.id+']" value="'+desc+'" />'+
			'<a href="javascript:void(0)" onclick="musicDItem(this)">移除</a> </div>';
		$('#musicList').prepend(html);
		$('#pb-text-title').val(desc);
		$('#musicurl').val('http://');
	})
}

/*保存一个条目*/
function saveProductList(url)
{
	var url = $('#musicurl').val();
	if(url == 'http://'){ tips('请填写一个引用地址');	return false;}
	
	$("#musicFrom").disable();$("#urlParseLoading").val('正在解析...');
	$.post(urlpath+'/index.php?c=add&a=shops',{'url':url},function(result){ 
																	  //alert(result);
		$("#musicFrom").enable();$("#urlParseLoading").val('添加地址');
		var data = eval("(" + result + ")");
		if(data.error != undefined){ tips(data.error);return false;}
		desc = data.title;
		var html = '<div class="list" type="'+data.type+'" title="'+data.title+'" price="'+data.price+'" count="'+data.count+'" img="'+data.img+'" url="'+url+'"> <div class="uri">已添加：'+url+'</div>'+
			'<input type="text" name="musicList['+data.url+']" value="'+desc+'" />'+
			'<a href="javascript:void(0)" onclick="musicDItem(this)">移除</a> </div>';
		$('#musicList').prepend(html);
		$('#pb-text-title').val(desc);
		$('#musicurl').val('http://');
	})
}





/*删除音乐发布的一个条目 DOM*/
function musicDItem(that){$(that).parent().remove();}

/*添加MP3类型媒体 如果localmusic 存在 则说明是在音乐模型*/
function iattachMMouse(that,id)
{
	if(id == 0){if($(that).val() == '描述'){$(that).val('');}}
	if(id == 1){if($(that).val() == ''){$(that).val('描述');}}
}


/*remove附件*/
function removeIattachMp3(that,id)
{
	$(that).parent().parent().remove();
	$('#attach_'+id).show();
}


/*音乐模型独立体结束*/
function iattachMp3(id,name)
{
	if($('#blog-types').val() == 2)
	{
		  var html = '<div class="list" type="local" pid="'+id+'" img="0"><div class="uri">已添加：来自本地音乐</div>'+
					'<div><input type="text" name="localMusic['+id+']" value="'+name+'" />'+
					'<a href="javascript:void(0)" onclick="musicDItem(this)">移除</a></div> </div>';
		$('#musicList').prepend(html); $('#attach_'+id).hide();
	}
}

/*音乐模型共同体以及全部结束*/

function iattachBigImg(x)
{
	var x = x.split('|');
	if($('#blog-types').val() == 1){$('#blog-attach').val(x[1]);}
	textbody.pasteHTML('<a href="'+x[0]+'" target="_blank"><img src="'+x[1]+'" alt="" class="feedimg"/></a>') 
}
function iattachImg(x)
{
	if($('#blog-types').val() == 1){$('#blog-attach').val(x);}
	textbody.pasteHTML('<img src="'+x+'" alt="" class="feedimg"/>') 
}

/*删除附件*/
function delAttach(id)
{
	$.dialog({content:'确认删除附件？',lock:true,yesFn:function(){ 
		$.post(urlpath+'/index.php?c=add&a=delattach',{'id':id},function(result){ 
				if(result == 'ok')
				{
					$('#attach_'+id).hide();tips('已删除');
				}else{
					tips('请稍后再试');
				}
			})			   
	},noFn:true});
}


/*删除附件 图片模块*/
function delAttachIMAGE(id)
{
	$.dialog({content:'确认删除附件？',lock:true,yesFn:function(){ 
		$.post(urlpath+'/index.php?c=add&a=delattach',{'id':id},function(result){ 
				if(result == 'ok')
				{
					$('#attach_'+id).remove();
				}else{
					tips('请稍后再试');
				}
			})			   
	},noFn:true});
}


/*删除tag*/
function remTags(x)
{
	$(x).parent().remove();
}
/*从推荐列表选择tag*/
function tuiTag(x,y)
{
	$('#post-tag-list').append('<li tag="'+x+'"><span>'+x+'</span><a href="javascript:;" onclick="remTags(this)" title="删除">x</a></li>');
	$(y).parent().remove();
}



/*网编辑器插入媒体*/
function iattach(x,y)
{
	var x = x.split('|');
	if(x[0] == 'img')
	{
		if(x[2] == undefined) //如果不存在缩略图
		{
			parent.textbody.pasteHTML('<img src="'+x[1]+'" />');	
		}else{
			parent.textbody.pasteHTML('<a href="'+x[1]+'" target="_blank"><img src="'+x[2]+'" alt="" /></a>') 
		}
	}else if(x[0] == 'mp3' || x[0] == 'mid' || x[0] == 'midi' || x[0] == 'wma' ){
		parent.textbody.pasteHTML('[music]'+x[1]+x[2]+'[/muisc]');	
	}else{
		parent.textbody.pasteHTML('<a href="'+x[2]+'">'+x[1]+'</a>');	
	}
}