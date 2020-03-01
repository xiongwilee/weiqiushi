<?php
/////////////////////////////////////////////////////////////////
//微糗事, Copyright (C)   2011 - 2012  weiqiushi.com
//EMAIL:birthday10241120@qq.com QQ:373071372
//$Id: blog.php 28 2011-10-10 15:02:58Z anythink $


//博客动作执行
class blog extends top
{



	public function tag()
	{
		$this->favatag = spClass('db_mytag')->myFavaTag($_SESSION['uid']); //显示收藏标签

		$this->tid = intval($this->spArgs('tid'));


		if($this->spArgs('tag'))
		{
			$tag = tagEncodeParse($this->spArgs('tag'));
			$where = ' tag like '.strreplaces(spClass('db_blog')->escape('%'.$tag.'%'))." and open = 1";
			$this->tagname = strreplaces($tag);
			$this->tag = spClass('db_blog')->spLinker()->spPager($this->spArgs('page',1),15)->findAll($where,'time desc');
		}else{
			$this->tag = NULL;
		}



		$this->pager = spClass('db_blog')->spPager()->pagerHtml('blog','tag',array('tag'=>$tag));
		$page = spClass('db_blog')->spPager()->getPager();
		$this->display('tag_index.html');

	}





	/*获取本地歌曲*/
	function getmusic()
	{
		$result = spClass('db_attach')->findBy($this->spArgs('id'));
		if(is_array($result))
		{
			$head = fopen($result['path'],'r');
			$output = fread($head, filesize($result['path']));
			echo $output;
		}
	}

	/*搞定音乐台的图片*/
	function getyytimg()
	{
		$url = base64_decode($this->spArgs('src'));
		if(substr($url,0,24) == 'http://www.yinyuetai.com')
		{
			echo spClass('urlParse')->getRefereData($url,'http://www.yinyuetai.com/');exit;
		}
		header("HTTP/1.1 404 Not Found");exit;
	}

	/*添加我喜欢的标签*/
	function addMytag()
	{
		if(!islogin()){exit('您的登录已经超时请重新登录');}
		echo spClass('db_mytag')->addMyFavaTag(tagEncodeParse($this->spArgs('tag')) ,$_SESSION['uid']);

	}

	/*进行喜欢和取消喜欢的操作*/
	function likes()
	{
		if(!islogin()){exit('您的登录已经超时请重新登录');}
		echo spClass('db_likes')->changeLikes($this->spArgs(),$_SESSION['uid']);
	}

	/*进行喜欢和不喜欢的操作*/
	function doLike()
	{
		if(!islogin()){exit('您的登录已经超时请重新登录');}
		echo spClass('db_likes')->doLike($this->spArgs(),$_SESSION['uid']);
	}

	/*关注和取消关注的操作*/
	function follows()
	{
		if(!islogin()){exit('您的登录已经超时请重新登录');}
		echo spClass('db_follow')->changeFollow($this->spArgs('uid'),$_SESSION['uid']);
	}

	/*通知已读*/
	function readnotice()
	{
		if(!islogin()){exit('您的登录已经超时请重新登录');}
		echo spClass('db_notice')->update(array('uid'=>$_SESSION['uid'],'id'=>$this->spArgs('id')),array('isread'=>1));
	}

	/*通知删除*/
	function delnotice()
	{
		if(!islogin()){exit('您的登录已经超时请重新登录');}
		$id = intval($this->spArgs('id'));
		$rs = spClass('db_notice')->find(array('id'=>$id));
		if($rs['uid'] == $_SESSION['uid'] || $rs['foruid'] == $_SESSION['uid'])
		echo spClass('db_notice')->delete( array('id'=>$id) );
	}

	/*首页获取评论*/
	function getReplay($page=1,$limit=10)
	{
		$bid = $this->spArgs('bid');
		$result = spClass('db_replay')->spLinker()->spPager($this->spArgs('page',$page),$limit)->findAll(array('bid'=>$this->spArgs('bid')),'time desc','');
		$pager = spClass('db_replay')->spPager()->pagerAjax('blog','getReplay',array('bid'=>$bid),'commentList_'.$bid);
		if(is_array($result) && count($result) > 10){	echo '<footer>'.$pager.'</footer>'; }
		foreach($result as $d)
		{
			$reply = '';
			 $del = '';
			$prga['uid'] = $d['uid'];
			$prga['size'] = 'small';

			preg_match("/\[at=(.*?)](.*?)\[\/at\]/i",$d['msg'],$msg); //$msg[1]
			$msg = str_replace($msg[0],'<a href="'.goUserHome(array('uid'=>$msg[1])).'" target="_blank">'.$msg[2].'</a>',$d['msg']);

			if($_SESSION['uid'] != $d['uid'] && $_SESSION['uid'] != '' )
			{
				$reply = '<a href="javascript:void(0)" onclick="replays(\''.$bid.'\',\''.$d['user']['username'].'\',\''.$d['uid'].'\')" class="reply">回复</a>';
			}
			if(islogin())
			{
				if( $_SESSION['uid'] == $d['uid'] || $_SESSION['admin'] == 1){
				$del = '<span class="delrep"><a href="javascript:void(0)" onclick="delrep(\''.$d['id'].'\',\''.spUrl('blog','delrep',array('id'=>$d['id'])).'\')">shanchu</a></span>';
				}
			}

			echo '<div class="rowLine"></div><li id="feed_'.$d['id'].'"><span class="pic"><a href="'.$this->url.'/'.$d['user']['domain'].'" target="_blank"><img width="18" height="18" src="'.avatar($prga).'" alt=""></a></span>
			<p><a href="'.$this->url.'/'.$d['user']['domain'].'" target="_blank">'.$d['user']['username'].'</a>'.$msg.'<span>('.ybtime(array('time'=>$d['time'])).')</span>
			'.$reply.$del.'
			</p>
		</li>';

		}

	}


	function tuijian()
	{
		if(!islogin()){exit('您的登录已经超时请重新登录');}
		if($this->spArgs('submit'))
		{
			$return = spClass('db_recommend')->createTuijian($this->spArgs());
			if($return == -1){$this->err = '不存在的用户或id';}
			if($return == -2){	$this->err = '请填写推荐理由';}
			if($return == -3){	$this->err = '请选择系统分类';}
			if($this->err == '') { exit('<script>parent.tuijianok();</script>');}
		}

		$this->cate = spClass('db_category')->findCate();
		$this->bid = $this->spArgs('bid');
		$this->tuiuid = $this->spArgs('tuiuid');
		$this->display('tuijian.html');
	}


	/*进行回复评论*/
	function replay()
	{
	  if(!islogin()){exit('您需要登陆才能回复');}
	  $err = spClass('db_replay')->createReplay($this->spArgs());
	  if($err['err'] == ''){  echo 1;   }else{  echo $err['err']; }
	}


	/*删除评论*/
	function delrep()
	{
		if(!islogin()){exit('您的登录已经超时请重新登录');}
		$id = $this->spArgs('id');
		spClass('db_replay')->delReplay($this->spArgs(),$_SESSION['uid']);
	}

	/*首页获取博文feed*/
	function getFeeds($page=1,$limit=10)
	{
		$bid = $this->spArgs('bid');
		$result = spClass('db_feeds')->spLinker()->spPager($this->spArgs('page',$page),$limit)->findAll(array('bid'=>$this->spArgs('bid')),'id desc');
		$pager = spClass('db_replay')->spPager()->pagerAjax('blog','getfeeds',array('bid'=>$bid),'feedList_'.$bid);

		foreach($result as $d)
		{
			$prga['uid'] = $d['uid'];
			$prga['size'] = 'small';
			if($d['info'] != '') {  $d['info'] = '<quote>'.$d['info'].'</quote>';}
			echo '<div class="rowLine"></div><li><span class="pic"><a href="'.$this->url.'/'.$d['user']['domain'].'"><img width="18" height="18" src="'.avatar($prga).'"></a></span>
			<p><a href="'.$this->url.'/'.$d['user']['domain'].'">'.$d['user']['username'].'</a>'.$d['title'].$d['info'].'</p></li>';
		}
		echo $pager;


	}


}