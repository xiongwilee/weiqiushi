art.dialog.fn.shake = function (){
    var style = this.DOM.wrap[0].style,
        p = [4, 8, 4, 0, -4, -8, -4, 0],
        fx = function (a) {
            style.marginLeft = a.shift() + 'px';
            if (a.length > 0) {
                setTimeout(function () {
                    fx(a);
                }, 13);
            } else {
                style.marginLeft = 0;
            };
        };

    fx(p.concat(p.concat(p)));
    return this;
};



(function($){
	// tipWrap: 	提示消息的容器
	// maxNumber: 	最大输入字符
	$.fn.artTxtCount = function(tipWrap, maxNumber){
		var countClass = 'js_txtCount',		// 定义内部容器的CSS类名
			fullClass = 'js_txtFull',		// 定义超出字符的CSS类名
			disabledClass = 'disabled';		// 定义不可用提交按钮CSS类名

		// 统计字数
		var count = function(){
			var btn = $(this).parent().find('.btn'),
				val = $(this).val().length,
				// 是否禁用提交按钮
				disabled = {
					on: function(){
						btn.removeAttr('disabled').removeClass(disabledClass);
					},
					off: function(){
						btn.attr('disabled', 'disabled').addClass(disabledClass);
					}
				};

			if (val == 0) disabled.off();
			if(val <= maxNumber){
				if (val > 0) disabled.on();
				tipWrap.html('\u8FD8\u80FD\u8F93\u5165 ' + (maxNumber - val) + ' \u4E2A\u5B57');
			}else{
				disabled.off();
				tipWrap.html('\u5DF2\u7ECF\u8D85\u51FA ' + (val - maxNumber) + ' \u4E2A\u5B57');
			};

		};
		$(this).bind('keyup change', count);
		return this;
	};
})(jQuery);



$(document).ready(function(){

/*
	(function() {
    var $backToTopTxt = "返回顶部", $backToTopEle = $('<div class="backToTop"></div>').appendTo($("body"))
        .text($backToTopTxt).attr("title", $backToTopTxt).click(function() {
            $("html, body").animate({ scrollTop: 0 }, 500);
    }), $backToTopFun = function() {
        var st = $(document).scrollTop(), winh = $(window).height();
        (st > 0)? $backToTopEle.show(): $backToTopEle.hide();
        //IE6下的定位
        if (!window.XMLHttpRequest) {
            $backToTopEle.css("top", st + winh - 166);
        }
    };
    $(window).bind("scroll", $backToTopFun);
    $(function() { $backToTopFun(); });
})();
*/

$('.musicInfo').hover(function(){
		$(this).toggleClass('musicInfoCurr');
	},function(){
		$(this).toggleClass('musicInfoCurr');
})



		if($('img').attr('alt') == ''){$('img').attr('alt',' ');}
		$('aside nav#menu li').hover(function(){ $(this).addClass('hover'); },function(){  $(this).removeClass('hover'); });

		$('#search .searchipt').click(function(){   if($(this).val() == '搜索标签,发现兴趣') {$(this).val('')}  }).blur(function(){ if($(this).val() == '') {$(this).val('搜索标签,发现兴趣')} });
		$('#ats').html('@'); //关于我们插入@符号

});

var  globalcount;	 //feedtolbar state
function feedToolBar(id)
{

	$(document).ready(function(){
		 $(window).bind("scroll", function(event){
		   var fold = $(window).height() + $(window).scrollTop();

		   if( fold >= $('#'+id).offset().top-20){
			p = parseInt($('#'+id).attr('page'));
			nextpage = p+1;
			url =$('#'+id).attr('query');

			maxpage = parseInt($('#'+id).attr('max'));
			if(globalcount == 1){return false;}//如果进入队列的就跳出

			if(p >= maxpage)
			{
				$('#'+id).html('<a href="javascript:void(0)" onclick="continueShow(\''+id+'\')"><img src="tpl/image/hand.gif" class="loading"/>点击查看更多...</a>');
			}else{
					globalcount = 1; //已经进入队列了
					$('#'+id).html('<img src="tpl/image/loading.gif" class="loading"/><span>请稍等</span>');
					$.post(url,{page:p},function(rs){

					if(rs != '')
					{
						area = $('#'+id).attr('area');
						$('#'+area).append(rs);
						$('#'+id).attr('page',nextpage);
						globalcount = 0; //出队列

					}else{
						$('#'+id).html('没有更多了');
						globalcount = 1; //出队列
					}

				 })

			}



		   }
		 });
	});
}


function continueShow(id)
{

	p = parseInt($('#'+id).attr('page'));
	url =$('#'+id).attr('query');

	nextpage = p+1;
	$('#'+id).html('<img src="tpl/image/loading.gif" class="loading"/><span>请稍等</span>');
	$.post(url,{page:p},function(rs){
				if(rs.length < 10)
				{
					 $('#'+id).html('没有更多了');
					 globalcount = 1; //出队列
				}else{
					area = $('#'+id).attr('area');
					$('#'+area).append(rs);
					$('#'+id).attr('page',nextpage);
					$('#'+id).html('<a href="javascript:void(0)" onclick="continueShow(\''+id+'\')"><img src="tpl/image/hand.gif" class="loading"/>点击查看更多...</a>');
				}

	})
}




function searchTag()
{
	var tag = $('#search .ipt').val();
	if(tag == '搜索标签,发现兴趣' || tag == ''){tiper('请填写标签');}else{
		$('#search .btn').addClass('loading');
		window.location.href=urlpath+'/index.php?c=blog&a=tag&tag='+tag;
	}

}

/*取消链接*/
function cancelConnect(url)
{
	$.post(url,function(rs){
			window.location.reload();
	})

}
/*删除博客*/
function delblogs(id,url)
{
	$.dialog({content:'确认删除这篇文章？',lock:true,yesFn:function(){
		//window.location.href=url;
		$.post(url,function(result){
			if(result == 'ok')
			{
				tipok('已删除');
				$('#blog_'+id).hide('slow');
			}else{
				tiper(result);
			}
		});
	},noFn:true});
}

function delrep(id,url)
{

	$.dialog({content:'确认删除本回复？',lock:true,yesFn:function(){
			//window.location.href=url;
			$.post(url,function(result){
				if(result == 'ok')
				{
					tipok('已删除');
					$('#feed_'+id).hide('slow');
				}else{
					tiper(result);
				}
			});
		},noFn:true});
}


/*发送站内信*/
function sendpm(uid,info)
{
	if(info ==undefined){info=''}
	$.dialog.open(urlpath+'/index.php?c=user&a=postpm&uid='+uid+'&info='+info, {id:'sendmail_box',fixed:true,lock:true,background:'#CCC',opacity:'0.4'});
}

//默认父框架刷新网页 为1 关闭父页面
function doPmSubmit(call)
{

	var u = $('#postpm').find('input[name=uid]').val();
	var i = $('#postpm').find('textarea').val();
	if(i == ''){tiper('请填写内容');return false;}
	$('#submit_button').hide();
	$('#submit_tip').show();
	$.post(urlpath+'/index.php?c=user&a=postpm&send=true',{uid:u,info:i},function(rs){

		if(rs == -1){alert('发送频率限制,请30秒后再试'); if(call ==1){art.dialog.open.api.close();}}
		if(rs == -2){alert('自己不能给自己发送');}
		if(rs == 0){alert('内容没有填写');}

		if(rs == 1){
			art.dialog({ content: '发送成功了',time:2,	closeFn:
			 function(){
					if(call ==1){art.dialog.open.api.close();}else{window.location.reload();}
				 }
			});
		}else{
			$('#submit_button').show();
			$('#submit_tip').hide();
		}


	})
}



/*删除通知*/
function delnotice(id,url)
{
	art.dialog.confirm('删除后对方也无法查看,确定吗?', function(){
		$.post(url,function(result){ if(result == 1){ $('#notice_'+id).hide('slow');}else{ tiper(result); }		});
	})

}

/*已读通知*/
function isreadnotice(id,url)
{
	$.post(url,function(result){
		if(result == 1)
		{
			$('#notice_'+id).hide('slow');
		}else{
			tiper(result);
		}
	});
}
/*显示首页评论框*/
function indexPostTab(type,id,url)
{
	if(type == 'reprint')
	{
		$('#comment_'+id).hide();
		$('#reprint_'+id).toggle().toggleClass('current');
	}else if(type =='comment'){
		$('#replyTo_'+id).val('');
		$('#comment_'+id).toggle();
		$('#feeds_'+id).hide();
		$('#replyInput_'+id).artTxtCount($('#replyInput_lengthinf_'+id), 100);
		$('#replyTo_'+id).val();

		$('#commentList_'+id).html('loading...');
		$.post(url,{bid:id},function(result){
				$('#commentList_'+id).html(result);
				$('#replyInput_lengthinf_'+id).html('');

		})
	}else if(type =='feeds'){
		$('#comment_'+id).hide();
		$('#feeds_'+id).toggle();
		$('#feedList_'+id).html('loading...');
		$.post(url,{bid:id},function(result){
				$('#feedList_'+id).html(result);

		})
	}
}

/*ajax page*/
function runpage(url,id)
{
	$('#'+id).html('<p id="upstates">loading......</p>');
	$.post(url,function(result){
				$('#'+id).html(result);
			$('#'+id).find('#upstates').remove();
		})
}
/*设置文本框的回复*/
function replays(id,user,uid)
{
	$('#replyInput_'+id).focus().val('@'+user+':');
	$('#replyTo_'+id).val(uid);

}
/*提交文本框的回复*/
function sendReplay(id,url)
{
	var ipt = $('#replyInput_'+id).val();
	if(ipt == ''){tiper('内容不能为空喔');return false;}

	  $.post(url,{inputs:ipt,bid:id,repuid:$('#replyTo_'+id).val()},function(result){
		if(result ==1)
		{
			tipok('回复成功');
		}else{
			tiper(result);
		}
			$('#comment_'+id).hide();
			$('#replyInput_'+id).val('');
			$('#comment_btn_'+id).removeClass('current');
	  });
}

/*加喜欢*/
function likes(id,url)
{
	 $.post(url,{bid:id},function(result){
		if(result ==1) { tipok('您已经喜欢'); }else if(result ==2){ tipok('您取消喜欢'); }else{ tiper(result); }
	  });
}

/*喜欢或不喜欢*/
function dolike(id,dolike,url)
{
	if(dolike=='dolike'){ var dolike = '1';}
	else if(dolike=='unlike'){ var dolike = '2';}
	else { var dolike = '0';}
	$.post(url,{bid:id,dolike:dolike},function(result){
		if(result ==1) {
			tipok('您已经喜欢');
			$("#blog_"+id+" .dolike" ).addClass("dolikeyes");
			var i=$( "#blog_"+id+" .dolike" ).html();
			var i=parseInt(i);
			$("#blog_"+id+" .dolike" ).html( i+1 );
		}else if(result ==2){
			tipok('您不喜欢');
			$("#blog_"+id+" .unlike" ).addClass("unlikeyes");
		}else if(result ==3){
			tipok('您已经喜欢过了吧？');
		}else{ tiper(result); }
	  });
}

/*加关注*/
function follows(uid,url)
{
	$.post(url,{uid:uid},function(result){
		if(result ==1) {$('#follow_'+uid).html('已关注'); tipok('成功加为关注'); }else if(result ==2){ tipok('您已经取消了关注'); $('#myfollow_'+uid).hide(); }else{ tiper(result); }
	  });

}
/*加标签*/
function addMytag(tagName,url)
{
	$.post(url,{tag:tagName},function(result){
		if(result ==1) { tipok('已经添加该标签');$('#flowTag').html('取消标签关注'); }else if(result ==2){ tipok('已经取消该标签');$('#flowTag').html('添加标签关注'); }else{ tiper(result); }
	  });

}


function reinitIframe(x){
	var iframe = document.getElementById(x);
	try{
		var bHeight = iframe.contentWindow.document.body.scrollHeight;
		var dHeight = iframe.contentWindow.document.documentElement.scrollHeight;
		var height = Math.max(bHeight, dHeight);
		iframe.height =  height;

	}catch (ex){}
}



function opennotice()
{
	var msg = document.getElementById('message');
	$.dialog({content:msg});
}


/*清除通知*/
function repto(url)
{
	art.dialog.confirm('确定要转载吗?', function(){
		window.location.href = url;
	})
}


/*清除通知*/
function noticeclear(sysid)
{

	art.dialog.confirm('都知道了吗?', function(){
		$.post(urlpath+'/index.php?c=user&a=mynotice&clears='+sysid,function(rs){
			window.location.reload();
		})
	})
}

/*删除通知*/
function noticedel(sysid)
{
	art.dialog.confirm('要删掉吗?', function(){
		$.post(urlpath+'/index.php?c=user&a=mynotice&dels='+sysid,function(rs){
			window.location.reload();
		})
	})

}

function OMP(url,that)
{

	var prgm = '<object width="500" height="385"><param name="allowscriptaccess" value="always"></param>'+
			  	 '<param name="wmode" value="Opaque"></param><param name="movie" value="'+url+'"></param>'+
			  	 '<embed src="'+url+'" width="500" height="385" allowscriptaccess="always" wmode="window"  type="application/x-shockwave-flash"></embed>'+
				'</object>';
  $(that).parent().find('div .playbox').html(prgm);
  $(that).parent().parent().find('.feed_content').addClass('feed_content_h');
  $(that).parent().find('div').show();
  $(that).hide();
}

function LMP(that)
{
	$(that).parent().parent().parent().parent().find('.feed_content').removeClass('feed_content_h');//去掉block属性
	$(that).parent().parent().parent().find('a').show().html(); //显示小框
	$(that).parent().parent().hide();
}


function tuijian(url)
{
	$.dialog.open(url, {id:'tuijian',lock:true,fixed:true,background:'#CCC',opacity:'0.4'});
}
function tuijianok()
{

	$.dialog({icon: 'face-smile',id:'tips', content: '推荐成功',time:2,fixed:true,lock:true,closeFn:function(){ parent.window.location.reload();}});

}

function logout(x){art.dialog.confirm('是要退出登陆么?', function(){window.location.href=x})}
function openconnect(url){	$.dialog.open(url, {id:'connect_box', width:600,height:470,lock:true,fixed:true,background:'#CCC',opacity:'0.4'});}
/*短暂提示 global*/
function tips(txt){$.dialog({icon: 'face-sad',id:'tips', content: txt,time:2,fixed:true}).shake();}

/*短暂提示 ok 和err*/
function tipok(txt){$.dialog({icon: 'face-smile',id:'tips', content: txt,time:2,fixed:true});}
function tiper(txt){$.dialog({icon: 'face-sad',id:'tips', content: txt,time:2,fixed:true}).shake();}
/*删除博客*/
function delblog(x,y){ art.dialog.confirm('确定要删除日志#'+x+'?相关附件将会一并删除,且无法恢复', function(){window.location.href=y}) }

function attchManager(url){ logbox = art.dialog.open(url, {id:'attchManager',title: '附件管理器',width:720,height:350}); }




