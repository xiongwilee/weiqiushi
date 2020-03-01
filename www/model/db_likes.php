<?php
/////////////////////////////////////////////////////////////////
//微糗事, Copyright (C)   2011 - 2012  weiqiushi.com
//EMAIL:birthday10241120@qq.com QQ:373071372
//$Id: db_likes.php 7 2011-09-20 15:02:20Z anythink $

class db_likes extends spModel
{
	var $pk = "id"; // 主键
	var $table = "likes"; // 数据表的名称

	var $linker = array(
		 array(
             'type' => 'hasone',   // 关联类型，这里是一对一关联
            'map' => 'blog',    // 关联的标识
             'mapkey' => 'bid', // 本表与对应表关联的字段名
             'fclass' => 'db_blog', // 对应表的类名
            'fkey' => 'bid',    // 对应表中关联的字段名
            'enabled' => true     // 启用关联
        ),

    );

	/*进行喜欢和取消喜欢的操作*/
	function changeLikes($rows,$uid)
	{
		$result = $this->find(array('bid'=>$rows['bid'],'uid'=>$uid));
		$rs = spClass('db_blog')->find(array('bid'=>$rows['bid']),'','uid');
		if($rs['uid'] == $uid){return '不能标记自己的内容';}

		if(is_array($result)) //如果已经标记喜欢
		{
			$this->delete(array('bid'=>$rows['bid'],'uid'=>$uid));
			spClass('db_feeds')->changeFeedsLike($rows,$uid);
			spClass('db_member')->decrField(array('uid'=>$uid),'likenum'); //减少喜欢统计
			return 2;
		}else{
			$this->create(array('bid'=>$rows['bid'],'uid'=>$uid,'time'=>time()));
			spClass('db_feeds')->changeFeedsLike($rows,$uid);
			spClass('db_member')->incrField(array('uid'=>$uid),'likenum'); //增加回复统计
			return 1;
		}


	}

		/*进行喜欢和不喜欢的操作*/
	function doLike($rows,$uid)
	{
		$result = $this->find(array('bid'=>$rows['bid'],'uid'=>$uid));
		$dolike = $rows['dolike'];
		$rs = spClass('db_blog')->find(array('bid'=>$rows['bid']),'','uid');

		if($rs['uid'] == $uid){return '不能标记自己的内容';}

		if( !is_array($result) ){
			$this->create(array('bid'=>$rows['bid'],'uid'=>$uid,'time'=>time(),'iflike'=>$dolike));
			spClass('db_feeds')->changeFeedsLike($rows,$uid);
			spClass('db_member')->incrField(array('uid'=>$uid),'likenum'); //增加回复统计
			if( $dolike == 1 ){
				spClass('db_blog')->incrField(array('bid'=>$rows['bid']),'dolikecount'); //增加喜欢统计
				return 1;
			}else if($dolike == 2){
				spClass('db_blog')->incrField(array('bid'=>$rows['bid']),'unlikecount'); //增加不喜欢统计
				return 2;
			}
		}else{
			return 3;
		}
	}
}
?>