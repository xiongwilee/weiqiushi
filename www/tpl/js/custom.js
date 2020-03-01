function slideToggle()
{
	$('.allThemes').slideToggle('fast');
}
function setThemeId(url)
{
	$('#previewIframe').attr('src',url);
}

function saveConfig(url)
{
	art.dialog.confirm('确定保存当前设置吗?', function(){
		window.location.href=url
	})
}

function CannlConfig(url)
{
	art.dialog.confirm('您确定要取消?当前装扮将不会保存', function(){
		window.location.href=url
	})
}
function reinitIframe(){
	var iframe = document.getElementById("previewIframe");
	try{
		var bHeight = iframe.contentWindow.document.body.scrollHeight;
		var dHeight = iframe.contentWindow.document.documentElement.scrollHeight;
		var height = Math.max(bHeight, dHeight);
		iframe.height =  height;
	}catch (ex){}
}

function changeupload(id)
{
	$('#'+id+'_input').hide();
	$('#'+id+'_input').val('');
	$('#'+id+'_txt').hide();
	$('#'+id+'_upload').show();
	
}

function customDefault(url)
{
	art.dialog.confirm('您确定要恢复默认装扮?当前装扮将不会保存', function(){
		window.location.href=url
	})

}

$('document').ready(function() {
		// running ExColor
		$('.colorinput').modcoder_excolor();
	});
