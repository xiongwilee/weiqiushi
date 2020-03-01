 
 $(document).ready(function(){

	var uploadurl=urlpath+'/index.php?c=add&a=swfupload',ext='图像文件 (*.*)',size=$('#uploadmaxsize').val(),count=$('#uploadcount').val(),useget=0//默认值 
	uploadurl=getQuery('uploadurl')||uploadurl;ext=getQuery('ext')||ext;size=getQuery('size')||size;count=getQuery('count')||count;useget=getQuery('useget')||useget;
	var tmpParams=getQuery('params');
	if(tmpParams)
	{
		try{eval("tmpParams=" + tmpParams);}catch(ex){};
		params=$.extend({},params,tmpParams);
	}
	ext=ext.match(/([^\(]+?)\s*\(\s*([^\)]+?)\s*\)/i);

	swfu = new SWFUpload({
		// Flash组件
		flash_url : urlpath+"/tpl/js/swfupload.swf",
		prevent_swf_caching : false,//是否缓存SWF文件
		// 服务器端
		upload_url: uploadurl,
		file_post_name : "filedata",
		post_params: {'ssid':$('#listArea').attr('ssid'),'bid':$('#listArea').attr('bid')},//随文件上传一同向上传接收程序提交的Post数据
		use_query_string : useget=='1'?true:false,//是否用GET方式发送参数
		// 文件设置
		file_types:"*.jpg;*.png;*.gif;*.bmp",
		file_types_description : ext[1],//文件格式描述
		file_size_limit : size,	// 文件大小限制
		file_upload_limit : count,//上传文件总数
		file_queue_limit:count,//上传队列总数
		custom_settings : {
			bid : $('#listArea').attr('bid'),
			progressTarget : "fsUploadProgress",
			cancelButtonId : "btnCancel"
		},
			
		// 事件处理
		file_queued_handler : fileQueued,//添加成功
		file_queue_error_handler : fileQueueError,//添加失败
		upload_start_handler : uploadStart,//上传开始
		upload_progress_handler : uploadProgress,//上传进度
		upload_error_handler : uploadError,//上传失败
		upload_success_handler : uploadSuccess,//上传成功
		upload_complete_handler : uploadComplete,//上传结束

		// 按钮设置
		button_placeholder_id : "fileButton",
		button_width: 98,
		button_height:33,
		button_window_mode: SWFUpload.WINDOW_MODE.TRANSPARENT,
		button_cursor: SWFUpload.CURSOR.HAND,
		button_image_url : urlpath+"/tpl/image/upload.png",
		// 调试设置
		debug: false
	});


})
 
function getQuery(item){var svalue = location.search.match(new RegExp('[\?\&]' + item + '=([^\&]*)(\&?)','i'));return svalue?decodeURIComponent(svalue[1]):'';}  
 
var swfu,selQueue=[],selectID,arrMsg=[],allSize=0,uploadSize=0;
function removeFile()
{
	var file;
	if(!selectID)return;
	for(var i in selQueue)
	{
		file=selQueue[i];
		if(file.id==selectID)
		{
			selQueue.splice(i,1);
			allSize-=file.size;
			swfu.cancelUpload(file.id);
			$('#'+file.id).remove();
			selectID=null;
			break;
		}
	}
	$('#btnClear').hide();
	//if(selQueue.length==0)$('#controlBtns').hide();
}
function startUploadFiles()
{
	if(swfu.getStats().files_queued>0)
	{
		//$('#controlBtns').hide();
		swfu.startUpload();
	}
	else alert('上传前请先添加文件');
}
function setFileState(fileid,txt)
{
	$('#'+fileid+'_state').text(txt);
}
function fileQueued(file)//队列添加成功
{
	$('#submit_image,#draft,#preview,#cancel').hide();
	$('#pb-submiting-tip').show();
	for(var i in selQueue)if(selQueue[i].name==file.name){swfu.cancelUpload(file.id);return false;}//防止同名文件重复添加
	$('#listBody').append('<tr id="'+file.id+'"><td>'+file.name+'</td><td>'+formatBytes(file.size)+'</td><td id="'+file.id+'_state">就绪</td></tr>');
	//if(selQueue.length==0)$('#controlBtns').show();
	selQueue.push(file);
	allSize+=file.size;
	swfu.startUpload();
	
	
}
function fileQueueError(file, errorCode, message)//队列添加失败
{
	var errorName='';
	switch (errorCode)
	{
		case SWFUpload.QUEUE_ERROR.QUEUE_LIMIT_EXCEEDED:
			errorName = "只能同时上传 "+this.settings.file_upload_limit+" 个文件";
			break;
		case SWFUpload.QUEUE_ERROR.FILE_EXCEEDS_SIZE_LIMIT:
			errorName = "选择的文件超过了当前大小限制："+this.settings.file_size_limit;
			break;
		case SWFUpload.QUEUE_ERROR.ZERO_BYTE_FILE:
			errorName = "零大小文件";
			break;
		case SWFUpload.QUEUE_ERROR.INVALID_FILETYPE:
			errorName = "文件扩展名必需为："+this.settings.file_types_description+" ("+this.settings.file_types+")";
			break;
		default:
			errorName = "未知错误";
			break;
	}
	alert(errorName);
}
function uploadStart(file)//单文件上传开始
{
	setFileState(file.id,'上传中…');
}
function uploadProgress(file, bytesLoaded, bytesTotal)//单文件上传进度
{
	$('#progressArea').show();
	var percent=Math.ceil((uploadSize+bytesLoaded)/allSize*100);
	$('#progressBar span').text(percent+'% ('+formatBytes(uploadSize+bytesLoaded)+' / '+formatBytes(allSize)+')');
	$('#progressBar div').css('width',percent+'%');
}
function upimgclk(that)
{
	if(that.value == '图片说明可选') {that.value=''}
}

function uploadSuccess(file, serverData)//单文件上传成功
{
	var data=Object;
	try{eval("data=" + serverData);}catch(ex){};
	if(data.err!=undefined&&data.msg!=undefined)
	{
		//alert(data.msg.url);
		if(!data.err)
		{
			var urls = data.msg.url.split('||');
			if(urls.length ==2){ var url = 	urls[0]; }else{ var url = urls;	} //如果返回的是带缩略图的就让0进去，否则直接进去
						
			$('#uploadArea').append(' <div id="attach_'+data.msg.fid+'"><img src="'+urlpath+'/'+url+'" width="100" height="100" /><textarea name="localimg['+data.msg.fid+']" onclick="upimgclk(this)">图片说明可选</textarea>'+
									'<a href="javascript:void(0)" onclick="delAttachIMAGE('+data.msg.fid+')" class="delete">remove</a></div>');
			uploadSize+=file.size;
			arrMsg.push(data.msg);
			setFileState(file.id,'上传成功');
			setTimeout(function(){$('#'+file.id).fadeOut('slow')},1000)
		}
		else
		{
			setFileState(file.id,'上传失败');
			alert(data.err);
		}
	}
	else setFileState(file.id,'上传失败！');
}
function uploadError(file, errorCode, message)//单文件上传错误
{
	setFileState(file.id,'上传失败！'+message);
	
}
function uploadComplete(file)//文件上传周期结束
{
	if(swfu.getStats().files_queued>0)swfu.startUpload();
	else uploadAllComplete();
}
function uploadAllComplete()//全部文件上传成功
{
	$('#progressArea').hide(); //全部完毕关闭进度条
	$('#submit_image,#draft,#preview,#cancel,#pb-submiting-tip').toggle();
	//alert(arrMsg);
}
function formatBytes(bytes) {
	var s = ['Byte', 'KB', 'MB', 'GB', 'TB', 'PB'];
	var e = Math.floor(Math.log(bytes)/Math.log(1024));
	return (bytes/Math.pow(1024, Math.floor(e))).toFixed(2)+" "+s[e];
}