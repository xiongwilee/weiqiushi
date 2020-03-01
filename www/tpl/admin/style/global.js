
$(document).ready(function(){
	$('input[type=submit]').addClass('submit');
	$('input[type=text]').addClass('textipt');
	$(".table tr:odd").addClass('tableven');	
	$(".table2 tr:even").addClass('tableven');	
	$(".table2 tr").hover(function(){
	  	  $(this).addClass('hover')
	  },function(){
		  $(this).removeClass('hover')
	});
	
});

function showprccmsg(type)
{
	if(type == 'ok') { $.dialog.tips('成功执行操作');}
	if(type == 'err') { $.dialog.tips('执行操作失败');}
}
	

/*禁止访问*/
function nologin(id)
{
	$.post(urlpath+'/index.php?c=admin&a=user&lockuser='+id,function(){ window.location.reload(); })
}

/*重设密码*/
function resetpwd(uid,name)
{
	$.dialog.prompt('请给'+name+'输入新密码', function (val) {
		 if(val != ''){ $.post(urlpath+'/index.php?c=admin&a=user&resetpwd='+uid+'&pwd='+val,function(rs){ alert(rs)})  }
	});
}
/*删除系统标签*/
function delsystag(cid)
{
	$.dialog.confirm('你确定要删除这个系统标签？', function () {
		 $.post(urlpath+'/index.php?c=admin&a=tag&sysdel='+cid,function(rs){$('#systag_'+cid).hide('fast');})
	});
}
/*删除用户标签*/
function delusertag(tid)
{
	$.dialog.confirm('你确定要删除这个用户标签？', function () {
		 $.post(urlpath+'/index.php?c=admin&a=tag&userdel='+tid,function(rs){$('#usertag_'+tid).hide('fast');})
	});
}

/*优化表*/
function tableOp(tab)
{
	 $.post(urlpath+'/index.php?c=admin&a=database&dbac=op&tabl='+tab,function(rs){window.location.reload();})
}

/*修复*/
function tableRep(tab,msg)
{
	alert('表故障原因'+msg);
	 $.post(urlpath+'/index.php?c=admin&a=database&dbac=rep&tabl='+tab,function(rs){window.location.reload();})
}

function unInstallTheme(id)
{
	$.dialog.confirm('你确定要卸载这个主题吗？', function () {
		window.location.href=urlpath+'/index.php?c=admin&a=theme&m=uninstall&id='+id;
	});
}

function outputTab(tab)
{
	window.location.href=urlpath+'/index.php?c=admin&a=database&outab='+tab;
}

function databseOut(url)
{
	$('#download').html('执行中...').attr('disabled',true);
	window.location.href=url;
}


function checkAll(checkall)
{
	$('.'+checkall).attr('checked','checked');
}
