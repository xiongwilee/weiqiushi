// login and reg
$(document).ready(function(){
	setTimeout(function(){$('#BalloonB').fadeIn('slow');},800)
	setTimeout(function(){ $('#BalloonA').fadeIn('slow');},1100)
})

function reloadcode(obj,url)
{
	obj.src = url+ '&nowtime=' + new Date().getTime();
}


function checkLogin()
{
	if($('#email').val() == '' || $('#password').val() == ''){ return false;}
	$('.subBtn').addClass('loading');
	return true;
}

function checkReg()
{
	$('.regcurr').addClass('loading');
	$("input[name='do']").attr('disabled', true);
	$('form').submit();

}


var offset = 1508;
var backgroundheight = offset;
function scrollbackground() {
    offset = (offset < 1) ? offset + (backgroundheight - 1) : offset - 1;
    $('#footer').css('background-position', offset + "px");
    setTimeout(function() {
        scrollbackground()
    },
    100)
};
