//关掉anno公告部分
function closeAnno(){
	$(document).ready(function(){
		$("#anno").hide();
	})
}
//右上角，点击显示用户设置，退出菜单
$(document).ready(function() {
  $('#user_nav').click(function(){
  	$(this).find('ul').slideToggle();//you can give it a speed
  });
  $('#user_nav').live('blur',function(){
  	$(this).find('ul').slideUp("slow");//you can give it a speed
  });
})


//固定在顶部
$(document).ready(function() {
    (function() {
        //settings
        var fadeSpeed = 200, fadeTo = 1, topDistance = 30;
        var topbarME = function() { $('#uberbar').fadeTo(fadeSpeed,1); }, topbarML = function() { $('#uberbar').fadeTo(fadeSpeed,fadeTo); };
        var inside = false;
        //do
        $(window).scroll(function() {
            position = $(window).scrollTop();
            if(position > topDistance && !inside) {
                //add events
                topbarML();
                $('#uberbar').bind('mouseenter',topbarME);
                $('#uberbar').bind('mouseleave',topbarML);
                inside = true;
            }
            else if (position < topDistance){
                topbarME();
                $('#uberbar').unbind('mouseenter',topbarME);
                $('#uberbar').unbind('mouseleave',topbarML);
                inside = false;
            }
        });
    })();
});

//menu
$(document).ready(function(){
  $('li.mainlevel').mousemove(function(){
  $(this).find('ul').slideDown();//you can give it a speed
  });
  $('li.mainlevel').mouseleave(function(){
  $(this).find('ul').slideUp("fast");
  });

});

