--
-- 表的结构 `th_access_cache`
--

CREATE TABLE `th_access_cache` (
  `cachename` varchar(100) NOT NULL,
  `cachevalue` text,
  PRIMARY KEY  (`cachename`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 导出表中的数据 `th_access_cache`
--


-- --------------------------------------------------------

--
-- 表的结构 `th_attachments`
--

CREATE TABLE `th_attachments` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `bid` int(10) unsigned NOT NULL,
  `path` varchar(255) NOT NULL,
  `blogdesc` varchar(50) NOT NULL COMMENT '描述',
  `filesize` int(10) unsigned NOT NULL,
  `mime` varchar(20) NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `bid` (`bid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表' AUTO_INCREMENT=1 ;

--
-- 导出表中的数据 `th_attachments`
--


-- --------------------------------------------------------

--
-- 表的结构 `th_blog`
--

CREATE TABLE `th_blog` (
  `bid` int(10) unsigned NOT NULL auto_increment,
  `uid` int(10) unsigned NOT NULL default '0',
  `top` tinyint(1) NOT NULL default '0' COMMENT '置顶',
  `type` tinyint(1) NOT NULL default '1' COMMENT '1文字2音乐3照片4视频5链接 ',
  `tag` char(30) NOT NULL COMMENT '分类',
  `title` char(50) NOT NULL,
  `body` text NOT NULL,
  `open` tinyint(1) NOT NULL default '0' COMMENT '0草稿 1通过 -1临时ID',
  `hitcount` int(10) default '0' COMMENT '点击量',
  `feedcount` int(10) unsigned NOT NULL default '0' COMMENT '动作统计',
  `dolikecount` int(10) unsigned NOT NULL default '0',
  `unlikecount` int(10) unsigned NOT NULL default '0',
  `anonymous` tinyint(4) default '0',
  `replaycount` int(10) unsigned NOT NULL default '0' COMMENT '评论回复数',
  `noreply` tinyint(1) NOT NULL default '0' COMMENT '不允许评论',
  `time` int(10) NOT NULL default '0',
  PRIMARY KEY  (`bid`),
  KEY `tag` (`tag`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 导出表中的数据 `th_blog`
--


-- --------------------------------------------------------

--
-- 表的结构 `th_catetags`
--

CREATE TABLE `th_catetags` (
  `cid` int(10) unsigned NOT NULL auto_increment,
  `catename` varchar(20) NOT NULL,
  `sort` tinyint(10) NOT NULL COMMENT '排序',
  `used` int(10) NOT NULL default '0' COMMENT '有多少人用了这个标签',
  PRIMARY KEY  (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 导出表中的数据 `th_catetags`
--


-- --------------------------------------------------------

--
-- 表的结构 `th_feeds`
--

CREATE TABLE `th_feeds` (
  `id` int(10) NOT NULL auto_increment,
  `bid` int(10) unsigned NOT NULL,
  `type` varchar(20) NOT NULL,
  `uid` int(10) NOT NULL,
  `title` varchar(50) NOT NULL COMMENT '动态标题',
  `info` varchar(255) default '' COMMENT '动态内容',
  `time` int(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 导出表中的数据 `th_feeds`
--


-- --------------------------------------------------------

--
-- 表的结构 `th_follow`
--

CREATE TABLE `th_follow` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `uid` int(10) unsigned NOT NULL COMMENT '谁',
  `touid` int(10) unsigned NOT NULL COMMENT '关注他',
  `linker` tinyint(1) NOT NULL COMMENT '互相关注',
  `time` int(10) NOT NULL COMMENT '关注时间',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 导出表中的数据 `th_follow`
--


-- --------------------------------------------------------

--
-- 表的结构 `th_likes`
--

CREATE TABLE `th_likes` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `uid` int(10) unsigned NOT NULL,
  `bid` int(10) unsigned NOT NULL,
  `time` int(10) NOT NULL,
  `iflike` tinyint(2) default '0',
  PRIMARY KEY  (`id`),
  KEY `bid` (`bid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 导出表中的数据 `th_likes`
--


-- --------------------------------------------------------

--
-- 表的结构 `th_member`
--

CREATE TABLE `th_member` (
  `uid` int(10) unsigned NOT NULL auto_increment,
  `admin` tinyint(1) NOT NULL default '0',
  `open` tinyint(1) NOT NULL default '1' COMMENT '是否开放',
  `email` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `salt` char(6) NOT NULL,
  `username` varchar(10) NOT NULL default '' COMMENT '昵称',
  `domain` varchar(20) NOT NULL default '',
  `local` varchar(20) default NULL COMMENT '我所在',
  `blogtag` varchar(20) default NULL,
  `sign` varchar(255) NOT NULL default '',
  `num` int(10) unsigned NOT NULL default '0' COMMENT '发布数量',
  `flow` int(10) unsigned NOT NULL default '0' COMMENT '关注我的',
  `likenum` int(10) unsigned NOT NULL default '0' COMMENT '我喜欢的',
  `qq` char(12) NOT NULL default '',
  `regtime` int(10) NOT NULL,
  `logtime` int(10) NOT NULL default '0',
  `regip` char(16) NOT NULL default '0',
  `logip` char(16) NOT NULL default '0',
  `m_rep` tinyint(1) NOT NULL default '1',
  `m_fow` tinyint(1) NOT NULL default '1',
  `m_pm` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`uid`),
  KEY `username` (`username`),
  KEY `domain` (`domain`),
  KEY `blogtag` (`blogtag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 导出表中的数据 `th_member`
--


-- --------------------------------------------------------

--
-- 表的结构 `th_memberex`
--

CREATE TABLE `th_memberex` (
  `openid` char(32) NOT NULL COMMENT '登陆唯一id',
  `token` char(32) NOT NULL COMMENT '验证凭据',
  `secret` char(32) NOT NULL,
  `types` char(4) NOT NULL COMMENT '类型 QQ SINA W163',
  `uid` int(10) NOT NULL COMMENT '是否关联账户',
  `expires` int(10) NOT NULL COMMENT '是否过期',
  PRIMARY KEY  (`openid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='开放登陆';

--
-- 导出表中的数据 `th_memberex`
--


-- --------------------------------------------------------

--
-- 表的结构 `th_mytags`
--

CREATE TABLE `th_mytags` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `uid` int(10) unsigned NOT NULL,
  `tagid` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='我收藏的Tag' AUTO_INCREMENT=1 ;

--
-- 导出表中的数据 `th_mytags`
--


-- --------------------------------------------------------

--
-- 表的结构 `th_notice`
--

CREATE TABLE `th_notice` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `uid` int(10) unsigned NOT NULL COMMENT '我',
  `sys` tinyint(1) NOT NULL default '0' COMMENT '1为回复 0为私信 2为通知',
  `foruid` int(10) unsigned NOT NULL COMMENT '谁搞我',
  `title` varchar(50) NOT NULL,
  `info` varchar(500) default NULL,
  `isread` tinyint(1) NOT NULL default '0',
  `location` varchar(255) NOT NULL COMMENT '跳转位置',
  `time` int(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='我的通知' AUTO_INCREMENT=1 ;

--
-- 导出表中的数据 `th_notice`
--


-- --------------------------------------------------------

--
-- 表的结构 `th_recommend`
--

CREATE TABLE `th_recommend` (
  `id` int(10) NOT NULL auto_increment,
  `open` tinyint(1) NOT NULL default '0' COMMENT '是否启用',
  `bid` int(10) NOT NULL COMMENT '推荐的内容',
  `cid` int(10) NOT NULL,
  `tuiuid` int(10) NOT NULL default '0' COMMENT '推荐的人',
  `uid` int(10) NOT NULL COMMENT '推荐人',
  `desc` varchar(255) NOT NULL COMMENT '推荐描述',
  `num` int(10) NOT NULL COMMENT '被推荐次数',
  `time` int(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 导出表中的数据 `th_recommend`
--


-- --------------------------------------------------------

--
-- 表的结构 `th_replay`
--

CREATE TABLE `th_replay` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `bid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `repuid` int(10) unsigned default '0' COMMENT '回复某人',
  `msg` varchar(255) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 导出表中的数据 `th_replay`
--


-- --------------------------------------------------------

--
-- 表的结构 `th_setting`
--

CREATE TABLE `th_setting` (
  `name` varchar(25) NOT NULL,
  `val` text,
  PRIMARY KEY  (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='系统设置';

--
-- 导出表中的数据 `th_setting`
--


-- --------------------------------------------------------

--
-- 表的结构 `th_skins`
--

CREATE TABLE `th_skins` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `skindir` varchar(255) NOT NULL COMMENT '主题位置',
  `name` varchar(50) NOT NULL COMMENT '主题名称',
  `author` varchar(50) NOT NULL COMMENT '主题作者',
  `version` char(10) NOT NULL COMMENT '主题版本',
  `exclusive` tinyint(1) NOT NULL default '0' COMMENT '是否为专属主题',
  `usenumber` int(10) NOT NULL COMMENT '多少人用',
  `open` tinyint(1) NOT NULL default '0' COMMENT '允许使用',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='系统主题表' AUTO_INCREMENT=1 ;

--
-- 导出表中的数据 `th_skins`
--


-- --------------------------------------------------------

--
-- 表的结构 `th_tags`
--

CREATE TABLE `th_tags` (
  `tid` int(10) unsigned NOT NULL auto_increment,
  `uid` int(10) unsigned NOT NULL,
  `title` varchar(20) NOT NULL,
  `num` int(10) unsigned NOT NULL default '0',
  `time` int(10) NOT NULL,
  `updates` int(10) NOT NULL default '0',
  PRIMARY KEY  (`tid`),
  KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 导出表中的数据 `th_tags`
--


-- --------------------------------------------------------

--
-- 表的结构 `th_theme`
--

CREATE TABLE `th_theme` (
  `uid` int(10) NOT NULL,
  `setup` text NOT NULL,
  `css` text,
  `img1` varchar(255) default NULL,
  `img2` varchar(255) default NULL,
  `img3` varchar(255) default NULL,
  `img4` varchar(255) default NULL,
  `theme` varchar(255) default NULL,
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='个人主题表';

--
-- 导出表中的数据 `th_theme`
--

