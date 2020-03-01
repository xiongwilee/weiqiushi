<?php
/////////////////////////////////////////////////////////////////
//微糗事, Copyright (C)   2011 - 2012  weiqiushi.com
//EMAIL:birthday10241120@qq.com QQ:373071372
//$Id: add.php 40 2011-11-05 16:51:05Z anythink $


class add extends top
{

	 function __construct(){
         parent::__construct();
		 if(!islogin()){prient_jump(spUrl('main'));}

     }

	function index(){
		prient_jump(spUrl('main'));
	}

	/*发布文字模型*/
	public function text()
	{
		if($this->yb['addtext_switch'] == 0){$this->error('没有开放该模型');}
		$this->getCreateBid();
		$this->attach();
		$this->myTagUsually(); //我的常用标签
		$this->display('add_text.html');  //默认发布文字行
	}

	/*发布音乐模型*/
	public function music()
	{
		if($this->yb['addmusic_switch'] == 0){$this->error('没有开放该模型');}
		$this->getCreateBid();
		$this->attach();
		$this->myTagUsually(); //我的常用标签
		$this->display('add_music.html');  //默认发布文字
	}

	/*发布图片模型*/
	public function image()
	{
		if($this->yb['addimg_switch'] == 0){$this->error('没有开放该模型');}
		$this->getCreateBid();
		$this->attach();
		$this->myTagUsually(); //我的常用标签
		$this->display('add_image.html');  //默认发布文字
	}

	/*发布视频模型*/
	public function video()
	{
		if($this->yb['addvideo_switch'] == 0){$this->error('没有开放该模型');}
		$this->getCreateBid();
		$this->attach();
		$this->myTagUsually(); //我的常用标签
		$this->display('add_video.html');  //默认发布文字
	}

	/*发布产品模型*/
	public function product()
	{
		if($this->yb['addbaobei_switch'] == 0){$this->error('没有开放该模型');}
		$this->getCreateBid();
		$this->attach();
		$this->myTagUsually(); //我的常用标签
		$this->display('add_product.html');  //默认发布文字
	}




	public function edit()
	{
		$this->getCreateBid();
		$this->attach(false);
		$this->myTagUsually(); //我的常用标签
		$this->__parse_mytag($this->blog['tag']); //如果是编辑的则推送edit时的标签
		$this->body = split_attribute($this->blog['body']); //获得属性和正文信息


		if($this->blog['type'] == 1) //文字
		{

			$this->display('add_text.html');
		}elseif($this->blog['type'] == 2){  //音乐

			$this->display('add_music.html');
		}elseif($this->blog['type'] == 3){  //照片

			$this->display('add_image.html');
		}elseif($this->blog['type'] == 4){//视频
			$this->display('add_video.html');
		}elseif($this->blog['type'] == 5){//宝贝
			$this->display('add_product.html');
		}else{
			exit('未知数据流');
		}
	}




	//创建一个供发布或者编辑用的
	public function post()
	{
		if($_SESSION['tempid'] == 0){$this->error('丢失临时id');	}
		$one = spClass("db_blog")->findBy('bid',$_SESSION['tempid']);
		//处理转载
		$split_data = split_attribute($one['body']);
		if($split_data['repto']){	$repto = '[repto]'.serialize($split_data['repto']).'[/repto]';	}else{	$repto =  '';}




		if($this->spArgs('blog-types') == 1)
		{
			$this->_localImgParse($this->spArgs('textarea'));  //处理图像资源
			if($this->spArgs('blog-attach') != ''){ $bodypre = '[attribute]'.serialize($this->spArgs('blog-attach')).'[/attribute]'; }	//加入属性关键字
		}



		 //音乐模型 视频模型
		if($this->spArgs('blog-types') == 2 || $this->spArgs('blog-types') == 4 )
		{
			if($this->spArgs('useedit') != 1)//如果有特殊则处理
			{
				if($this->spArgs('localmusicfid') == '' && $this->spArgs('urlmusic') == '') {exit('未完成的内容');}
				if($this->spArgs('urlmusic'))//进行音乐列表的处理
				{
					$music = $this->__loadMusicString($this->spArgs('urlmusic'));
					$music_count = count($music); //总共几首音乐
				}
				$bodypre = '[attribute]'.serialize($music).'[/attribute]';//加入属性关键字
			}

		}

		//图片模型
		if($this->spArgs('blog-types') == 3)
		{

			$image = $this->_imagemodeparse($this->spArgs('localimg')); //处理图片
			if(is_array($image)) { $bodypre = '[attribute]'.serialize($image).'[/attribute]'; } //加入属性关键字
 		}

		//宝贝模型
		if($this->spArgs('blog-types') == 5)
		{
			$music = $this->__loadProductString($this->spArgs('urlmusic'));
			if(is_array($music)) { $bodypre = '[attribute]'.serialize($music).'[/attribute]'; } //加入属性关键字
		}


			$rows = array('title'=>strip_tags($this->spArgs('pb-text-title')),
					      'type' =>$this->spArgs('blog-types'),
					      'top'  =>$this->spArgs('pb-top-post',0),
					      'tag'  =>substr((strip_tags($this->spArgs('blog-tags'))),0,-1),
					      'body'=>$repto.$bodypre.strreplaces($this->spArgs('textarea')),
					      'open'=>$this->spArgs('blog-open'),
					      'anonymous'=>$this->spArgs('pb-anon-post'),
						  'noreply'=>$this->spArgs('pb-nowrite-post',0),
						  'open' =>$this->spArgs('post-privacy-select'),
						  'time' =>time()
			);
		$this->tagCreate(trim($this->spArgs('blog-tags'))); //处理TAG
		if($one['open'] == -1){spClass('db_member')->incrField(array('uid'=>$_SESSION['uid']),'num');}  //如果不是编辑的话就加
		spClass("db_blog")->update(array('bid'=>$_SESSION['tempid']),$rows,$_SESSION['uid']);

		$this->postToConnect($this->spArgs());
		$_SESSION['tempid'] = NULL;
		prient_jump(spUrl('main','user'));

	}

	/*转载*/
	public function rep()
	{
		$rs = spClass('db_blog')->blogrep($this->spArgs('id'));
		if($rs == 1)
		{
			$this->error('内容已经成功转载',goUserHome(array('uid'=>$_SESSION['uid'])));
		}elseif($rs == -2){
			$this->error('不能转载自己的内容');
		}else{
			$this->error('转载的内容不存在');
		}
	}



	public function uploadimg()
	{
		if(isset($_SESSION['tempid']))
		{
			$upfile = spClass("uploadFile");
			$upfile->set_filesize($this->yb['addimg_upsize']); //改为后台配置
			$upfile->set_filetypes('jpg|png|jpge|bmp');
			$upfile->set_diydir($_SESSION['tempid']);
			$files = $upfile->fileupload();
			$farray = json_decode($files);
			echo $files;
		}else{
			echo json_encode(array('err'=>'丢失参数了啊 你怎么搞的','msg'=>''));
		}
	}

	public function swfupload()
	{

		if(isset($_SESSION['tempid']))
		{
			$upfile = spClass("uploadFile");
			$upfile->set_filesize($this->yb['addimg_upsize']); //改为后台配置
			$upfile->set_filetypes('jpg|png|jpge|bmp');
			$upfile->set_diydir($_SESSION['tempid']);
			$files = $upfile->fileupload();
			$farray = json_decode($files);
			echo $files;
		}else{
			echo json_encode(array('err'=>'丢失参数了啊 你怎么搞的','msg'=>''));
		}
	}

		/*上传媒体*/
	public function uploadmedia()
	{
		if($this->yb['addmusic_up_switch'] == 0) {$this->error('没有启用媒体上传',spUrl('main'));}
		if(isset($_SESSION['tempid']))
		{
			$upfile = spClass("uploadFile");
			$upfile->set_filesize($this->yb['addmusic_upsize']); //改为后台配置
			$upfile->set_filetypes('mp3|wma|mid');
			$upfile->set_diydir($_SESSION['tempid']);
			$files = $upfile->fileupload();
			$farray = json_decode($files);
			echo $files;
		}else{
			$this->error('丢失参数',spUrl('main'));
		}
	}




	//附件管理器
	public function attach($del=true)
	{

		if($this->tempid)
		{
			if($del)
			{
				foreach($this->attach as $d)
				{
					spClass('db_attach')->delBy($d['id'],$_SESSION['uid']);
				}
			}

			$rs = spClass('db_attach')->findAll(array('bid'=>$this->tempid),'time desc');
			if($rs[0]['uid'] == $_SESSION['uid'] || $_SESSION['admin'] == 1)
			{
				$this->attach = $rs;
			}


		}else{
			$this->attach = spClass('db_attach')->spPager($this->spArgs('page',1),10)->findAll(array('uid'=>$_SESSION['uid']));
			$this->pager = spClass('db_attach')->spPager()->pagerHtml('mblog','attach');
		}
	}




	/*删除日志以及附件
	没有依赖db库
	7月12日测试完毕 如果日志没有附件不会自动删除那个博客的文件夹
	*/
	public function del()
	{
		$blog = spClass("db_blog")->findBy('bid',$this->spArgs('id'));
		if($blog['uid'] == $_SESSION['uid'] || $_SESSION['admin'] == 1)
		{
			$attach = spClass("db_attach")->findAll(array('bid'=>$blog['bid']),'','path');
			if($attach != '')
			{
				$path = pathinfo($attach[0]['path']);
				if($this->_deldir($path['dirname']))
				{
					spClass("db_attach")->delete(array('bid'=>$blog['bid']));
				}
			}
				spClass("db_blog")->deleteByPk($blog['bid']); //删除日志
				spClass('db_member')->decrField(array('uid'=>$blog['uid']),'num'); //计数减一
				//删除喜欢，删除评论。
				spClass('db_replay')->delete(array('bid'=>$blog['bid']));
				spClass('db_likes')->delete(array('bid'=>$blog['bid']));

			exit('ok');
		}else{
			exit('删除失败,无权限或不存在该档案');
		}
	}

	/*删除某个媒体*/
	public function delattach()
	{
		$rs = spClass('db_attach')->delBy($this->spArgs('id'),$_SESSION['uid']);
		exit('ok');
	}


	/*解析传入的地址
	url,desc*/
	public function links()
	{
		$return = spClass('urlParse')->seturldesc($this->spArgs('url'),$this->spArgs('desc'));
		echo json_encode($return);
	}


	public function shops()
	{
		$return = spClass('urlParse')->setShopdesc($this->spArgs('url'));
		echo json_encode($return);
	}


	/*处理发布图片模型*/
	private function _imagemodeparse($image)
	{
		$data = '';
		$i = 1;
		if(is_array($image))
		{
			foreach($image as $k => $d)
			{

				if($i > $this->yb['addimg_count']) //如果超过后台设定张数则把超过的删除
				{
					 spClass('db_attach')->delBy($k);
				}else{

					$rs = spClass('db_attach')->find(array('id'=>$k),'','id,path');
					if(is_array($rs)) //如果记录验证成功
					{
						$dir = pathinfo($rs['path']);
						$thum = $dir['dirname'].'/t_'.$dir['basename'];
						if($d != '图片说明可选'){$desc = $d;}else{$desc="";}
						if(file_exists($thum))
						{
							$data[] = array('url'=>$thum,'desc' =>$desc);
						}else{

							$data[] = array('url'=>$rs['path'],'desc' =>$desc);
						}

					 spClass('db_attach')->update(array('id'=>$k),array('blogdesc'=>$desc));
					}
				}
			$i++;
			}

			$datas['img'] = $data;
			$datas['count'] = count($data);
			return $datas;
		}
		return '';
	}


	public function testadd()
	{

		$qq = spClass('qqConnect');
		$qq->init($this->yb['openlogin_qq_appid'],$this->yb['openlogin_qq_appkey'],$this->yb['openlogin_qq_callback']);
		$qq->addTopicForVideo('http://v.youku.com/v_playlist/f6557843o1p0.html','31','1','20350FC0E1BE1EACCC283DB31D2BF5C8','46D6C5267EEF48D62B986C9C66A1DB86');
		exit;

	}

	/*发布到其他媒体通过内部api*/
	private function postToConnect($args)
	{
	/*
		if($args['openconnect']['WEIB'])
		{

			import('sinaConnect.php');
			$sina = new sinaConnect();
			$sina->init($this->yb['openlogin_weib_appid'],$this->yb['openlogin_weib_appkey'],$this->yb['openlogin_weib_callback']);
			$keys = $_SESSION['openconnect']['WEIB'];
			$c = new WeiboClient( $this->yb['openlogin_weib_appid'],$this->yb['openlogin_weib_appkey'], $keys['token'] , $keys['secret']  );

			if($args['filedata'])
			{
				$title = $args['pb-text-title'];
				$pic = stripslashes($args['filedata']);
				$rs = $c ->upload( $title ,$pic);  //update
			}else{
				$title = strip_tags($args['pb-text-title']);
				$subject = '"'.strip_tags($args['textarea']).'"';
				$rs = $c ->update( $title .$subject);  //update
			}
		}
*/
	}





	/*处理TAG*/
	private function tagCreate($tag)
	{
		$tag_array = explode(',',substr($tag,0,-1));  //用逗号分隔,避免空格分隔出断章
		if(is_array($tag_array)){ foreach($tag_array as $d){if($d != ''){spClass('db_tags')->tagCreate($d,$_SESSION['uid']);}} }
	}


	/*获取我的常用tag*/
	private function myTagUsually($num=10)
	{
		$this->myTagUsually = spClass('db_tags')->spCache(3600)->findAll(array('uid'=>$_SESSION['uid']),'num desc','',$num);
	}



	/*获取一个可用的临时ID*/
	private function getCreateBid()
	{

		$result = spClass("db_blog")->find(array('uid'=>$_SESSION['uid'],'open'=>-1),'','bid');
		if($result == '')
		{
			$_SESSION['tempid'] = spClass("db_blog")->create(array('title' =>'','open' =>-1,'body'=>'','abstract'=>'','tag'=>'','uid'=>$_SESSION['uid']));
			$this->tempid = $_SESSION['tempid'];
		}else{
			$_SESSION['tempid'] = $result['bid'];
			$this->tempid = $_SESSION['tempid'];
		}


		if($this->spArgs('id') != '')
		{
			$ras = spClass("db_blog")->findBy('bid',$this->spArgs('id'));
			if($ras['uid'] == $_SESSION['uid'] || $_SESSION['admin'] == 1)
			{
				$bid = $ras['bid'];
				$_SESSION['tempid'] = $bid;
				$this->tempid = $bid;
				$this->times = $ras['time'];
				$this->blog = $ras;
			}else{
				$this->error('您没有权利编辑',spUrl('main','index'));
			}
		}

	}





	/*进行发布音乐的处理
	id  附件id
	desc 描述
	需要判断是否归所属人
	如果此id没查出来则返回false 接到的方法要删除这个id
	*/
	private function _localMusicParse($id,$desc)
	{
		$result = spClass("db_attach")->findBy($id,$_SESSION['uid']); //检出文件是否存在
		if($result['uid'] == $_SESSION['uid']) //判断是否是我发的
		{
			if($desc[$d] != '描述') { spClass("db_attach")->update(array('id'=>$id),array('blogdesc'=>$desc)); }//如果有描述则更新描述
			return true;
		}else{
			return false;
		}
	}


	//获得编辑器实际使用的图片
	private function _localImgParse($body)
	{
		preg_match_all( "/<img.[^>]*?(src|SRC)=\"[\"|'| ]{0,}([^>]*\\.(gif|jpg|jpeg|bmp|png))([\"|'|\\s]).*[\\/]?>/isU",stripslashes($body) , $info );
		$info = array_unique($info[2]);

		$str = '';
		if(is_array($info))
		{
			foreach($info as $d)
			{
			 if (substr($d,0,4) != 'http')  //非本地连接不管
			 {
				if(substr($d,0,7) == 'attachs')  //如果不是 attachs开头不管
				{
					$path = pathinfo($d);
					if(substr($path['basename'],0,2) == 't_') {$d = $path['dirname'].'/'. substr($path['basename'],2,99);}//如果是缩略图
				}
			 }
			 $str .= '\''.$d.'\',';
			}

			$str = substr($str,0,-1); //去掉逗号
			if($str){ $where = "`path` not in ($str) and"; } //如果存在 就加限制
			$result = spClass('db_attach')->findAll("$where  uid = {$_SESSION['uid']} and bid = {$_SESSION['tempid']}",'','id,path'); //获取到编辑器没有使用的

			if(is_array($result))
			{
				foreach($result as $d) //全部搞定
				{
					spClass('db_attach')->delBy($d['id'],$_SESSION['uid']);
				}
			}
		}
	}




	/*处理发布的字符串
	发布时的文件如果小于上传的媒体文件，则本函数会自动清理
	*/
	private function __loadMusicString($strings)
	{
		$music  = substr(trim($strings),0,-4);
		$music = explode('[YB]',$music); //分隔
		$locadata = ''; //本博客媒体数量
		$compdata = array(); //上传使用了几个
		if(is_array($music))
		{
			foreach($music as $d)
			{
				$rs = explode('|',$d);

				if($rs[0] =='local')
				{
					$compdata[] = $rs[2];
					if($this->_localMusicParse($rs[2],$rs[3])){  $data[] = array('type'=>'local','img'=>$rs[1],'pid'=>$rs[2],'desc'=>$rs[3]); } //验证成功或修改成功
				}else{
					$data[] = array('type'=>$rs[0],'img'=>$rs[1],'pid'=>$rs[2],'desc'=>$rs[3],'url'=>$rs[4]);
				}
			}

			//检查上传媒体的使用情况
			$result = spClass('db_attach')->findAll(array('bid'=>$_SESSION['tempid'],'uid'=>$_SESSION['uid']),'','id,bid,mime'); //锁定用户文件,防止提交非自己的id以至于被删除
			if(is_array($result))
			{
				foreach($result as $d) //整理本地文件
				{
					if($d['mime'] == 'mp3' || $d['mime'] == 'wma' || $d['mime'] == 'mid' ) //判断只有媒体文件才被处理
					{
						$locadata[] = $d['id'];
					}
				}
				//计算差集,删除编辑器未使用媒体
				$compute = array_diff($locadata,$compdata);
				if(is_array($compute))
				{
					foreach($compute as $d){ spClass('db_attach')->delBy($d,$_SESSION['uid']); }
				}
			}

		}
		$data = $this->assoc_unique($data,'pid'); //数组去重
		return $data;
	}


	/*获取宝贝内容*/
	private function __loadProductString($strings)
	{
		$music  = substr(trim($strings),0,-4);
		$music = explode('[YB]',$music); //分隔
		$locadata = ''; //本博客媒体数量
		$compdata = array(); //上传使用了几个
		if(is_array($music))
		{
			foreach($music as $d)
			{
				$rs = explode('|',$d);
				$data[] = array('type'=>$rs[0],'img'=>$rs[1],'title'=>$rs[2],'price'=>$rs['3'],'count'=>$rs[4],'url'=>$rs[5]);
			}
		}
		return $data;
	}






	/*数组去重*/
	private function assoc_unique($arr, $key) {
     $tmp_arr = array();
     foreach($arr as $k => $v) {
         if(in_array($v[$key], $tmp_arr)) {
             unset($arr[$k]);
         } else {
             $tmp_arr[] = $v[$key];
         }
     }
     sort($arr);
     return $arr;

 }



	/*删除文件夹所有内容*/
	private function _deldir($dir) {
	  if($dir==''){return false;}
	  $dh=opendir($dir);
	  while ($file=readdir($dh)) {
		if($file!="." && $file!="..") {
		  $fullpath=APP_PATH.'/'.$dir."/".$file;
		  @unlink($fullpath);
		}
	  }

	  closedir($dh);
	  if(rmdir(APP_PATH.'/'.$dir)) {
		return true;
	  } else {
		return false;
	  }
	  exit;
	}


}
?>