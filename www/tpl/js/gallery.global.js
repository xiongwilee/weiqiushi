// JavaScript Document
	hs.lang.loadingText = '请稍候...';  
	hs.lang.loadingTitle = '关闭';  
	hs.lang.focusTitle = 'Click to bring to front';  
	hs.lang.fullExpandTitle = '实际大小';  
	hs.lang.creditsText = 'Powered by <i>weiqiushi.com</i>';  
	hs.lang.creditsTitle = '';  
	hs.lang.previousText = '上一张';  
	hs.lang.nextText = '下一张';   
	hs.lang.moveText = '移动';  
	hs.lang.closeText = '关闭';   
	hs.lang.closeTitle = '关闭 (esc键)';   
	hs.lang.resizeTitle = '还原';  
	hs.lang.playText = '开始';  
	hs.lang.playTitle = '幻灯片播放(空格键)';  
	hs.lang.pauseText = '暂停';  
	hs.lang.pauseTitle = 'Pause slideshow (spacebar)';  
	hs.lang.previousTitle = '上一张 (←键)';  
	hs.lang.nextTitle = '下一张 (→键)';  
	hs.lang.moveTitle = '移动';  
	hs.lang.fullExpandText = '满屏';  
	hs.lang.number= '第 %1 张/共 %2 张';  
	hs.lang.restoreTitle = '点击关闭, 点击并拖动可移动图片';  
	hs.creditsHref = 'http://weiqiushi.com';  
	
	try{
		if(tplpath){hs.graphicsDir = tplpath+ 'image/gallery.show/';}
		}catch(exception){
			hs.graphicsDir ='tpl/image/gallery.show/';
	}
	

	hs.align = 'center';
	hs.transitions = ['expand', 'crossfade'];
	hs.outlineType = 'rounded-white';
	hs.fadeInOut = true;
	hs.addSlideshow({
		interval: 5000,
		repeat: false,
		useControls: true,
		fixedControls: 'fit',
		overlayOptions: {
			opacity: 0.75,
			position: 'bottom center',
			hideOnMouseOut: true
		}
	});



		/*
		hs.graphicsDir = 'tpl/image/gallery.show/';
		hs.align = 'center';
		hs.transitions = ['expand', 'crossfade'];
		hs.fadeInOut = true;
		hs.dimmingOpacity = 0.8;
		hs.outlineType = 'rounded-white';
		hs.captionEval = 'this.thumb.alt';
		hs.marginBottom = 105; // make room for the thumbstrip and the controls
		hs.numberPosition = 'caption';
		
		// Add the slideshow providing the controlbar and the thumbstrip
		hs.addSlideshow({
			//slideshowGroup: 'group1',
			interval: 5000,
			repeat: false,
			useControls: true,
			overlayOptions: {
				className: 'text-controls',
				position: 'bottom center',
				relativeTo: 'viewport',
				offsetY: -60
			},
			thumbstrip: {
				position: 'bottom center',
				mode: 'horizontal',
				relativeTo: 'viewport'
			}
		});
		*/
		
		
		
	/* 显示方式1  黑遮罩，图片弹出 全屏
	hs.graphicsDir = 'tpl/image/gallery.show/';
	hs.align = 'center';
	hs.transitions = ['expand', 'crossfade'];
	hs.wrapperClassName = 'dark borderless floating-caption';
	hs.headingEval = 'this.thumb.alt';
	hs.fadeInOut = true;
	hs.dimmingOpacity = .75;

	// Add the controlbar
	if (hs.addSlideshow) hs.addSlideshow({
		//slideshowGroup: 'group1',
		interval: 5000,
		repeat: false,
		useControls: true,
		fixedControls: 'fit',
		overlayOptions: {
			opacity: .6,
			position: 'bottom center',
			hideOnMouseOut: true
		}
	});
	*/
	
	
	/*
	hs.graphicsDir = 'tpl/image/gallery.show/';
	hs.align = 'center';
	hs.transitions = ['expand', 'crossfade'];
	hs.outlineType = 'rounded-white';
	hs.wrapperClassName = 'controls-in-heading';
	hs.fadeInOut = true;
	//hs.dimmingOpacity = 0.75;
 
	// Add the controlbar
	if (hs.addSlideshow) hs.addSlideshow({
		//slideshowGroup: 'group1',
		interval: 5000,
		repeat: false,
		useControls: true,
		fixedControls: false,
		overlayOptions: {
			opacity: 1,
			position: 'top right',
			hideOnMouseOut: false
		}
	});
	*/
	
	
	/* 显示方式2  无遮罩，图片弹出 全屏
	hs.graphicsDir = 'tpl/image/gallery.show/';
	hs.align = 'center';
	hs.transitions = ['expand', 'crossfade'];
	hs.outlineType = 'rounded-white';
	hs.wrapperClassName = 'controls-in-heading';
	hs.fadeInOut = true;

 
	// Add the controlbar
	if (hs.addSlideshow) hs.addSlideshow({
		//slideshowGroup: 'group1',
		interval: 5000,
		repeat: false,
		useControls: true,
		fixedControls: false,
		overlayOptions: {
			opacity: 1,
			position: 'top right',
			hideOnMouseOut: false
		}
	});
	*/
	
	
	/* 显示方式3  无遮罩，图片弹出 右侧有 图片列表 缩放
	hs.graphicsDir = 'tpl/image/gallery.show/';
	hs.align = 'center';
	hs.transitions = ['expand', 'crossfade'];
	hs.fadeInOut = true;
	hs.outlineType = 'rounded-white';
	hs.headingEval = 'this.thumb.alt';
	hs.numberPosition = 'heading';
	hs.useBox = true;
	hs.width = 600;
	hs.height = 400;
	hs.showCredits = false;
	//hs.dimmingOpacity = 0.8;

	// Add the slideshow providing the controlbar and the thumbstrip
	hs.addSlideshow({
		//slideshowGroup: 'group1',
		interval: 5000,
		repeat: false,
		useControls: true,
		fixedControls: 'fit',
		overlayOptions: {
			position: 'top right',
			offsetX: 200,
			offsetY: -65
		},
		thumbstrip: {
			position: 'rightpanel',
			mode: 'float',
			relativeTo: 'expander',
			width: '210px'
		}
	});

	// Make all images animate to the one visible thumbnail
	var miniGalleryOptions1 = {
		thumbnailId: 'thumb1'
	}
	*/
	