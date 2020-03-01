-- phpMyAdmin SQL Dump
-- version 2.7.0-pl1
-- http://www.phpmyadmin.net
-- 
-- 主机: localhost
-- 生成日期: 2013 年 03 月 16 日 16:03
-- 服务器版本: 5.0.96
-- PHP 版本: 5.2.17
-- 
-- 数据库: `a0315221951`
-- 

-- --------------------------------------------------------

-- 
-- 表的结构 `gz_admin`
-- 

CREATE TABLE `gz_admin` (
  `id` bigint(20) NOT NULL auto_increment,
  `usrname` varchar(20) NOT NULL,
  `usrpass` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

-- 
-- 导出表中的数据 `gz_admin`
-- 

INSERT INTO `gz_admin` VALUES (1, 'admin', 'admin888');

-- --------------------------------------------------------

-- 
-- 表的结构 `gz_lstbook`
-- 

CREATE TABLE `gz_lstbook` (
  `Id` bigint(10) unsigned NOT NULL auto_increment,
  `ntitle` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `nsex` varchar(20) NOT NULL,
  `npic` varchar(200) NOT NULL default '0',
  `msgdate` datetime NOT NULL,
  `email` varchar(100) NOT NULL,
  `msgcontent` text NOT NULL,
  `userip` varchar(100) NOT NULL,
  `useripadd` varchar(100) NOT NULL,
  `recont` varchar(500) default NULL,
  `retime` datetime default NULL,
  `rstate` int(11) NOT NULL default '0',
  `rqiao` int(11) NOT NULL default '1',
  `hits` int(11) NOT NULL default '1',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `gz_lstbook`
-- 


-- --------------------------------------------------------

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

INSERT INTO `th_access_cache` VALUES ('ybconfig', '1363484026s:2033:"a:41:{s:16:"addbaobei_switch";s:1:"0";s:12:"addimg_count";s:2:"20";s:13:"addimg_switch";s:1:"1";s:13:"addimg_upsize";s:7:"2097152";s:15:"addmusic_switch";s:1:"1";s:15:"addmusic_upsize";s:7:"4194304";s:18:"addmusic_up_switch";s:1:"0";s:14:"addtext_switch";s:1:"1";s:15:"addvideo_switch";s:1:"1";s:11:"keep_domain";s:217:"www,yunbian,bbs,music,map,index,register,login,tag,now,admin,recommend,discovery,myfollow,mypost,mylikes,myreplays,mynotices,edit,logout,home,gomember,location,showinfo,about,copyright,call,service,privacy,custom,read";s:10:"keep_email";s:13:"admin,yunbian";s:11:"keep_niname";s:68:"yunbian,admin,administrator,master,webmaster,email,username,password";s:8:"keep_rep";s:19:"操你妈,艹你妈";s:10:"mail_debug";s:1:"1";s:9:"mail_from";s:23:"birthday10241120@qq.com";s:13:"mail_fromname";s:9:"微糗事";s:9:"mail_host";s:11:"smtp.qq.com";s:9:"mail_open";s:1:"0";s:9:"mail_port";s:2:"25";s:8:"mail_pwd";s:12:"birthday0731";s:9:"mail_user";s:23:"birthday10241120@qq.com";s:18:"openlogin_qq_appid";s:0:"";s:19:"openlogin_qq_appkey";s:0:"";s:21:"openlogin_qq_callback";s:0:"";s:17:"openlogin_qq_open";s:1:"0";s:20:"openlogin_weib_appid";s:0:"";s:21:"openlogin_weib_appkey";s:0:"";s:23:"openlogin_weib_callback";s:0:"";s:19:"openlogin_weib_open";s:1:"0";s:12:"show_ajax_to";s:1:"4";s:14:"show_page_mode";s:1:"0";s:13:"show_page_num";s:2:"15";s:10:"site_count";s:293:"<script type="text/javascript">\r\nvar _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");\r\ndocument.write(unescape("%3Cscript src=''" + _bdhmProtocol + "hm.baidu.com/h.js%3Fc55ae77b131d8e71275d187fac09e3c1'' type=''text/javascript''%3E%3C/script%3E"));\r\n</script>";s:9:"site_desc";s:30:"最有趣的糗事分享平台";s:8:"site_icp";s:0:"";s:12:"site_keyword";s:47:"微糗事,weiqiushi,糗事,qiushi,笑话,爆笑";s:10:"site_title";s:9:"微糗事";s:13:"site_titlepre";s:30:"最有趣的糗事分享平台";s:12:"theme_upload";s:1:"1";s:16:"theme_uploadsize";s:7:"1048576";s:16:"theme_uploadtype";s:11:"jpg,png,gif";}";');
INSERT INTO `th_access_cache` VALUES ('sp_cache_db_tags216841988f04d5de6ef6b987244d74282d31ca04b2386ccf4968a75d93f2e8b7', '1331871888s:11:"s:4:"b:0;";";');
INSERT INTO `th_access_cache` VALUES ('sp_cache_db_category216841988f04d5de6ef6b987244d7428c78d373b6c8d472dd330b94de85ad7d0', '1342957903s:11:"s:4:"b:0;";";');
INSERT INTO `th_access_cache` VALUES ('sp_cache_list', '1647436611s:1526:"s:1516:"db_category216841988f04d5de6ef6b987244d7428c78d373b6c8d472dd330b94de85ad7d0\ndb_tags216841988f04d5de6ef6b987244d7428c5a770c6b88abfc6363e64a4ade4753d\ndb_tags216841988f04d5de6ef6b987244d7428152b7414aa3f6b006547e1768c5793b3\ndb_tags216841988f04d5de6ef6b987244d7428fb0cc980bf227c44b9c2fb1ef9c65a1b\ndb_tags216841988f04d5de6ef6b987244d74282d31ca04b2386ccf4968a75d93f2e8b7\ndb_tags216841988f04d5de6ef6b987244d7428873658eb950ecb3da3318edc74cb5723\ndb_tags216841988f04d5de6ef6b987244d7428f6b27b2a2976e1a4cbabe6610194a234\ndb_tags216841988f04d5de6ef6b987244d7428ca59f74e13a0d7c21dfb9575663aba02\ndb_tags216841988f04d5de6ef6b987244d7428942a13adf1f8c52cfb8e26b9f3e59220\ndb_tags216841988f04d5de6ef6b987244d74287ed0ec466c51ae934b4f4f1280eade9e\ndb_tags216841988f04d5de6ef6b987244d7428ef487b72c6a937a2136bdb106ba9515a\ndb_tags216841988f04d5de6ef6b987244d74280a9ef24d71397cf7075b5160b8407382\ndb_tags216841988f04d5de6ef6b987244d7428c26f5225df8439b26970a6868a8513c2\ndb_tags216841988f04d5de6ef6b987244d7428f9e2d15046df516da1025847e4d95bd0\ndb_tags216841988f04d5de6ef6b987244d742837ea4d355e6a6aab885fea85fcef0b3c\ndb_tags216841988f04d5de6ef6b987244d7428b5132bca9cb6432a86b3fd8998def126\ndb_tags216841988f04d5de6ef6b987244d74289416283110e35453ec426de2431d28c9\ndb_tags216841988f04d5de6ef6b987244d74280557f50a22a944782221985dde75f33b\ndb_tags216841988f04d5de6ef6b987244d7428081a0f35896fadfb5411f5477f3eabd2\ndb_tags216841988f04d5de6ef6b987244d7428b39b8e32f5890847f451485b79c12d78\ndb_tags216841988f04d5de6ef6b987244d74289fc9008d19d55bc714d5d98f06038e98\n";";');
INSERT INTO `th_access_cache` VALUES ('sp_cache_db_tags216841988f04d5de6ef6b987244d7428152b7414aa3f6b006547e1768c5793b3', '1331869767s:11:"s:4:"b:0;";";');
INSERT INTO `th_access_cache` VALUES ('sp_cache_db_tags216841988f04d5de6ef6b987244d7428fb0cc980bf227c44b9c2fb1ef9c65a1b', '1331871089s:11:"s:4:"b:0;";";');
INSERT INTO `th_access_cache` VALUES ('sp_cache_db_tags216841988f04d5de6ef6b987244d7428873658eb950ecb3da3318edc74cb5723', '1331872485s:11:"s:4:"b:0;";";');
INSERT INTO `th_access_cache` VALUES ('sp_cache_db_tags216841988f04d5de6ef6b987244d7428f6b27b2a2976e1a4cbabe6610194a234', '1331913095s:11:"s:4:"b:0;";";');
INSERT INTO `th_access_cache` VALUES ('sp_cache_db_tags216841988f04d5de6ef6b987244d7428c5a770c6b88abfc6363e64a4ade4753d', '1342204693s:1513:"s:1503:"a:10:{i:0;a:6:{s:3:"tid";s:1:"3";s:3:"uid";s:1:"1";s:5:"title";s:6:"爆笑";s:3:"num";s:2:"94";s:4:"time";s:10:"1331865030";s:7:"updates";s:10:"1333854667";}i:1;a:6:{s:3:"tid";s:2:"24";s:3:"uid";s:1:"1";s:5:"title";s:6:"哈哈";s:3:"num";s:2:"11";s:4:"time";s:10:"1331909940";s:7:"updates";s:10:"1336294191";}i:2;a:6:{s:3:"tid";s:1:"1";s:3:"uid";s:1:"1";s:5:"title";s:12:"糗事百科";s:3:"num";s:1:"9";s:4:"time";s:10:"1331864428";s:7:"updates";s:10:"1331866585";}i:3;a:6:{s:3:"tid";s:1:"2";s:3:"uid";s:1:"1";s:5:"title";s:6:"生活";s:3:"num";s:1:"5";s:4:"time";s:10:"1331864661";s:7:"updates";s:10:"1333259207";}i:4;a:6:{s:3:"tid";s:2:"32";s:3:"uid";s:1:"1";s:5:"title";s:6:"碉堡";s:3:"num";s:1:"2";s:4:"time";s:10:"1331977651";s:7:"updates";s:10:"1336475662";}i:5;a:6:{s:3:"tid";s:2:"26";s:3:"uid";s:1:"1";s:5:"title";s:6:"萌宠";s:3:"num";s:1:"1";s:4:"time";s:10:"1331956857";s:7:"updates";s:10:"1331957004";}i:6;a:6:{s:3:"tid";s:2:"27";s:3:"uid";s:1:"1";s:5:"title";s:12:"爆笑视频";s:3:"num";s:1:"1";s:4:"time";s:10:"1331969490";s:7:"updates";s:10:"1331969512";}i:7;a:6:{s:3:"tid";s:2:"23";s:3:"uid";s:1:"1";s:5:"title";s:6:"感动";s:3:"num";s:1:"0";s:4:"time";s:10:"1331891864";s:7:"updates";s:1:"0";}i:8;a:6:{s:3:"tid";s:2:"44";s:3:"uid";s:1:"1";s:5:"title";s:9:"性教育";s:3:"num";s:1:"0";s:4:"time";s:10:"1332043657";s:7:"updates";s:1:"0";}i:9;a:6:{s:3:"tid";s:2:"45";s:3:"uid";s:1:"1";s:5:"title";s:6:"猜猜";s:3:"num";s:1:"0";s:4:"time";s:10:"1332066391";s:7:"updates";s:1:"0";}}";";');
INSERT INTO `th_access_cache` VALUES ('sp_cache_db_tags216841988f04d5de6ef6b987244d7428ca59f74e13a0d7c21dfb9575663aba02', '1331978311s:11:"s:4:"b:0;";";');
INSERT INTO `th_access_cache` VALUES ('recommend_page_1', '1352968191s:6:"a:0:{}";');
INSERT INTO `th_access_cache` VALUES ('sp_cache_db_tags216841988f04d5de6ef6b987244d74287ed0ec466c51ae934b4f4f1280eade9e', '1332002565s:11:"s:4:"b:0;";";');
INSERT INTO `th_access_cache` VALUES ('sp_cache_db_tags216841988f04d5de6ef6b987244d7428ef487b72c6a937a2136bdb106ba9515a', '1332046582s:299:"s:290:"a:2:{i:0;a:6:{s:3:"tid";s:2:"38";s:3:"uid";s:2:"20";s:5:"title";s:6:"狐狸";s:3:"num";s:1:"0";s:4:"time";s:10:"1331991861";s:7:"updates";s:1:"0";}i:1;a:6:{s:3:"tid";s:2:"39";s:3:"uid";s:2:"20";s:5:"title";s:6:"大象";s:3:"num";s:1:"0";s:4:"time";s:10:"1331992483";s:7:"updates";s:1:"0";}}";";');
INSERT INTO `th_access_cache` VALUES ('sp_cache_db_tags216841988f04d5de6ef6b987244d74280a9ef24d71397cf7075b5160b8407382', '1333122755s:11:"s:4:"b:0;";";');
INSERT INTO `th_access_cache` VALUES ('sp_cache_db_tags216841988f04d5de6ef6b987244d7428c26f5225df8439b26970a6868a8513c2', '1333262240s:11:"s:4:"b:0;";";');
INSERT INTO `th_access_cache` VALUES ('sp_cache_db_tags216841988f04d5de6ef6b987244d7428f9e2d15046df516da1025847e4d95bd0', '1333278429s:11:"s:4:"b:0;";";');
INSERT INTO `th_access_cache` VALUES ('sp_cache_db_tags216841988f04d5de6ef6b987244d742837ea4d355e6a6aab885fea85fcef0b3c', '1336807375s:11:"s:4:"b:0;";";');
INSERT INTO `th_access_cache` VALUES ('sp_cache_db_tags216841988f04d5de6ef6b987244d7428b5132bca9cb6432a86b3fd8998def126', '1338024198s:11:"s:4:"b:0;";";');
INSERT INTO `th_access_cache` VALUES ('sp_cache_db_tags216841988f04d5de6ef6b987244d7428942a13adf1f8c52cfb8e26b9f3e59220', '1338191579s:674:"s:665:"a:4:{i:0;a:6:{s:3:"tid";s:2:"34";s:3:"uid";s:2:"18";s:5:"title";s:12:"朋友维持";s:3:"num";s:1:"1";s:4:"time";s:10:"1331985062";s:7:"updates";s:10:"1331985109";}i:1;a:6:{s:3:"tid";s:2:"35";s:3:"uid";s:2:"18";s:5:"title";s:27:"利用出卖的人心百态";s:3:"num";s:1:"0";s:4:"time";s:10:"1331985109";s:7:"updates";s:1:"0";}i:2;a:6:{s:3:"tid";s:2:"36";s:3:"uid";s:2:"18";s:5:"title";s:23:"20-26（一日一囧）";s:3:"num";s:1:"0";s:4:"time";s:10:"1331985192";s:7:"updates";s:1:"0";}i:3;a:6:{s:3:"tid";s:2:"37";s:3:"uid";s:2:"18";s:5:"title";s:39:"从今天起，要做一个简单的人";s:3:"num";s:1:"0";s:4:"time";s:10:"1331986123";s:7:"updates";s:1:"0";}}";";');
INSERT INTO `th_access_cache` VALUES ('sp_cache_db_tags216841988f04d5de6ef6b987244d74289416283110e35453ec426de2431d28c9', '1339144463s:11:"s:4:"b:0;";";');
INSERT INTO `th_access_cache` VALUES ('sp_cache_db_tags216841988f04d5de6ef6b987244d74280557f50a22a944782221985dde75f33b', '1339220489s:11:"s:4:"b:0;";";');
INSERT INTO `th_access_cache` VALUES ('sp_cache_db_tags216841988f04d5de6ef6b987244d7428081a0f35896fadfb5411f5477f3eabd2', '1339319502s:11:"s:4:"b:0;";";');
INSERT INTO `th_access_cache` VALUES ('sp_cache_db_tags216841988f04d5de6ef6b987244d7428b39b8e32f5890847f451485b79c12d78', '1340723951s:11:"s:4:"b:0;";";');
INSERT INTO `th_access_cache` VALUES ('sp_cache_db_tags216841988f04d5de6ef6b987244d74289fc9008d19d55bc714d5d98f06038e98', '1347440211s:11:"s:4:"b:0;";";');

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
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='附件表' AUTO_INCREMENT=87 ;

-- 
-- 导出表中的数据 `th_attachments`
-- 

INSERT INTO `th_attachments` VALUES (1, 4, 'attachs/12/3/16/4/1024085688.jpg', '', 14695, 'jpg', 1, 1331864648);
INSERT INTO `th_attachments` VALUES (2, 5, 'attachs/12/3/16/5/1024586570.jpg', '', 27172, 'jpg', 1, 1331864698);
INSERT INTO `th_attachments` VALUES (3, 7, 'attachs/12/3/16/7/1026436160.jpg', '', 55759, 'jpg', 1, 1331864803);
INSERT INTO `th_attachments` VALUES (4, 10, 'attachs/12/3/16/10/1034345268.jpg', '', 45625, 'jpg', 1, 1331865274);
INSERT INTO `th_attachments` VALUES (5, 12, 'attachs/12/3/16/12/1036227369.jpg', '', 44395, 'jpg', 1, 1331865382);
INSERT INTO `th_attachments` VALUES (17, 50, 'attachs/12/3/16/50/2258495893.jpg', '', 82289, 'jpg', 1, 1331909929);
INSERT INTO `th_attachments` VALUES (7, 25, 'attachs/12/3/16/25/1058593641.jpg', '', 48017, 'jpg', 2, 1331866739);
INSERT INTO `th_attachments` VALUES (8, 26, 'attachs/12/3/16/26/1059384192.jpg', '', 159402, 'jpg', 2, 1331866778);
INSERT INTO `th_attachments` VALUES (9, 27, 'attachs/12/3/16/27/1100479878.jpg', '', 81226, 'jpg', 2, 1331866847);
INSERT INTO `th_attachments` VALUES (10, 28, 'attachs/12/3/16/28/1101378236.jpg', '', 35591, 'jpg', 2, 1331866897);
INSERT INTO `th_attachments` VALUES (11, 29, 'attachs/12/3/16/29/1102321531.jpg', '', 64928, 'jpg', 2, 1331866952);
INSERT INTO `th_attachments` VALUES (12, 30, 'attachs/12/3/16/30/1103055091.jpg', '', 122834, 'jpg', 2, 1331866985);
INSERT INTO `th_attachments` VALUES (13, 32, 'attachs/12/3/16/32/1113331629.jpg', '', 79559, 'jpg', 3, 1331867613);
INSERT INTO `th_attachments` VALUES (14, 33, 'attachs/12/3/16/33/1114324009.jpg', '', 34140, 'jpg', 3, 1331867672);
INSERT INTO `th_attachments` VALUES (15, 34, 'attachs/12/3/16/34/1125085154.jpg', '1.jpg', 34140, 'jpg', 4, 1331868308);
INSERT INTO `th_attachments` VALUES (16, 41, 'attachs/12/3/16/41/1208224671.jpg', '', 53640, 'jpg', 6, 1331870905);
INSERT INTO `th_attachments` VALUES (18, 51, 'attachs/12/3/16/51/2259417616.jpg', '', 92521, 'jpg', 1, 1331909981);
INSERT INTO `th_attachments` VALUES (19, 52, 'attachs/12/3/16/52/2303536969.jpg', '', 150665, 'jpg', 1, 1331910233);
INSERT INTO `th_attachments` VALUES (81, 150, 'attachs/12/3/18/150/1618075978.jpg', '', 105852, 'jpg', 1, 1332058687);
INSERT INTO `th_attachments` VALUES (21, 58, 'attachs/12/3/16/58/2318215217.jpg', '', 56778, 'jpg', 1, 1331911102);
INSERT INTO `th_attachments` VALUES (22, 61, 'attachs/12/3/17/61/1154028710.jpg', '', 67126, 'jpg', 1, 1331956442);
INSERT INTO `th_attachments` VALUES (23, 63, 'attachs/12/3/17/63/1200327791.jpg', '', 41536, 'jpg', 1, 1331956832);
INSERT INTO `th_attachments` VALUES (24, 64, 'attachs/12/3/17/64/1203158811.jpg', '', 22967, 'jpg', 1, 1331956995);
INSERT INTO `th_attachments` VALUES (25, 65, 'attachs/12/3/17/65/1530217212.jpg', '', 287843, 'jpg', 1, 1331969421);
INSERT INTO `th_attachments` VALUES (26, 67, 'attachs/12/3/17/67/1534489369.jpg', '', 66157, 'jpg', 1, 1331969688);
INSERT INTO `th_attachments` VALUES (27, 68, 'attachs/12/3/17/68/1547446742.jpg', '', 629183, 'jpg', 1, 1331970464);
INSERT INTO `th_attachments` VALUES (28, 69, 'attachs/12/3/17/69/1552302647.jpg', '', 103682, 'jpg', 1, 1331970750);
INSERT INTO `th_attachments` VALUES (29, 70, 'attachs/12/3/17/70/1553535987.jpg', '', 43065, 'jpg', 1, 1331970833);
INSERT INTO `th_attachments` VALUES (30, 71, 'attachs/12/3/17/71/1554543225.jpg', '', 51316, 'jpg', 1, 1331970894);
INSERT INTO `th_attachments` VALUES (31, 72, 'attachs/12/3/17/72/1617049258.jpg', '', 90840, 'jpg', 1, 1331972224);
INSERT INTO `th_attachments` VALUES (32, 73, 'attachs/12/3/17/73/1618211193.jpg', '', 98827, 'jpg', 1, 1331972301);
INSERT INTO `th_attachments` VALUES (33, 74, 'attachs/12/3/17/74/1619106347.jpg', '', 43824, 'jpg', 1, 1331972350);
INSERT INTO `th_attachments` VALUES (34, 80, 'attachs/12/3/17/80/1658504657.jpg', '', 43294, 'jpg', 1, 1331974730);
INSERT INTO `th_attachments` VALUES (35, 84, 'attachs/12/3/17/84/1707329739.jpg', '', 207900, 'jpg', 1, 1331975252);
INSERT INTO `th_attachments` VALUES (36, 88, 'attachs/12/3/17/88/1721523639.jpg', '', 160616, 'jpg', 1, 1331976112);
INSERT INTO `th_attachments` VALUES (37, 89, 'attachs/12/3/17/89/1730568079.jpg', '', 29847, 'jpg', 1, 1331976656);
INSERT INTO `th_attachments` VALUES (39, 90, 'attachs/12/3/17/90/1740082904.jpg', '', 30957, 'jpg', 1, 1331977208);
INSERT INTO `th_attachments` VALUES (40, 91, 'attachs/12/3/17/91/1747031059.jpg', '', 30974, 'jpg', 1, 1331977623);
INSERT INTO `th_attachments` VALUES (41, 92, 'attachs/12/3/17/92/1749037358.jpg', '', 28196, 'jpg', 1, 1331977743);
INSERT INTO `th_attachments` VALUES (42, 93, 'attachs/12/3/17/93/1752339236.jpg', '', 25432, 'jpg', 1, 1331977953);
INSERT INTO `th_attachments` VALUES (44, 98, 'attachs/12/3/17/98/1950096217.jpg', '', 293480, 'jpg', 1, 1331985009);
INSERT INTO `th_attachments` VALUES (45, 103, 'attachs/12/3/17/103/2143249647.jpg', '', 63256, 'jpg', 20, 1331991804);
INSERT INTO `th_attachments` VALUES (46, 108, 'attachs/12/3/17/108/2153499403.jpg', '泰国迎来“大象日”，大象们排队吃自助餐', 71174, 'jpg', 20, 1331992429);
INSERT INTO `th_attachments` VALUES (47, 108, 'attachs/12/3/17/108/2154032119.jpg', '大象尽情享用丰盛的自助餐', 83236, 'jpg', 20, 1331992443);
INSERT INTO `th_attachments` VALUES (48, 110, 'attachs/12/3/17/110/2222559845.jpg', '', 812666, 'jpg', 1, 1331994175);
INSERT INTO `th_attachments` VALUES (49, 111, 'attachs/12/3/17/111/2227301901.jpg', '', 39178, 'jpg', 1, 1331994450);
INSERT INTO `th_attachments` VALUES (50, 112, 'attachs/12/3/17/112/2232386532.jpg', '', 195908, 'jpg', 1, 1331994758);
INSERT INTO `th_attachments` VALUES (51, 113, 'attachs/12/3/17/113/2234571363.jpg', '', 62194, 'jpg', 1, 1331994897);
INSERT INTO `th_attachments` VALUES (52, 114, 'attachs/12/3/17/114/2236465569.jpg', '', 127678, 'jpg', 1, 1331995006);
INSERT INTO `th_attachments` VALUES (53, 115, 'attachs/12/3/17/115/2242364355.jpg', '', 625471, 'jpg', 1, 1331995356);
INSERT INTO `th_attachments` VALUES (54, 116, 'attachs/12/3/17/116/2245084434.jpg', '', 136180, 'jpg', 1, 1331995508);
INSERT INTO `th_attachments` VALUES (55, 117, 'attachs/12/3/17/117/2250114535.jpg', '', 118508, 'jpg', 1, 1331995811);
INSERT INTO `th_attachments` VALUES (56, 118, 'attachs/12/3/17/118/2252195362.jpg', '', 235773, 'jpg', 1, 1331995940);
INSERT INTO `th_attachments` VALUES (57, 119, 'attachs/12/3/17/119/2254369614.jpg', '', 141770, 'jpg', 1, 1331996076);
INSERT INTO `th_attachments` VALUES (58, 120, 'attachs/12/3/17/120/2259115339.jpg', '', 48770, 'jpg', 1, 1331996351);
INSERT INTO `th_attachments` VALUES (59, 121, 'attachs/12/3/17/121/2308322135.jpg', '', 95900, 'jpg', 1, 1331996912);
INSERT INTO `th_attachments` VALUES (60, 122, 'attachs/12/3/17/122/2319574666.jpg', '', 262010, 'jpg', 1, 1331997597);
INSERT INTO `th_attachments` VALUES (61, 123, 'attachs/12/3/17/123/2322103805.jpg', '', 224989, 'jpg', 1, 1331997730);
INSERT INTO `th_attachments` VALUES (62, 124, 'attachs/12/3/17/124/2335171549.jpg', '', 193332, 'jpg', 1, 1331998517);
INSERT INTO `th_attachments` VALUES (63, 125, 'attachs/12/3/17/125/2341573023.jpg', '', 934829, 'jpg', 1, 1331998917);
INSERT INTO `th_attachments` VALUES (64, 126, 'attachs/12/3/17/126/2354369686.jpg', '', 687216, 'jpg', 1, 1331999676);
INSERT INTO `th_attachments` VALUES (65, 127, 'attachs/12/3/18/127/0009092995.jpg', '', 42306, 'jpg', 1, 1332000549);
INSERT INTO `th_attachments` VALUES (66, 128, 'attachs/12/3/18/128/0025347948.jpg', '', 89933, 'jpg', 1, 1332001534);
INSERT INTO `th_attachments` VALUES (67, 132, 'attachs/12/3/18/132/1106513914.jpg', '', 76773, 'jpg', 1, 1332040011);
INSERT INTO `th_attachments` VALUES (68, 133, 'attachs/12/3/18/133/1110358950.jpg', '', 22283, 'jpg', 1, 1332040235);
INSERT INTO `th_attachments` VALUES (69, 134, 'attachs/12/3/18/134/1113075700.jpg', '', 67528, 'jpg', 1, 1332040387);
INSERT INTO `th_attachments` VALUES (70, 137, 'attachs/12/3/18/137/1135033621.jpg', '', 24998, 'jpg', 1, 1332041703);
INSERT INTO `th_attachments` VALUES (71, 140, 'attachs/12/3/18/140/1141328240.jpg', '', 386308, 'jpg', 1, 1332042092);
INSERT INTO `th_attachments` VALUES (72, 144, 'attachs/12/3/18/144/1150551557.jpg', '', 39101, 'jpg', 1, 1332042655);
INSERT INTO `th_attachments` VALUES (73, 145, 'attachs/12/3/18/145/1156251930.jpg', '', 170759, 'jpg', 1, 1332042985);
INSERT INTO `th_attachments` VALUES (74, 109, 'attachs/12/3/18/109/1157133756.jpg', '', 24643, 'jpg', 20, 1332043033);
INSERT INTO `th_attachments` VALUES (75, 109, 'attachs/12/3/18/109/1157331931.jpg', '', 15507, 'jpg', 20, 1332043053);
INSERT INTO `th_attachments` VALUES (76, 109, 'attachs/12/3/18/109/1157345106.jpg', '', 9256, 'jpg', 20, 1332043054);
INSERT INTO `th_attachments` VALUES (77, 109, 'attachs/12/3/18/109/1157351077.jpg', '', 131999, 'jpg', 20, 1332043055);
INSERT INTO `th_attachments` VALUES (78, 146, 'attachs/12/3/18/146/1158013840.jpg', '', 1284705, 'jpg', 1, 1332043081);
INSERT INTO `th_attachments` VALUES (79, 147, 'attachs/12/3/18/147/1201339741.jpg', '', 938528, 'jpg', 1, 1332043293);
INSERT INTO `th_attachments` VALUES (80, 148, 'attachs/12/3/18/148/1206291555.jpg', '', 751988, 'jpg', 1, 1332043589);
INSERT INTO `th_attachments` VALUES (82, 151, 'attachs/12/3/18/151/1621082838.jpg', '', 146576, 'jpg', 1, 1332058868);
INSERT INTO `th_attachments` VALUES (83, 152, 'attachs/12/3/18/152/1623186427.jpg', '', 141862, 'jpg', 1, 1332058998);
INSERT INTO `th_attachments` VALUES (84, 153, 'attachs/12/3/18/153/1627137759.jpg', '', 144147, 'jpg', 1, 1332059233);
INSERT INTO `th_attachments` VALUES (85, 154, 'attachs/12/3/18/154/1703021851.jpg', '', 113622, 'jpg', 1, 1332061382);
INSERT INTO `th_attachments` VALUES (86, 155, 'attachs/12/3/18/155/1826137782.jpg', '', 60062, 'jpg', 1, 1332066373);

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
) ENGINE=MyISAM AUTO_INCREMENT=185 DEFAULT CHARSET=utf8 AUTO_INCREMENT=185 ;

-- 
-- 导出表中的数据 `th_blog`
-- 

INSERT INTO `th_blog` VALUES (1, 1, 0, 1, '糗事百科', '', '<span style="color: rgb(80, 62, 44); font-family: Simsun; font-size: 14px; line-height: 22px; ">一句话不割…刚才发现，女朋友睡着后，把舌头伸进她嘴里，她会不自觉的吸啊吸的，跟吃奶一样，这会再考虑要不要把jj也放进去，又怕她磨牙，纠结中…</span>', 1, 91, 5, 5, 0, 1, 0, 0, 1331864428);
INSERT INTO `th_blog` VALUES (2, 1, 0, 1, '糗事百科', '', '<span style="color: rgb(80, 62, 44); font-family: Simsun; font-size: 14px; line-height: 22px; ">说说现在的学生————————————一线天——————————————你们知道到底什么才能称做真正的老公老婆么？看看现在的糗百很多写老公老婆的糗事，看着还不错，还真以为是对恩爱夫妻，没想到在最后蹦出一句“我们是在学校”，“我们上神马神马课”。。。真是搞笑，你TM还在用着父母的钱，泡个MM，调个帅哥就是真爱了？？真TM糗</span>', 1, 72, 5, 5, 0, NULL, 0, 0, 1331864565);
INSERT INTO `th_blog` VALUES (3, 1, 0, 1, '糗事百科', '', '<span style="color: rgb(80, 62, 44); font-family: Simsun; font-size: 14px; line-height: 22px; ">第一次发，求过！本宿舍有一哥们，秦皇岛得，不太说普通话，此为背景！<br />————割割割割————<br />一次本人和他在火车上，无座，身旁有漂亮MM，偶哥们闲着也是闲着想和人家聊聊天，但是没有梗，插不上嘴。这时看见MM锁骨纹了一只蝴蝶，偶哥们直接过去说“MM啊，来，让哥哥看看你胸口纹得内只扑楞蛾子”<br />周围人憋到内伤</span>', 1, 84, 5, 5, 0, NULL, 0, 0, 1331864598);
INSERT INTO `th_blog` VALUES (4, 1, 0, 3, '生活', '“你好，我有话对你说。”“你好，我在听”', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:34:"attachs/12/3/16/4/t_1024085688.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 96, 5, 5, 0, NULL, 0, 0, 1331864661);
INSERT INTO `th_blog` VALUES (5, 1, 0, 3, '生活', '为什么老公要赚钱养家？？？请把夫妻的〖夫〗字倒过来写，结果马上知晓……', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:34:"attachs/12/3/16/5/t_1024586570.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 111, 4, 4, 0, NULL, 0, 0, 1331864711);
INSERT INTO `th_blog` VALUES (6, 1, 0, 1, '糗事百科', '', '<span style="color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px; background-color: rgba(205, 206, 163, 0.949219); "><span style="font-style: normal; ">跟老婆吵架，冷静下来去认错求和，问她究竟怎样才能原谅我?她竟然说要我下跪来认错。仕可忍孰不可忍!我转身要走，她扑通一声，跪下哭着说到：“呜，人家知道你自尊心强，我先跪，等下你再跪就不吃亏了！”</span></span>', 1, 78, 5, 5, 0, NULL, 0, 0, 1331864772);
INSERT INTO `th_blog` VALUES (7, 1, 0, 3, '生活', 'never give up！！', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:34:"attachs/12/3/16/7/t_1026436160.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 81, 5, 5, 0, NULL, 0, 0, 1331864808);
INSERT INTO `th_blog` VALUES (8, 1, 0, 4, '爆笑', '原创的搞笑卡西欧计算机推销，这熊孩子太有才了·······', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:5:"tudou";s:3:"img";s:37:"http://i1.tdimg.com/123/477/490/p.jpg";s:3:"pid";s:70:"http://www.tudou.com/v/GVb7jGn52JI/&resourceId=97897375_03_05_02/v.swf";s:4:"desc";s:80:"原创的搞笑卡西欧计算机推销，这熊孩子太有才了·······";s:3:"url";s:76:"http://www.tudou.com/programs/view/GVb7jGn52JI/?resourceId=97897375_03_05_02";}}[/attribute]', 1, 80, 5, 5, 0, NULL, 0, 0, 1331865030);
INSERT INTO `th_blog` VALUES (9, 1, 0, 1, '糗事百科', '', '惊闻最近有许多犹太人都突然失明了。 　 是他们发现盲人能免费拿条狗了么？&nbsp;', 1, 84, 5, 5, 0, NULL, 0, 0, 1331865120);
INSERT INTO `th_blog` VALUES (10, 1, 0, 3, '糗事百科', '【走进宅男】今天是消费者权益日，我在网上买了衣服，结果穿出来。。。我是不是被骗了？', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:35:"attachs/12/3/16/10/t_1034345268.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 104, 5, 5, 0, NULL, 0, 0, 1331865278);
INSERT INTO `th_blog` VALUES (11, 1, 0, 4, '爆笑', '美国人怎么看待英国口音？（搞笑）', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:5:"youku";s:3:"img";s:86:"http://g4.ykimg.com/0100641F464DB0503BD63D052A9C8573C4A26A-0DAA-2FDF-007E-FA4555F6532D";s:3:"pid";s:74:"http://player.youku.com/player.php/partnerid/XOTcy/sid/XMjYwNzc3NDU2/v.swf";s:4:"desc";s:48:"美国人怎么看待英国口音？（搞笑）";s:3:"url";s:47:"http://v.youku.com/v_show/id_XMjYwNzc3NDU2.html";}}[/attribute]', 1, 114, 5, 5, 0, NULL, 0, 0, 1331865318);
INSERT INTO `th_blog` VALUES (12, 1, 0, 3, '爆笑', '据说你开的车的价值能决定副驾驶位上的女人档次。可惜我还没车，暂时体会不到。', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:35:"attachs/12/3/16/12/t_1036227369.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 124, 5, 5, 0, NULL, 0, 0, 1331865386);
INSERT INTO `th_blog` VALUES (45, 1, 0, 4, '爆笑', '【IDEA点子文化】中山电台快乐888男子组爆笑MV《wonderman》', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:5:"youku";s:3:"img";s:86:"http://g4.ykimg.com/0100641F464F352DBB4D54001A80C14987B7E0-EF35-E359-F6A0-36EF815CCFB7";s:3:"pid";s:74:"http://player.youku.com/player.php/partnerid/XOTcy/sid/XMzUxMTM1MDAw/v.swf";s:4:"desc";s:75:"【IDEA点子文化】中山电台快乐888男子组爆笑MV《wonderman》";s:3:"url";s:47:"http://v.youku.com/v_show/id_XMzUxMTM1MDAw.html";}}[/attribute]<span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px; "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; ">我。。。成吉思汗。。。。。。。。【视频：【IDEA点子文化】中山电台快乐888男子组<span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: red; ">爆笑</span>MV《wonderman》】</span></span>', 1, 122, 5, 5, 0, NULL, 0, 0, 1331909459);
INSERT INTO `th_blog` VALUES (14, 1, 0, 4, '糗事百科', '彻底崩溃了，做客服真的需要一颗很强大的心！哈哈哈', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:5:"tudou";s:3:"img";s:37:"http://i2.tdimg.com/123/381/031/p.jpg";s:3:"pid";s:84:"http://www.tudou.com/v/2Ir6sDYYKiU/&resourceId=80591807_06_05_99&rpid=80591807/v.swf";s:4:"desc";s:72:"彻底崩溃了，做客服真的需要一颗很强大的心！哈哈哈";s:3:"url";s:90:"http://www.tudou.com/programs/view/2Ir6sDYYKiU/?resourceId=80591807_06_05_99&rpid=80591807";}}[/attribute]', 1, 86, 5, 5, 0, NULL, 0, 0, 1331865708);
INSERT INTO `th_blog` VALUES (15, 1, 0, 4, '爆笑', '真正能笑屎你的短片：最后一吻', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:6:"pomoho";s:3:"img";s:54:"http://pic02.pomoho.com/grab_photo/201203/19178367.jpg";s:3:"pid";s:118:"http://resources.pomoho.com/swf/out_player.swf?flvid=19178367&domain=p.pomoho.com/t_c27499&qudao=qqzone&modulecode=001";s:4:"desc";s:42:"真正能笑屎你的短片：最后一吻";s:3:"url";s:37:"http://p.pomoho.com/t_c27499/19178367";}}[/attribute]', 1, 106, 5, 5, 0, NULL, 0, 0, 1331866003);
INSERT INTO `th_blog` VALUES (16, 1, 0, 4, '爆笑', '“三妹妹”方格本', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:5:"youku";s:3:"img";s:86:"http://g1.ykimg.com/0100641F464F5A3660960F0628ED3D278FEA80-1822-794A-580B-869D1592CD7A";s:3:"pid";s:74:"http://player.youku.com/player.php/partnerid/XOTcy/sid/XMzYzMjU5MzE2/v.swf";s:4:"desc";s:24:"“三妹妹”方格本";s:3:"url";s:47:"http://v.youku.com/v_show/id_XMzYzMjU5MzE2.html";}}[/attribute]', 1, 122, 6, 5, 0, NULL, 0, 0, 1331866086);
INSERT INTO `th_blog` VALUES (17, 2, 0, 4, '爆笑', '女人看完绝对兴奋.绝对面红的小视频!好大!爆笑!', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:1:"6";s:3:"img";s:40:"http://i2.6.cn/8e/82/503a.thumbnail1.jpg";s:3:"pid";s:40:"http://6.cn/p/H0uonhX0nOH32C6Mxfa4yQ.swf";s:4:"desc";s:64:"女人看完绝对兴奋.绝对面红的小视频!好大!爆笑!";s:3:"url";s:28:"http://6.cn/watch/81664.html";}}[/attribute]', 1, 150, 5, 5, 0, NULL, 0, 0, 1331866202);
INSERT INTO `th_blog` VALUES (18, 2, 0, 4, '爆笑', '【恶搞配音】新闻联播群星版——315消费权益微观察（@淮秀帮 出品）', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:2:"56";s:3:"img";s:88:"http://img.v157.56.com/images/24/11/xl-25860487i56olo56i56.com_13317184901hd.jpg?j=35329";s:3:"pid";s:56:"http://player.56.com/v_NjY4NTUwODM.swf/880831_wjw163.swf";s:4:"desc";s:92:"【恶搞配音】新闻联播群星版——315消费权益微观察（@淮秀帮 出品）";s:3:"url";s:59:"http://www.56.com/u86/v_NjY4NTUwODM.html/880831_wjw163.html";}}[/attribute]<span style="color: rgb(119, 119, 119); font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(243, 243, 243); "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; ">【3•15消费者权益微观察 “新闻联播”版<span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: red; ">爆笑</span>配音】你若无视315，你便成为二百五！碉堡神配音！爆笑之余不乏针砭时弊！望损害消费者的现象能灰飞烟灭，只是，那一天，有谱吗？</span></span>', 1, 115, 6, 6, 0, NULL, 0, 0, 1331866257);
INSERT INTO `th_blog` VALUES (19, 2, 0, 1, '糗事百科', '', '<span style="color: rgb(80, 62, 44); font-family: Simsun; font-size: 14px; line-height: 22px; ">今天一开电脑，破B腾讯就自动把扣扣更新成2012版了，我擦，自动更新关闭了好吧，从来都是自己手动更新的，TMD，地球人已经阻止不了马化腾个鳖孙了。估计我硬盘里面的片子这厮也看过了。</span>', 1, 79, 6, 6, 0, NULL, 0, 0, 1331866484);
INSERT INTO `th_blog` VALUES (20, 2, 0, 1, '糗事百科', '', '<span style="color: rgb(80, 62, 44); font-family: Simsun; font-size: 14px; line-height: 22px; ">女儿6岁学前班，特别懒，尤其早晨起床都叫不动。。。我是哥。。。因为起早第一个到学校，当了一天班长。现在每天早晨只要叫班长起床啦，就不赖床了</span>', 1, 72, 6, 6, 0, NULL, 0, 0, 1331866536);
INSERT INTO `th_blog` VALUES (21, 2, 0, 4, '糗事百科', '笑到飙泪的婚礼爆笑失误集锦【新浪微博@全球热点视频】', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:5:"tudou";s:3:"img";s:37:"http://i2.tdimg.com/123/389/781/p.jpg";s:3:"pid";s:63:"http://www.tudou.com/v/X1E-jMx6KNo/&resourceId=0_03_05_02/v.swf";s:4:"desc";s:76:"笑到飙泪的婚礼爆笑失误集锦【新浪微博@全球热点视频】";s:3:"url";s:69:"http://www.tudou.com/programs/view/X1E-jMx6KNo/?resourceId=0_03_05_02";}}[/attribute]', 1, 78, 5, 5, 0, NULL, 0, 0, 1331866585);
INSERT INTO `th_blog` VALUES (22, 2, 0, 4, '爆笑', '爆笑大本营 搞笑 恶搞 搞笑T.O', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:6:"pomoho";s:3:"img";s:53:"http://pic01.pomoho.com/grab_photo/201010/6319545.jpg";s:3:"pid";s:118:"http://resources.pomoho.com/swf/out_player.swf?flvid=6319545&domain=p.pomoho.com/t_qqsfqq1&qudao=qqzone&modulecode=001";s:4:"desc";s:39:"爆笑大本营 搞笑 恶搞 搞笑T.O";s:3:"url";s:49:"http://p.pomoho.com/play/dF9xcXNmcXExLzYzMTk1NDU$";}}[/attribute]', 1, 63, 6, 6, 0, NULL, 0, 0, 1331866616);
INSERT INTO `th_blog` VALUES (23, 2, 0, 4, '震惊', '超强创意！定格动画下的纸片街舞', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:6:"pomoho";s:3:"img";s:54:"http://pic02.pomoho.com/grab_photo/201202/18913523.jpg";s:3:"pid";s:121:"http://resources.pomoho.com/swf/out_player.swf?flvid=18913523&domain=p.pomoho.com/t_519640026&qudao=qqzone&modulecode=001";s:4:"desc";s:45:"超强创意！定格动画下的纸片街舞";s:3:"url";s:53:"http://p.pomoho.com/play/dF81MTk2NDAwMjYvMTg5MTM1MjM$";}}[/attribute]', 1, 124, 4, 4, 0, NULL, 0, 0, 1331866661);
INSERT INTO `th_blog` VALUES (24, 2, 0, 1, '糗事', '', '<span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px; "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; ">公交车上，由于拥挤一男一女发生了碰撞。时髦女郎回头飞眼道：“你有病啊？”男子觉得莫名其妙回道：“你有药吗？”车上人窃笑！女子觉得生气回道：“你有精神病啊？”男子冷面对道：“你能治啊？”全车人<span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: red; ">爆笑</span>！</span></span>', 1, 99, 5, 5, 0, NULL, 0, 0, 1331866687);
INSERT INTO `th_blog` VALUES (25, 2, 0, 3, '生活', '看到她们这样，你是不是又开始相信爱情了呢。', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:35:"attachs/12/3/16/25/t_1058593641.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 95, 8, 7, 1, NULL, 1, 0, 1331866744);
INSERT INTO `th_blog` VALUES (26, 2, 0, 3, '霸气', '哥用的不是算盘，是霸气！！！！', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:35:"attachs/12/3/16/26/t_1059384192.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 70, 5, 5, 0, NULL, 0, 0, 1331866783);
INSERT INTO `th_blog` VALUES (27, 2, 0, 3, '洗澡', '看神马看？没见过洗澡么？', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:35:"attachs/12/3/16/27/t_1100479878.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 100, 6, 6, 0, NULL, 0, 0, 1331866851);
INSERT INTO `th_blog` VALUES (28, 2, 0, 3, '床,有爱', '这小床太有爱了', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:35:"attachs/12/3/16/28/t_1101378236.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 90, 6, 6, 0, NULL, 0, 0, 1331866906);
INSERT INTO `th_blog` VALUES (29, 2, 0, 3, '猫咪', '快醒醒，睡姿太丑了……起来重睡！！', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:35:"attachs/12/3/16/29/t_1102321531.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 95, 6, 6, 0, NULL, 0, 0, 1331866957);
INSERT INTO `th_blog` VALUES (30, 2, 0, 3, '狗狗', '掀开被子那一刻，是如此的销魂。', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:35:"attachs/12/3/16/30/t_1103055091.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 75, 8, 7, 1, NULL, 0, 0, 1331866989);
INSERT INTO `th_blog` VALUES (31, 2, 0, 2, '电信客服', '经典搞笑电信客服录音', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:7:"weblink";s:3:"img";s:26:"tpl/image/add/webmusic.png";s:3:"pid";s:34:"http://www.lindj.com/q64964771.mp3";s:4:"desc";s:13:"q64964771.mp3";s:3:"url";s:34:"http://www.lindj.com/q64964771.mp3";}}[/attribute]', 1, 184, 7, 6, 1, NULL, 0, 0, 1331867130);
INSERT INTO `th_blog` VALUES (32, 3, 0, 3, '爆笑', '超级女杀手来了！', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:35:"attachs/12/3/16/32/t_1113331629.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 75, 6, 5, 1, NULL, 0, 0, 1331867619);
INSERT INTO `th_blog` VALUES (33, 3, 0, 3, '尔康', '尔康是你么！尔康你肿么了！', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:35:"attachs/12/3/16/33/t_1114324009.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 167, 8, 7, 1, NULL, 0, 0, 1331867676);
INSERT INTO `th_blog` VALUES (34, 4, 0, 4, '爆笑', '【转】【拍客】暴强乘警大哥堪比范伟小沈阳', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:5:"tudou";s:3:"img";s:37:"http://i1.tdimg.com/089/047/384/p.jpg";s:3:"pid";s:124:"http://www.tudou.com/v/P1gQMIKqBuw/&resourceId=101582335_06_05_99&rpid=101582335dW5pb25faWQ9MTAwOTYzXzEwMDAwMV8wMV8wMQ/v.swf";s:4:"desc";s:60:"【转】【拍客】暴强乘警大哥堪比范伟小沈阳";s:3:"url";s:130:"http://www.tudou.com/programs/view/P1gQMIKqBuw/?resourceId=101582335_06_05_99&rpid=101582335dW5pb25faWQ9MTAwOTYzXzEwMDAwMV8wMV8wMQ";}}[/attribute]<a href="attachs/12/3/16/34/1125085154.jpg"><img src="attachs/12/3/16/34/t_1125085154.jpg" class="feedimg" alt="" /></a>', 1, 72, 5, 5, 0, NULL, 0, 0, 1331868325);
INSERT INTO `th_blog` VALUES (35, 4, 0, 4, '土豆,优酷', '【优酷牛人】爆笑：优酷和土豆合并之后的那些事...', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:5:"youku";s:3:"img";s:86:"http://g4.ykimg.com/0100641F464F6294EFD214011C1AC02BFB5356-CA59-F6E7-1759-19EE187C8A16";s:3:"pid";s:74:"http://player.youku.com/player.php/partnerid/XOTcy/sid/XMzY2NTg1ODky/v.swf";s:4:"desc";s:69:"【优酷牛人】爆笑：优酷和土豆合并之后的那些事...";s:3:"url";s:47:"http://v.youku.com/v_show/id_XMzY2NTg1ODky.html";}}[/attribute]', 1, 75, 6, 6, 0, NULL, 0, 0, 1331868382);
INSERT INTO `th_blog` VALUES (36, 4, 0, 4, '爆笑,射击', '全世界都笑到流泪的十大射击失误', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:3:"ku6";s:3:"img";s:90:"http://vi1.ku6img.com/data1/p4/ku6video/2012/3/11/14/1334671438463_18190439_18190439/2.jpg";s:3:"pid";s:58:"http://player.ku6.com/refer/-612-Ak9bdQz2osxohrYTQ../v.swf";s:4:"desc";s:45:"全世界都笑到流泪的十大射击失误";s:3:"url";s:51:"http://v.ku6.com/show/-612-Ak9bdQz2osxohrYTQ...html";}}[/attribute]', 1, 107, 6, 6, 0, NULL, 0, 0, 1331868458);
INSERT INTO `th_blog` VALUES (37, 6, 0, 4, '电话', '泛小滥最新电话录音《变态斗地主》', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:5:"tudou";s:3:"img";s:48:"http://i2.tdimg.com/034/712/799/audio_120x90.jpg";s:3:"pid";s:68:"http://www.tudou.com/v/MJEUDNrHT1s/&resourceId=0_06_02_99&fr=2/v.swf";s:4:"desc";s:48:"泛小滥最新电话录音《变态斗地主》";s:3:"url";s:74:"http://www.tudou.com/programs/view/MJEUDNrHT1s/?resourceId=0_06_02_99?fr=2";}}[/attribute]', 1, 227, 3, 3, 0, NULL, 0, 0, 1331868910);
INSERT INTO `th_blog` VALUES (38, 6, 0, 4, '只能购物车,爆笑', '装有Kinect的超智能购物车', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:5:"youku";s:3:"img";s:86:"http://g4.ykimg.com/0100641F464F4CFFA384A005E2188A430FBDE1-237F-C298-C5B8-EDFAEF9BE8B1";s:3:"pid";s:74:"http://player.youku.com/player.php/partnerid/XOTcy/sid/XMzU4MjAwNTgw/v.swf";s:4:"desc";s:33:"装有Kinect的超智能购物车";s:3:"url";s:47:"http://v.youku.com/v_show/id_XMzU4MjAwNTgw.html";}}[/attribute]<span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px; "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; "><span style="color: rgb(119, 119, 119); font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(243, 243, 243); "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; ">【<span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: red; ">爆笑</span>视频】【超智能购物车】有没有一种方式，可以解放我们推购物车的双手，轻松购物呢？这辆装有kincet（3D体感摄影机）可自动跟着你的购物车着实让人惊艳，同时还计算出车内物品的价格，是不是很神奇呢？「单词课堂」Shopping-购</span></span></span></span>', 1, 63, 5, 5, 0, NULL, 0, 0, 1331869026);
INSERT INTO `th_blog` VALUES (39, 6, 0, 4, '爆笑,爆笑接龙', '超级爆笑接龙！你一定忍不住……', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:5:"tudou";s:3:"img";s:37:"http://i3.tdimg.com/046/425/350/p.jpg";s:3:"pid";s:106:"http://www.tudou.com/v/yMdLVT_QF8g/&resourceId=0_06_02_99&fr=1dW5pb25faWQ9MTAwOTYzXzEwMDAwMV8wMV8wMQ/v.swf";s:4:"desc";s:45:"超级爆笑接龙！你一定忍不住……";s:3:"url";s:112:"http://www.tudou.com/programs/view/yMdLVT_QF8g/?resourceId=0_06_02_99?fr=1dW5pb25faWQ9MTAwOTYzXzEwMDAwMV8wMV8wMQ";}}[/attribute]<span style="color: rgb(119, 119, 119); font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(243, 243, 243); "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; ">超级<span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: red; ">爆笑</span>接龙。。。你一定忍不住！！！！！ 艾玛，我第一次听的时候笑得差点没背过气去！会传染的笑，注意第三个，第五个和第七个！！！我真的想憋住的，但是，我真的没能憋住~~</span></span>', 1, 154, 5, 5, 0, NULL, 1, 0, 1331869213);
INSERT INTO `th_blog` VALUES (40, 6, 0, 4, '学号', '【拍客】专访拥有史上最牛学号的学生', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:5:"youku";s:3:"img";s:86:"http://g2.ykimg.com/0100641F464E540255119E05356001831CACCF-8A90-20B8-4744-EC6FD3266933";s:3:"pid";s:74:"http://player.youku.com/player.php/partnerid/XOTcy/sid/XMjk3NzQwMzY4/v.swf";s:4:"desc";s:51:"【拍客】专访拥有史上最牛学号的学生";s:3:"url";s:47:"http://v.youku.com/v_show/id_XMjk3NzQwMzY4.html";}}[/attribute]', 1, 73, 6, 6, 0, NULL, 0, 0, 1331870204);
INSERT INTO `th_blog` VALUES (41, 6, 0, 3, '哈哈哈', '考试时和老师在写字时最喜欢问的问题！', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:35:"attachs/12/3/16/41/t_1208224671.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 106, 5, 5, 0, NULL, 0, 0, 1331870907);
INSERT INTO `th_blog` VALUES (42, 1, 0, 1, '生活小常识', '', '<span style="color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px; background-color: rgba(205, 206, 163, 0.949219); "><span style="font-style: normal; ">【吃醋的来历】房玄龄做了22年宰相，是贞观之治的重要缔造者。唐太宗为表其功，特赐美女两名。然后此举惹恼了宰相夫人，不准美人进家。李世民给她两个选择：一是领回美女；二是喝下御赐“毒酒”。刚烈的房夫人当场饮下“毒酒”后，方知是一杯醋。太宗无法，只得收回美人，“吃醋”一说由此传开。</span></span>', 1, 91, 5, 5, 0, NULL, 0, 0, 1331875032);
INSERT INTO `th_blog` VALUES (43, 1, 0, 4, '感动', '【拍客】中国版“忠犬八公”：小狗银行门口蹲守4年 朝九晚五等主人', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:5:"youku";s:3:"img";s:86:"http://g2.ykimg.com/0100641F464F4678898FBB025646FEC56B82F2-C6FF-02AD-823C-2F2353069537";s:3:"pid";s:74:"http://player.youku.com/player.php/partnerid/XOTcy/sid/XMzU2MDQ0MzM2/v.swf";s:4:"desc";s:92:"【拍客】中国版“忠犬八公”：小狗银行门口蹲守4年 朝九晚五等主人";s:3:"url";s:47:"http://v.youku.com/v_show/id_XMzU2MDQ0MzM2.html";}}[/attribute]<span style="color: rgb(119, 119, 119); font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(243, 243, 243); "><span style="font-style: normal; ">【中国版“忠犬八公”】与主人走失，小狗在银行门口原地蹲守4年！ 朝九晚五的等待着主人能够回来！路人纷纷被感动！这就是忠诚！大家帮忙转起来吧！希望狗狗能够早日见到它的主人！</span></span>', 1, 197, 7, 7, 0, NULL, 3, 0, 1331891864);
INSERT INTO `th_blog` VALUES (44, 1, 0, 4, '爆笑', '恶搞配音中国式逼婚之相亲不归路-3月14日', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:5:"tudou";s:3:"img";s:37:"http://i3.tdimg.com/123/385/996/p.jpg";s:3:"pid";s:84:"http://www.tudou.com/v/6Ie1smuhcgw/&resourceId=95575290_06_05_99&rpid=95575290/v.swf";s:4:"desc";s:55:"恶搞配音中国式逼婚之相亲不归路-3月14日";s:3:"url";s:90:"http://www.tudou.com/programs/view/6Ie1smuhcgw/?resourceId=95575290_06_05_99&rpid=95575290";}}[/attribute]<span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px; "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; ">中国式逼婚之相亲不归路 ，今早看完直接<span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: red; ">爆笑</span>飙泪啊～</span></span>', 1, 65, 6, 6, 0, NULL, 0, 0, 1331904537);
INSERT INTO `th_blog` VALUES (46, 12, 0, 1, '', '', '', -1, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `th_blog` VALUES (47, 1, 0, 4, '爆笑', '好玩哦~~~我的siri更坑爹，我说4她非显示5！', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:4:"sohu";s:3:"img";s:91:"http://201.img.pp.sohu.com.cn/images/video/2012/3/16/17/4/6_1370654104fg55_15242620_5_1.jpg";s:3:"pid";s:85:"http://share.vrs.sohu.com/my/v.swf&id=15242620&topBar=1&xuid=u119935575&autoplay=true";s:4:"desc";s:8:"SIRI.flv";s:3:"url";s:51:"http://my.tv.sohu.com/u/vw/15242620?xuid=u119935575";}}[/attribute]<span style="color: rgb(119, 119, 119); font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(243, 243, 243); "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; ">【中文SIRI搞笑短片】最近有网友制作中文Siri恶搞影片，片中女­主角因为熬夜有黑眼圈，向中文Siri求救，只见中文Siri给了女主角三个建议，结果还真的克服黑眼圈的问题，最后中文Siri还建议她干脆换男朋友，只能说中文Sir­i还真幽默！</span></span>', 1, 132, 5, 5, 0, NULL, 0, 0, 1331909683);
INSERT INTO `th_blog` VALUES (48, 1, 0, 4, '爆笑', '元首Nobody 字幕版', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:5:"tudou";s:3:"img";s:39:"http://i1.tdimg.com/084/845/030/m15.jpg";s:3:"pid";s:63:"http://www.tudou.com/v/IH9kshCHGC8/&resourceId=0_03_05_02/v.swf";s:4:"desc";s:22:"元首Nobody 字幕版";s:3:"url";s:69:"http://www.tudou.com/programs/view/IH9kshCHGC8/?resourceId=0_03_05_02";}}[/attribute]', 1, 81, 5, 5, 0, NULL, 0, 0, 1331909743);
INSERT INTO `th_blog` VALUES (49, 1, 0, 4, '爆笑', '笑死了！吹风机女鬼恶作剧，吓死个人啊，哈哈！！！', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:5:"tudou";s:3:"img";s:37:"http://i3.tdimg.com/114/734/036/p.jpg";s:3:"pid";s:40:"http://www.tudou.com/v/Am3AizvmciM/v.swf";s:4:"desc";s:72:"笑死了！吹风机女鬼恶作剧，吓死个人啊，哈哈！！！";s:3:"url";s:47:"http://www.tudou.com/programs/view/Am3AizvmciM/";}}[/attribute]<span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px; "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; ">日光日白整人，吓到人地连阿妈都认唔到，<span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: red; ">爆笑</span>！哈哈哈</span></span>', 1, 91, 5, 5, 0, NULL, 0, 0, 1331909846);
INSERT INTO `th_blog` VALUES (50, 1, 0, 3, '哈哈', '人有齐B小短裙，他有齐屌小短裤，真是瞎了我的钛合金狗眼！！', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:35:"attachs/12/3/16/50/t_2258495893.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 78, 2, 2, 0, NULL, 0, 0, 1331909940);
INSERT INTO `th_blog` VALUES (51, 1, 0, 3, '哈哈', '哥去买睡衣，哥纠结了！', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:35:"attachs/12/3/16/51/t_2259417616.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 52, 4, 4, 0, NULL, 0, 0, 1331909986);
INSERT INTO `th_blog` VALUES (52, 1, 0, 3, '政治', '奥巴马还是很淡定的', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:35:"attachs/12/3/16/52/t_2303536969.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 67, 4, 4, 0, NULL, 0, 0, 1331910249);
INSERT INTO `th_blog` VALUES (53, 1, 0, 4, '爆笑', '爱笑会议室最经典段落集锦【保你30分钟不间断爆笑】', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:5:"youku";s:3:"img";s:86:"http://g1.ykimg.com/0100641F464EFE937C375C0041E0580FF36F3F-C9FC-1175-4EF5-7094F68F4C4C";s:3:"pid";s:74:"http://player.youku.com/player.php/partnerid/XOTcy/sid/XMzM4MDgxMjQ0/v.swf";s:4:"desc";s:71:"爱笑会议室最经典段落集锦【保你30分钟不间断爆笑】";s:3:"url";s:47:"http://v.youku.com/v_show/id_XMzM4MDgxMjQ0.html";}}[/attribute]<span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px; "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; ">【视频：爱笑会议室最经典段落集锦【保你30分钟不间断<span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: red; ">爆笑</span>】】</span></span>', 1, 320, 5, 5, 0, NULL, 0, 0, 1331910306);
INSERT INTO `th_blog` VALUES (54, 1, 0, 4, '爆笑', '【1分14的时候他在干嘛！！！我擦！！！】', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:5:"youku";s:3:"img";s:86:"http://g1.ykimg.com/0100641F464C9A8B9C78440099D025E85884D2-3383-C00F-679A-D8AACF3C28F4";s:3:"pid";s:74:"http://player.youku.com/player.php/partnerid/XOTcy/sid/XMTE1NzgzNTUy/v.swf";s:4:"desc";s:33:"松鼠男孩（中文爆笑版）";s:3:"url";s:9:"undefined";}}[/attribute]<span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px; "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; ">【视频：松鼠男孩（中文<span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: red; ">爆笑</span>版）】</span></span>', 1, 94, 5, 5, 0, NULL, 0, 0, 1331910372);
INSERT INTO `th_blog` VALUES (56, 1, 0, 4, '爆笑', '一群大叔爆笑翻唱《Baby》，太欢乐了！', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:5:"tudou";s:3:"img";s:37:"http://i1.tdimg.com/123/449/520/p.jpg";s:3:"pid";s:40:"http://www.tudou.com/v/4gbOf5oHyxc/v.swf";s:4:"desc";s:52:"一群大叔爆笑翻唱《Baby》，太欢乐了！";s:3:"url";s:47:"http://www.tudou.com/programs/view/4gbOf5oHyxc/";}}[/attribute]', 1, 81, 5, 5, 0, NULL, 0, 0, 1331910742);
INSERT INTO `th_blog` VALUES (57, 1, 0, 4, '爆笑', '非洲小伙激情唱红歌 《没有共产党就没有新中国》', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:6:"pomoho";s:3:"img";s:54:"http://pic02.pomoho.com/grab_photo/201202/18812245.jpg";s:3:"pid";s:121:"http://resources.pomoho.com/swf/out_player.swf?flvid=18812245&domain=p.pomoho.com/t_316775398&qudao=qqzone&modulecode=001";s:4:"desc";s:67:"非洲小伙激情唱红歌 《没有共产党就没有新中国》";s:3:"url";s:53:"http://p.pomoho.com/play/dF8zMTY3NzUzOTgvMTg4MTIyNDU$";}}[/attribute]', 1, 184, 7, 7, 0, NULL, 1, 0, 1331910859);
INSERT INTO `th_blog` VALUES (58, 1, 0, 3, '爆笑', '清明节快到了，又想起这个小盆友的神作：《十年后的一天》', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:35:"attachs/12/3/16/58/t_2318215217.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 100, 5, 5, 0, NULL, 0, 0, 1331911105);
INSERT INTO `th_blog` VALUES (59, 1, 0, 4, '爆笑', '四川女屌丝唱《火》，一开口我就喷了...妹子，你的四川话不要太标准嘛..喊baby喊的我发麻....', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:2:"56";s:3:"img";s:90:"http://img.v19.56.com/images/21/25/love562012i56olo56i56.com_sc_133179994752hd.jpg?j=82301";s:3:"pid";s:57:"http://player.56.com/v_NjY4NzI0NDQ.swf/880831_nhxfm60.swf";s:4:"desc";s:27:"四川女屌丝唱《火》";s:3:"url";s:9:"undefined";}}[/attribute]<span style="font-family:Arial, Helvetica, sans-serif;color:#777777;"><span style="font-size: 12px; line-height: 20px;">四川女屌丝唱《火》，一开口我就喷了...妹子，你的四川话不要太标准嘛..喊baby喊的我发麻....<br /></span></span>', 1, 177, 8, 7, 1, NULL, 0, 0, 1331911279);
INSERT INTO `th_blog` VALUES (60, 1, 0, 4, '爆笑', '现在的00后了不得！双胞胎小正太爆笑模仿 Bruno Mars《The Lazy Song》', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:2:"56";s:3:"img";s:93:"http://img.v166.56.com/images/12/14/hongrenjijiehaoi56olo56i56.com_131875387533hd.jpg?j=82069";s:3:"pid";s:56:"http://player.56.com/v_NjM4NTkyNzc.swf/880831_cchlzs.swf";s:4:"desc";s:86:"现在的00后了不得！双胞胎小正太爆笑模仿 Bruno Mars《The Lazy Song》";s:3:"url";s:59:"http://www.56.com/u64/v_NjM4NTkyNzc.html/880831_cchlzs.html";}}[/attribute]<span style="color: rgb(119, 119, 119); font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(243, 243, 243); "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; ">现在的00后了不得！双胞胎小正太<span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: red; ">爆笑</span>模仿 。同步达到90%以上，笑死了</span></span>', 1, 86, 5, 5, 0, NULL, 0, 0, 1331956388);
INSERT INTO `th_blog` VALUES (61, 1, 0, 3, '爆笑', '在家呆着没事干，突然飞来一只鸟，撞玻璃上！~~~', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:35:"attachs/12/3/17/61/t_1154028710.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 84, 6, 6, 0, NULL, 0, 0, 1331956446);
INSERT INTO `th_blog` VALUES (62, 1, 0, 4, '爆笑', '【懷綕獨家】笑破流泪的100大爆笑瞬间又来袭', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:2:"56";s:3:"img";s:86:"http://img.v48.56.com/images/6/15/baitian256i56olo56i56.com_133178977468hd.jpg?j=18763";s:3:"pid";s:56:"http://player.56.com/v_NjY4Njg5OTE.swf/880831_cchlzs.swf";s:4:"desc";s:60:"【懷綕獨家】笑破流泪的100大爆笑瞬间又来袭";s:3:"url";s:59:"http://www.56.com/u90/v_NjY4Njg5OTE.html/880831_cchlzs.html";}}[/attribute]<span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px; "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; ">笑破流泪的100大<span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: red; ">爆笑</span>瞬间又来袭！这个一定要看 ！</span></span>', 1, 70, 6, 6, 0, NULL, 0, 0, 1331956778);
INSERT INTO `th_blog` VALUES (63, 1, 0, 3, '萌宠', '我还会玩杂技呢。', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:35:"attachs/12/3/17/63/t_1200327791.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 202, 5, 5, 0, NULL, 0, 0, 1331956857);
INSERT INTO `th_blog` VALUES (64, 1, 0, 3, '萌宠', '三缺一哦~·~亲！！', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:35:"attachs/12/3/17/64/t_1203158811.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 54, 5, 5, 0, NULL, 0, 0, 1331957004);
INSERT INTO `th_blog` VALUES (65, 1, 0, 3, '爆笑', '【普通袭胸 文艺袭胸 二逼袭胸 】感受心跳什么的…XD', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:35:"attachs/12/3/17/65/t_1530217212.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 87, 2, 2, 0, NULL, 0, 0, 1331969434);
INSERT INTO `th_blog` VALUES (66, 1, 0, 4, '爆笑', '《本能选择》史上最爆笑神展开  男人偷腥被女友发现以后~~~', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:2:"56";s:3:"img";s:85:"http://img.v157.56.com/images/22/9/iccidd13i56olo56i56.com_133030714398hd.jpg?j=71290";s:3:"pid";s:56:"http://player.56.com/v_NjY1MzQ1ODY.swf/880831_cchlzs.swf";s:4:"desc";s:148:"《本能选择》史上最爆笑神展开  男人偷腥被女友发现以后~~~是跑还是跪地求饶 听从本能选择吧  @56网搞笑  推荐";s:3:"url";s:59:"http://www.56.com/u85/v_NjY1MzQ1ODY.html/880831_cchlzs.html";}}[/attribute]<span style="color: rgb(119, 119, 119); font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(243, 243, 243); "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; "><span style="color: rgb(119, 119, 119); font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(243, 243, 243); ">：<span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; ">这个一定要看～～ 《本能选择》史上最<span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: red; ">爆笑</span><img src="http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/6a/laugh.gif" title="[哈哈]" alt="[哈哈]" type="face" style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-style: initial; border-color: initial; " />&nbsp;，男人偷腥被女友发现以后<img src="http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/f4/cj_org.gif" title="[吃惊]" alt="[吃惊]" type="face" style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-style: initial; border-color: initial; " />&nbsp;~~~</span></span></span></span>', 1, 138, 6, 6, 0, NULL, 0, 0, 1331969596);
INSERT INTO `th_blog` VALUES (67, 1, 0, 3, '爆笑', '如果你的毛脏了，你会介意吗。。。我的笑点又低了~~~！', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:35:"attachs/12/3/17/67/t_1534489369.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 118, 6, 6, 0, NULL, 0, 0, 1331969692);
INSERT INTO `th_blog` VALUES (68, 1, 0, 3, '笑点', '好吧 ， 我承认我的笑点又低了~~', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:35:"attachs/12/3/17/68/t_1547446742.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 48, 3, 3, 0, NULL, 0, 0, 1331970504);
INSERT INTO `th_blog` VALUES (69, 1, 0, 3, '哈哈', '主银，我恨你……', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:35:"attachs/12/3/17/69/t_1552302647.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 81, 6, 6, 0, NULL, 0, 0, 1331970778);
INSERT INTO `th_blog` VALUES (70, 1, 0, 3, '哈哈', '这难道仅仅是巧合吗？？？', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:35:"attachs/12/3/17/70/t_1553535987.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 89, 6, 6, 0, NULL, 0, 0, 1331970851);
INSERT INTO `th_blog` VALUES (71, 1, 0, 3, '微糗事', '碉堡了&&也想养一只有木有？', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:35:"attachs/12/3/17/71/t_1554543225.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 74, 6, 6, 0, NULL, 0, 0, 1331970914);
INSERT INTO `th_blog` VALUES (72, 1, 0, 3, '哈哈', '看你打球，是看球呢，还是看球呢？还是看球呢？！……', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:35:"attachs/12/3/17/72/t_1617049258.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 127, 6, 6, 0, NULL, 0, 0, 1331972237);
INSERT INTO `th_blog` VALUES (73, 1, 0, 3, '爆笑', '大姐，你这发型也太拉轰了！！！', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:35:"attachs/12/3/17/73/t_1618211193.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 61, 6, 6, 0, NULL, 0, 0, 1331972304);
INSERT INTO `th_blog` VALUES (74, 1, 0, 3, '爆笑', '吓我一跳,猛一看以为是强拆呢.......原来是学雷锋......', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:35:"attachs/12/3/17/74/t_1619106347.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 67, 6, 6, 0, NULL, 0, 0, 1331972359);
INSERT INTO `th_blog` VALUES (75, 1, 0, 4, '爆笑', '一群大叔爆笑翻唱《Baby》 太欢乐了！   （分享自 凤凰视频）', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:5:"ifeng";s:3:"img";s:82:"http://img.ifeng.com/itvimg/2012/03/16/af2bd963-b61f-45f4-b0ee-93d7c31c19de140.jpg";s:3:"pid";s:111:"http://v.ifeng.com/include/exterior.swf?guid=ab4908db-78a5-4626-94f8-1b83904ef222&fromweb=QQSpace&AutoPlay=true";s:4:"desc";s:81:"一群大叔爆笑翻唱《Baby》 太欢乐了！   （分享自 凤凰视频）";s:3:"url";s:78:"http://v.ifeng.com/vblog/fun/201203/ab4908db-78a5-4626-94f8-1b83904ef222.shtml";}}[/attribute]<span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px; "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; ">可不可以不要这样 一群大叔<span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: red; ">爆笑</span>翻唱《Baby》 太欢乐</span></span>', 1, 153, 6, 6, 0, NULL, 0, 0, 1331974024);
INSERT INTO `th_blog` VALUES (76, 1, 0, 4, '哈哈', '美丽女教师恶搞全班男生（爆笑）', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:5:"youku";s:3:"img";s:86:"http://g4.ykimg.com/0100641F464F1A41275878012C6D700EA04AA9-1808-F53E-BD9D-B3E1AB30BF1C";s:3:"pid";s:74:"http://player.youku.com/player.php/partnerid/XOTcy/sid/XNTQyODc4NzI=/v.swf";s:4:"desc";s:45:"美丽女教师恶搞全班男生（爆笑）";s:3:"url";s:47:"http://v.youku.com/v_show/id_XNTQyODc4NzI=.html";}}[/attribute]<span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px; "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; ">【视频：美丽女教师恶搞全班男生（<span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: red; ">爆笑</span>）】</span></span>', 1, 80, 9, 8, 1, NULL, 0, 0, 1331974173);
INSERT INTO `th_blog` VALUES (77, 1, 0, 4, '爆笑', '十大惨遭男友恶整的悲催美眉！！姑娘们看好了！！', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:2:"56";s:3:"img";s:89:"http://img.v165.56.com/images/19/16/memoryxxiaoi56olo56i56.com_133170374621hd.jpg?j=85292";s:3:"pid";s:61:"http://player.56.com/v_NjY4NTAzNTA.swf/880831_zxcasdzheng.swf";s:4:"desc";s:69:"十大惨遭男友恶整的悲催美眉！！姑娘们看好了！！";s:3:"url";s:64:"http://www.56.com/u17/v_NjY4NTAzNTA.html/880831_zxcasdzheng.html";}}[/attribute]<span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px; "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; ">个超好笑。。史上最<span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: red; ">爆笑</span>10种老公恶搞老婆的点子。千万别在喝水的时候看。</span></span>', 1, 120, 8, 7, 1, NULL, 0, 0, 1331974228);
INSERT INTO `th_blog` VALUES (78, 1, 0, 4, '哈哈', '伊拉克士兵和记者对话--超搞人爆笑', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:5:"tudou";s:3:"img";s:37:"http://i1.tdimg.com/105/477/820/p.jpg";s:3:"pid";s:122:"http://www.tudou.com/v/GeREwmAutMc/&resourceId=80687572_06_05_99&rpid=80687572dW5pb25faWQ9MTAwOTYzXzEwMDAwMV8wMV8wMQ/v.swf";s:4:"desc";s:47:"伊拉克士兵和记者对话--超搞人爆笑";s:3:"url";s:128:"http://www.tudou.com/programs/view/GeREwmAutMc/?resourceId=80687572_06_05_99&rpid=80687572dW5pb25faWQ9MTAwOTYzXzEwMDAwMV8wMV8wMQ";}}[/attribute]<span style="color: rgb(119, 119, 119); font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(243, 243, 243); "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; ">一位女女记者采访了一个伊拉克士兵，然后。。。。。。然后。。。。。。然后就出现了神奇的一幕（亮点在屏幕上方）</span></span>', 1, 116, 6, 6, 0, NULL, 0, 0, 1331974258);
INSERT INTO `th_blog` VALUES (79, 1, 0, 4, '爆笑', '长沙26岁公交司机爆笑模仿“李玉刚”走红网络', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:3:"ku6";s:3:"img";s:90:"http://vi1.ku6img.com/data1/p4/ku6video/2012/3/14/14/1334935291396_18465443_18465443/2.jpg";s:3:"pid";s:58:"http://player.ku6.com/refer/u7pOwEmZ_YroGk45-rtlAA../v.swf";s:4:"desc";s:62:"长沙26岁公交司机爆笑模仿“李玉刚”走红网络";s:3:"url";s:51:"http://v.ku6.com/show/u7pOwEmZ_YroGk45-rtlAA...html";}}[/attribute]<span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px; "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; ">长沙26岁公交司机<span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: red; ">爆笑</span>模仿“李玉刚”走红网络</span></span>', 1, 113, 6, 6, 0, NULL, 0, 0, 1331974553);
INSERT INTO `th_blog` VALUES (80, 1, 0, 3, '爆笑', '美院学生的毕业作品，不管你看懂没有，反正我是没懂 - 周末爆笑囧图：现在的学生太恶搞了_', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:35:"attachs/12/3/17/80/t_1658504657.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 66, 5, 5, 0, NULL, 0, 0, 1331974742);
INSERT INTO `th_blog` VALUES (81, 13, 0, 1, '', '', '', -1, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `th_blog` VALUES (82, 1, 0, 4, '哈哈哈', '谭谈交通： 骑破车两人“二百五”CDTV-3 《红绿灯》栏目 每晚7点25分播出', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:5:"tudou";s:3:"img";s:38:"http://i4.tdimg.com/120/666/537/m5.jpg";s:3:"pid";s:63:"http://www.tudou.com/v/HnhHgyp1fQY/&resourceId=0_03_05_02/v.swf";s:4:"desc";s:96:"谭谈交通： 骑破车两人“二百五”CDTV-3 《红绿灯》栏目 每晚7点25分播出";s:3:"url";s:69:"http://www.tudou.com/programs/view/HnhHgyp1fQY/?resourceId=0_03_05_02";}}[/attribute]<span style="color: rgb(119, 119, 119); font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(243, 243, 243); ">：<span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; ">老子一口茶喷到电脑上！！年度最佳微视频，没有之一。看完你不笑10次以上，我就服了你！！！</span></span>', 1, 100, 8, 7, 1, NULL, 0, 0, 1331975026);
INSERT INTO `th_blog` VALUES (83, 1, 0, 4, '爆笑', '爆笑恶搞！坑爹的合体机器？！', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:5:"tudou";s:3:"img";s:37:"http://i1.tdimg.com/123/639/378/p.jpg";s:3:"pid";s:70:"http://www.tudou.com/v/e9QghAeaAEU/&resourceId=80596200_01_08_02/v.swf";s:4:"desc";s:42:"爆笑恶搞！坑爹的合体机器？！";s:3:"url";s:76:"http://www.tudou.com/programs/view/e9QghAeaAEU/?resourceId=80596200_01_08_02";}}[/attribute]<span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px; "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: red; ">爆笑</span>恶搞！坑爹的合体机器？！</span></span>', 1, 70, 6, 6, 0, NULL, 0, 0, 1331975154);
INSERT INTO `th_blog` VALUES (84, 1, 0, 3, '狗狗', '', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:35:"attachs/12/3/17/84/t_1707329739.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]<span style="color: rgb(119, 119, 119); font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(243, 243, 243); "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; ">南加州的牛头梗Inca在后院跟一只豪猪打架之后变成了。。一颗苍耳 兽医麻醉她之后取出了一共1347根刺 幸运的是依靠抗生素和止痛药她事后并无大碍</span></span>', 1, 96, 6, 6, 0, NULL, 0, 0, 1331975276);
INSERT INTO `th_blog` VALUES (85, 1, 0, 4, '爆笑', '日本最爆笑广告，还是只生一个孩子好啊', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:5:"youku";s:3:"img";s:86:"http://g1.ykimg.com/0100641F464E38322C7BFE0049FC5D5346F66F-7545-05CF-4733-88840505B5EA";s:3:"pid";s:74:"http://player.youku.com/player.php/partnerid/XOTcy/sid/XMjkwODk5NzQ4/v.swf";s:4:"desc";s:54:"日本最爆笑广告，还是只生一个孩子好啊";s:3:"url";s:47:"http://v.youku.com/v_show/id_XMjkwODk5NzQ4.html";}}[/attribute]', 1, 59, 5, 5, 0, NULL, 0, 0, 1331975478);
INSERT INTO `th_blog` VALUES (86, 1, 0, 4, '经典', '【原创】周星驰十大经典爆笑片段', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:8:"baomihua";s:3:"img";s:54:"http://pic02.pomoho.com/grab_photo/201202/18944542.jpg";s:3:"pid";s:122:"http://resources.pomoho.com/swf/out_player.swf?flvid=18944542&domain=video.baomihua.com/1122xl&qudao=qqzone&modulecode=001";s:4:"desc";s:45:"【原创】周星驰十大经典爆笑片段";s:3:"url";s:41:"http://video.baomihua.com/1122xl/18944542";}}[/attribute]', 1, 65, 6, 6, 0, NULL, 0, 0, 1331975574);
INSERT INTO `th_blog` VALUES (87, 1, 0, 4, '哈哈', '爆笑醉猫大合集 酗酒的喵货桑不起啊   （分享自 凤凰视频）', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:5:"ifeng";s:3:"img";s:82:"http://img.ifeng.com/itvimg/2012/03/16/97b542bf-6c16-4bad-bfe9-7766dba4345e140.jpg";s:3:"pid";s:111:"http://v.ifeng.com/include/exterior.swf?guid=b1505f0c-6d42-40ef-81c2-e4b102664281&fromweb=QQSpace&AutoPlay=true";s:4:"desc";s:80:"爆笑醉猫大合集 酗酒的喵货桑不起啊   （分享自 凤凰视频）";s:3:"url";s:78:"http://v.ifeng.com/vblog/fun/201203/b1505f0c-6d42-40ef-81c2-e4b102664281.shtml";}}[/attribute]<span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px; "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: red; ">爆笑</span>醉猫大合集</span></span>', 1, 135, 6, 6, 0, NULL, 0, 0, 1331975688);
INSERT INTO `th_blog` VALUES (88, 1, 0, 3, '爆笑', '网易一个爆笑跟贴 哈哈', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:35:"attachs/12/3/17/88/t_1721523639.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 84, 5, 5, 0, NULL, 0, 0, 1331976132);
INSERT INTO `th_blog` VALUES (89, 1, 0, 3, '哈哈', '每次看到这个雷锋的死鱼眼就爆笑…！哈哈哈哈哈哈哈哈', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:35:"attachs/12/3/17/89/t_1730568079.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 67, 6, 6, 0, NULL, 0, 0, 1331976660);
INSERT INTO `th_blog` VALUES (90, 1, 0, 3, '内涵', '“对着太阳怒吼的是JB”字母猪深刻啊！！哈哈！', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:35:"attachs/12/3/17/90/t_1740082904.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 119, 5, 5, 0, NULL, 0, 0, 1331977251);
INSERT INTO `th_blog` VALUES (91, 1, 0, 3, '碉堡', '我们学校的学分查询系统，彻底碉堡啊！！！', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:35:"attachs/12/3/17/91/t_1747031059.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 125, 5, 5, 0, NULL, 0, 0, 1331977651);
INSERT INTO `th_blog` VALUES (92, 1, 0, 3, '碉堡', '学校附近的招待所 ， 碉堡了！！！', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:35:"attachs/12/3/17/92/t_1749037358.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 95, 6, 6, 0, NULL, 0, 0, 1331977784);
INSERT INTO `th_blog` VALUES (93, 1, 0, 3, '彪悍', '我就不告诉你，亮点在哪个容器！！', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:35:"attachs/12/3/17/93/t_1752339236.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 97, 6, 6, 0, NULL, 0, 0, 1331977976);
INSERT INTO `th_blog` VALUES (94, 1, 0, 4, '爆笑', '爆笑交警教育90后非主流，口味有点重啊！这货绝对是部残暴大片，请慎入', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:5:"tudou";s:3:"img";s:37:"http://i2.tdimg.com/122/501/515/p.jpg";s:3:"pid";s:63:"http://www.tudou.com/v/B-cAY46b3Pg/&resourceId=0_03_05_02/v.swf";s:4:"desc";s:113:"【冷笑话】爆笑交警教育90后非主流，口味有点重啊！这货绝对是部残暴大片，请慎入";s:3:"url";s:69:"http://www.tudou.com/programs/view/B-cAY46b3Pg/?resourceId=0_03_05_02";}}[/attribute]<span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px; "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: red; ">爆笑</span>交警教育90后非主流，口味有点重啊！这货绝对是部残暴大片，请慎入&nbsp;</span></span>', 1, 143, 9, 8, 1, NULL, 1, 0, 1331979171);
INSERT INTO `th_blog` VALUES (95, 1, 0, 4, '爆笑', '猫咪受惊吓后爆笑走路方式 搞笑视频 笑死人', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:6:"pomoho";s:3:"img";s:54:"http://pic01.pomoho.com/grab_photo/201203/19257426.jpg";s:3:"pid";s:121:"http://resources.pomoho.com/swf/out_player.swf?flvid=19257426&domain=p.pomoho.com/t_494386659&qudao=qqzone&modulecode=001";s:4:"desc";s:59:"猫咪受惊吓后爆笑走路方式 搞笑视频 笑死人";s:3:"url";s:53:"http://p.pomoho.com/play/dF80OTQzODY2NTkvMTkyNTc0MjY$";}}[/attribute]<span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px; "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; ">猫咪受惊吓后<span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: red; ">爆笑</span>走路方式 搞笑视频 笑死人</span></span>', 1, 201, 7, 7, 0, NULL, 0, 0, 1331979270);
INSERT INTO `th_blog` VALUES (96, 1, 0, 4, '爆笑', '山羊与狗的爆笑视频', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:1:"6";s:3:"img";s:41:"http://i3.6.cn/fd/07/1343410588357.t1.jpg";s:3:"pid";s:40:"http://6.cn/p/_l6CA6l44a281hMxwjmXqA.swf";s:4:"desc";s:27:"山羊与狗的爆笑视频";s:3:"url";s:30:"http://6.cn/watch/6684293.html";}}[/attribute]<span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px; "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; ">山羊与狗的<span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: red; ">爆笑</span>视频</span></span>', 1, 221, 7, 7, 0, NULL, 0, 0, 1331979330);
INSERT INTO `th_blog` VALUES (97, 18, 0, 4, '朋友维持,利用出卖的人心百态', '朋友维持,利用出卖的人心百态', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:5:"tudou";s:3:"img";s:37:"http://i3.tdimg.com/123/524/562/p.jpg";s:3:"pid";s:84:"http://www.tudou.com/l/T9vfY2hUgg4/&iid=123524562&union_id=100483_100001_03_17/v.swf";s:4:"desc";s:102:"朋友维持,利用出卖的人心百态--孤独者最后5分钟的心声-蓝志脱口秀第二季EP08";s:3:"url";s:84:"http://www.tudou.com/playlist/p/l7771551i123524562.html?union_id=100483_100001_03_17";}}[/attribute]朋友维持,利用出卖的人心百态<br />', 1, 215, 7, 7, 0, NULL, 0, 0, 1331985109);
INSERT INTO `th_blog` VALUES (98, 1, 0, 3, '爆笑', '哈哈 ， 养猫一时 ，用猫千“日”！！！', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:35:"attachs/12/3/17/98/t_1950096217.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 89, 7, 7, 0, NULL, 0, 0, 1331985059);
INSERT INTO `th_blog` VALUES (99, 18, 0, 4, '20-26（一日一囧）', '20-26（一日一囧）', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:5:"tudou";s:3:"img";s:37:"http://i2.tdimg.com/113/318/395/p.jpg";s:3:"pid";s:101:"http://www.tudou.com/v/97c4SFFkot4/&tid=-1&aid=-113318395&pid=41010111&oid=21963182&isNielson=0/v.swf";s:4:"desc";s:23:"20-26（一日一囧）";s:3:"url";s:107:"http://www.tudou.com/programs/view/97c4SFFkot4/?tid=-1&aid=-113318395&pid=41010111&oid=21963182&isNielson=0";}}[/attribute]不纯洁看懂了<br />', 1, 86, 6, 6, 0, NULL, 0, 0, 1331985192);
INSERT INTO `th_blog` VALUES (100, 18, 0, 1, '从今天起，要做一个简单的人', '从今天起，要做一个简单的人', '<span style="font-family:Tahoma, Arial, sans-serif;color:#333333;font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 23px; orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none; ">从今天起，要做一个简单的人，踏实而务实。不沉溺幻想，不庸人自扰。要快乐，要开朗，要坚韧，要温暖，对人要真诚。要诚恳，要坦然，要慷慨，要宽容，要有平常心。永远对生活充满希望，对于困境与磨难，微笑面对。多看书，看好书。少吃点，吃好的。要有梦想，即使遥远…</span><br />', 1, 68, 0, 0, 0, NULL, 1, 0, 1331986123);
INSERT INTO `th_blog` VALUES (101, 18, 0, 1, '', '', '', -1, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `th_blog` VALUES (102, 19, 0, 1, '', '', '', -1, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `th_blog` VALUES (103, 20, 0, 3, '狐狸', '猎人捕杀英国最大狐狸体长1.5米(图)', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:36:"attachs/12/3/17/103/t_2143249647.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]<p>这只巨型狐狸体长达1.5米，重约17公斤。 <span class="Zjd932">www.qiquw.info 最好奇闻趣事资讯站</span> </p><p>中新网3月5日电据外电5日报道，最近一名猎人捕杀了一只号称“全英国最大的狐狸”，这只狐狸体长达5英尺(约合1.5米)，重达38磅(约合17公斤)，是正常狐狸体型的两倍。</p><p>据悉，这名猎人是在一次放牧时，看到这只狐狸正企图袭击他家羔羊，才开枪将它打死的。 </p><p>经英国<a class="keylink" href="http://www.qiquw.info/qitu_dongwu/" target="_blank">动物</a>学家证实，这只狐狸的确是英国目前<a class="keylink" href="http://www.qiquw.info/qiqu_kaogu/" target="_blank">发现</a>的最大狐狸。猎人称：“早知道这家伙能在英国排第一，成为“全英国最大的狐狸”，我就不该把它埋了，应该把它制成标本，留作纪念。”</p>', 1, 63, 4, 3, 1, NULL, 0, 0, 1331991861);
INSERT INTO `th_blog` VALUES (104, 1, 0, 4, '爆笑', '校园笑话之上课点名  爆笑篇', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:5:"youku";s:3:"img";s:86:"http://g3.ykimg.com/0100641F464F19772E068C04A4CC5D44AEE149-2E57-B66A-6F52-B1D6A7BC2B32";s:3:"pid";s:74:"http://player.youku.com/player.php/partnerid/XOTcy/sid/XMzQ0ODIxOTc2/v.swf";s:4:"desc";s:38:"校园笑话之上课点名  爆笑篇";s:3:"url";s:47:"http://v.youku.com/v_show/id_XMzQ0ODIxOTc2.html";}}[/attribute]<span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px; "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; ">【校园笑话之上课点名&nbsp;<span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: red; ">爆笑</span>篇】</span></span>', 1, 144, 6, 5, 1, NULL, 0, 0, 1331992016);
INSERT INTO `th_blog` VALUES (105, 1, 0, 4, '爆笑', '【新浪微博@全球热点视频】一网打尽史上最爆笑的北鼻们_0', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:4:"sohu";s:3:"img";s:92:"http://201.img.pp.sohu.com.cn/images/video/2012/3/13/10/15/6_136f57934b4g55_15101578_5_1.jpg";s:3:"pid";s:84:"http://share.vrs.sohu.com/my/v.swf&id=15101578&topBar=1&xuid=u70397100&autoplay=true";s:4:"desc";s:78:"【新浪微博@全球热点视频】一网打尽史上最爆笑的北鼻们_0";s:3:"url";s:50:"http://my.tv.sohu.com/u/vw/15101578?xuid=u70397100";}}[/attribute]', 1, 150, 7, 7, 0, NULL, 0, 0, 1331992127);
INSERT INTO `th_blog` VALUES (106, 1, 0, 4, '爆笑', '爆笑带孩子的公猫', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:5:"tudou";s:3:"img";s:37:"http://i1.tdimg.com/123/649/748/p.jpg";s:3:"pid";s:70:"http://www.tudou.com/v/9D4xvj4-4dg/&resourceId=96702579_01_08_02/v.swf";s:4:"desc";s:24:"爆笑带孩子的公猫";s:3:"url";s:76:"http://www.tudou.com/programs/view/9D4xvj4-4dg/?resourceId=96702579_01_08_02";}}[/attribute]<span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px; "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; ">&nbsp;视频中的大胖猫名字叫做小白，是小奶们的亲哥哥。最近发现小白不知道为什么总是代替妈妈去照顾小奶们，所以拍摄此段视频留念。瞄瞄依婷家的小白，</span></span>', 1, 103, 7, 7, 0, NULL, 0, 0, 1331992240);
INSERT INTO `th_blog` VALUES (107, 1, 0, 4, '爆笑', '日本搞笑综艺节目　狗狗猩猩做仰卧起坐', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:2:"56";s:3:"img";s:90:"http://img.v19.56.com/images/12/15/880831_cchlzsi56olo56i56.com_1311169596_542.jpg?j=55579";s:3:"pid";s:60:"http://player.56.com/v_NjE5MjUwNzk.swf/880831_allencrack.swf";s:4:"desc";s:54:"日本搞笑综艺节目　狗狗猩猩做仰卧起坐";s:3:"url";s:63:"http://www.56.com/u18/v_NjE5MjUwNzk.html/880831_allencrack.html";}}[/attribute]<span style="color: rgb(119, 119, 119); font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(243, 243, 243); "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: red; ">爆笑</span>！！猩猩做仰卧起坐 。。后面轮到狗狗做更搞笑。。<img src="http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/6a/laugh.gif" title="[哈哈]" alt="[哈哈]" type="face" style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-style: initial; border-color: initial; " />看一次笑一次哇！！<span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px; "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; ">这个猩猩很有名的！！！太搞笑了！！！猩猩AND狗狗</span></span></span></span>', 1, 325, 8, 8, 0, NULL, 5, 0, 1331992331);
INSERT INTO `th_blog` VALUES (108, 20, 0, 3, '大象', '泰国迎“大象日” 百余头大象排队吃自助餐(图)', '[attribute]a:2:{s:3:"img";a:2:{i:0;a:2:{s:3:"url";s:36:"attachs/12/3/17/108/t_2153499403.jpg";s:4:"desc";s:57:"泰国迎来“大象日”，大象们排队吃自助餐";}i:1;a:2:{s:3:"url";s:36:"attachs/12/3/17/108/t_2154032119.jpg";s:4:"desc";s:36:"大象尽情享用丰盛的自助餐";}}s:5:"count";i:2;}[/attribute]。 <p>中新网3月14日电 据外媒13日报道，3月13日是泰国一年一度的“大象日”，泰国北部清迈省的一家大象训练营在这一天为大象们奉上了一桌丰盛的自助餐。</p><p>据报道，训练营为大象精心准备了一桌自助餐，包括西瓜、菠萝和甘蔗等大象最爱吃的水果。百余头大象在各自训导员的带领下，在长长的“餐桌”前一字排开，用象鼻卷起美食尽情享用。 </p><p class="Pns328">&nbsp;</p> <p></p><p>据称，大象是泰国国宝级的<a class="keylink" href="http://www.qiquw.info/qitu_dongwu/" target="_blank">动物</a>，举办此次大象吃自助餐活动，主要就是为了唤起公众对大象保护工作的重视。</p>', 1, 58, 3, 3, 0, NULL, 0, 0, 1331992483);
INSERT INTO `th_blog` VALUES (109, 20, 0, 3, '斗地主', '斗地主见过这么高的倍数了没', '[attribute]a:2:{s:3:"img";a:4:{i:0;a:2:{s:3:"url";s:36:"attachs/12/3/18/109/t_1157133756.jpg";s:4:"desc";s:0:"";}i:1;a:2:{s:3:"url";s:36:"attachs/12/3/18/109/t_1157331931.jpg";s:4:"desc";s:0:"";}i:2;a:2:{s:3:"url";s:36:"attachs/12/3/18/109/t_1157345106.jpg";s:4:"desc";s:0:"";}i:3;a:2:{s:3:"url";s:36:"attachs/12/3/18/109/t_1157351077.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:4;}[/attribute]满场炸弹 最终险胜', 1, 157, 7, 7, 0, NULL, 0, 0, 1332043122);
INSERT INTO `th_blog` VALUES (110, 1, 0, 3, '爆笑', '这都是肿么了？？？你们要挺住啊！！', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:36:"attachs/12/3/17/110/t_2222559845.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 74, 2, 2, 0, NULL, 0, 0, 1331994232);
INSERT INTO `th_blog` VALUES (111, 1, 0, 3, '惊险', '如果是你，此时给你机会说三个字……', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:36:"attachs/12/3/17/111/t_2227301901.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 75, 2, 2, 0, NULL, 0, 0, 1331994593);
INSERT INTO `th_blog` VALUES (112, 1, 0, 3, '爆笑', '木马什么的都弱爆了~~~哈哈', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:36:"attachs/12/3/17/112/t_2232386532.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 97, 7, 7, 0, NULL, 0, 0, 1331994784);
INSERT INTO `th_blog` VALUES (113, 1, 0, 3, '哈哈', '泰坦尼克经典镜头重现', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:36:"attachs/12/3/17/113/t_2234571363.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 98, 7, 7, 0, NULL, 0, 0, 1331994913);
INSERT INTO `th_blog` VALUES (114, 1, 0, 3, '爆笑', '那些用鼻子什么的拉卡车的大力士都弱爆了', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:36:"attachs/12/3/17/114/t_2236465569.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 110, 3, 3, 0, NULL, 0, 0, 1331995036);
INSERT INTO `th_blog` VALUES (115, 1, 0, 3, '猫咪', '居家猫咪神秘行为的最好解释~~~', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:36:"attachs/12/3/17/115/t_2242364355.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 100, 1, 1, 0, NULL, 0, 0, 1331995381);
INSERT INTO `th_blog` VALUES (116, 1, 0, 3, '爆笑', '请问他是怎么看到前方的，还有方向盘是谁把着的？', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:36:"attachs/12/3/17/116/t_2245084434.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 99, 2, 2, 0, NULL, 0, 0, 1331995630);
INSERT INTO `th_blog` VALUES (117, 1, 0, 3, '爆笑', '图片上文字的意思是：TT等级，亚洲……', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:36:"attachs/12/3/17/117/t_2250114535.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 75, 2, 2, 0, NULL, 0, 0, 1331995850);
INSERT INTO `th_blog` VALUES (118, 1, 0, 3, '爆笑', '我想问的是，喝水的时候会漏吗？', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:36:"attachs/12/3/17/118/t_2252195362.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 102, 7, 7, 0, NULL, 0, 0, 1331995973);
INSERT INTO `th_blog` VALUES (119, 1, 0, 3, '爆笑', '这只小鸟！！不要愤怒，要淡定，要淡定！！', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:36:"attachs/12/3/17/119/t_2254369614.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 47, 1, 1, 0, NULL, 0, 0, 1331996138);
INSERT INTO `th_blog` VALUES (120, 1, 0, 3, '爆笑', '我们学校后面的废弃的大楼，这尼玛是拆迁工人在玩俄罗斯方块吧！！', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:36:"attachs/12/3/17/120/t_2259115339.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 115, 7, 7, 0, NULL, 0, 0, 1331996402);
INSERT INTO `th_blog` VALUES (121, 1, 0, 3, '海绵宝宝', '海绵宝宝你肿么了？？？你醒醒啊！！', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:36:"attachs/12/3/17/121/t_2308322135.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 134, 7, 7, 0, NULL, 0, 0, 1331996938);
INSERT INTO `th_blog` VALUES (122, 1, 0, 3, '爆笑', '古登你要hold住啊！！！', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:36:"attachs/12/3/17/122/t_2319574666.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 82, 6, 6, 0, NULL, 0, 0, 1331997621);
INSERT INTO `th_blog` VALUES (123, 1, 0, 3, '爆笑', '耐克新款，限量版欲购从速喔亲！！！', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:36:"attachs/12/3/17/123/t_2322103805.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 225, 7, 7, 0, NULL, 0, 0, 1331997735);
INSERT INTO `th_blog` VALUES (124, 1, 0, 3, '爆笑', '好吧，狼人是草+泥+马进化而来的，嗯，暮光之城下部就是这么回事了', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:36:"attachs/12/3/17/124/t_2335171549.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 121, 6, 6, 0, NULL, 0, 0, 1331998577);
INSERT INTO `th_blog` VALUES (125, 1, 0, 3, '爆笑', '滚动条往下拉，很神奇！！', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:36:"attachs/12/3/17/125/t_2341573023.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 86, 2, 2, 0, NULL, 0, 0, 1331998978);
INSERT INTO `th_blog` VALUES (126, 1, 0, 3, '爆笑', '妹子们 你们都是肿么了！！！', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:36:"attachs/12/3/17/126/t_2354369686.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 112, 7, 7, 0, NULL, 0, 0, 1331999686);
INSERT INTO `th_blog` VALUES (127, 1, 0, 3, '哈哈哈', '哈哈', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:36:"attachs/12/3/18/127/t_0009092995.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 73, 6, 6, 0, NULL, 0, 0, 1332000560);
INSERT INTO `th_blog` VALUES (128, 1, 0, 3, '爆笑', '估计司机都不知道应该看那一个灯~', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:36:"attachs/12/3/18/128/t_0025347948.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 95, 7, 7, 0, NULL, 0, 0, 1332001617);
INSERT INTO `th_blog` VALUES (129, 1, 0, 4, '爆笑', '憨豆女传人 绝世女屌丝 第一季第一集爆笑来袭  21分钟笑爆全场  @56网搞笑  推荐', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:2:"56";s:3:"img";s:85:"http://img.v139.56.com/images/17/9/iccidd11i56olo56i56.com_133186525359hd.jpg?j=99803";s:3:"pid";s:56:"http://player.56.com/v_NjY4ODQ3Nzg.swf/880831_cchlzs.swf";s:4:"desc";s:106:"憨豆女传人 绝世女屌丝 第一季第一集爆笑来袭  21分钟笑爆全场  @56网搞笑  推荐";s:3:"url";s:59:"http://www.56.com/u37/v_NjY4ODQ3Nzg.html/880831_cchlzs.html";}}[/attribute]<span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px; "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; ">21分钟超长版 憨豆女传人 绝世女屌丝 第一季第一集<span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: red; ">爆笑</span>来袭 ！有字幕的哦 ～～</span></span>', 1, 147, 6, 6, 0, NULL, 0, 0, 1332039618);
INSERT INTO `th_blog` VALUES (130, 1, 0, 4, '哈哈', '猫咪大战魔鬼直升机！ 搞笑视频 笑死人', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:6:"pomoho";s:3:"img";s:54:"http://pic02.pomoho.com/grab_photo/201203/19257424.jpg";s:3:"pid";s:121:"http://resources.pomoho.com/swf/out_player.swf?flvid=19257424&domain=p.pomoho.com/t_827144016&qudao=qqzone&modulecode=001";s:4:"desc";s:53:"猫咪大战魔鬼直升机！ 搞笑视频 笑死人";s:3:"url";s:53:"http://p.pomoho.com/play/dF84MjcxNDQwMTYvMTkyNTc0MjQ$";}}[/attribute]', 1, 154, 6, 6, 0, NULL, 0, 0, 1332039838);
INSERT INTO `th_blog` VALUES (131, 1, 0, 4, '爆笑', '睡着吃苍蝇爆笑口误 各国电视主播一起来笑场', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:6:"pomoho";s:3:"img";s:54:"http://pic01.pomoho.com/grab_photo/201203/19251227.jpg";s:3:"pid";s:123:"http://resources.pomoho.com/swf/out_player.swf?flvid=19251227&domain=p.pomoho.com/t_13434404650&qudao=qqzone&modulecode=001";s:4:"desc";s:61:"睡着吃苍蝇爆笑口误 各国电视主播一起来笑场";s:3:"url";s:57:"http://p.pomoho.com/play/dF8xMzQzNDQwNDY1MC8xOTI1MTIyNw$$";}}[/attribute]<span style="color: rgb(119, 119, 119); font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(243, 243, 243); "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; ">【<span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: red; ">爆笑</span>】睡着吃苍蝇爆笑口误 各国电视主播一起来笑场&nbsp;</span></span>', 1, 52, 4, 4, 0, NULL, 0, 0, 1332039901);
INSERT INTO `th_blog` VALUES (132, 1, 0, 3, '爆笑', '', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:36:"attachs/12/3/18/132/t_1106513914.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]一个哥们搭飞机，靠着窗超级无聊的，就一边听着音乐一边有一下没一下的敲着机舱打节拍，后面一个小孩子气愤的大声说：“妈妈，那个哥哥在打飞机！”周围人掩嘴爆笑，那哥们儿连跳机的决心都有了..................&nbsp;', 1, 65, 2, 2, 0, NULL, 0, 0, 1332040036);
INSERT INTO `th_blog` VALUES (133, 1, 0, 3, '爆笑', '什么也阻挡不了宅男玩游戏了！！！', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:36:"attachs/12/3/18/133/t_1110358950.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 114, 4, 4, 0, NULL, 0, 0, 1332040265);
INSERT INTO `th_blog` VALUES (134, 1, 0, 3, '爆笑', '', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:36:"attachs/12/3/18/134/t_1113075700.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]<span style="color: rgb(119, 119, 119); font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(243, 243, 243); "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; ">众所周知，双子座……他是一个比较手贱的星座。&nbsp;有个围脖说在家烧苍术和白芷可以祛湿。然后我本着实践出真知的心态尝试了一下，发现这两样东西挺大块的，要点燃不是一般费劲。然后今天我又回顾了一下那个围脖，有人说用细漏网隔着火烧，然后我又实践出真知了一把，然后……你们自己看图吧</span></span><br />', 1, 82, 7, 7, 0, NULL, 0, 0, 1332040404);
INSERT INTO `th_blog` VALUES (135, 1, 0, 4, '爆笑', '爆笑台球！这个球打的太有技巧了', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:2:"56";s:3:"img";s:90:"http://img.v138.56.com/images/18/9/love562012i56olo56i56.com_sc_133177777516hd.jpg?j=33364";s:3:"pid";s:38:"http://player.56.com/v_NjY4NjUxNjY.swf";s:4:"desc";s:45:"爆笑台球！这个球打的太有技巧了";s:3:"url";s:40:"http://www.56.com/u49/v_NjY4NjUxNjY.html";}}[/attribute]', 1, 63, 4, 4, 0, NULL, 0, 0, 1332040590);
INSERT INTO `th_blog` VALUES (136, 1, 0, 4, '爆笑,猫咪', '喵界的体育明星爆笑来袭！', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:8:"baomihua";s:3:"img";s:54:"http://pic02.pomoho.com/grab_photo/201203/19259155.jpg";s:3:"pid";s:124:"http://resources.pomoho.com/swf/out_player.swf?flvid=19259155&domain=video.baomihua.com/16639871&qudao=qqzone&modulecode=001";s:4:"desc";s:36:"喵界的体育明星爆笑来袭！";s:3:"url";s:43:"http://video.baomihua.com/16639871/19259155";}}[/attribute]', 1, 92, 7, 7, 0, NULL, 0, 0, 1332041534);
INSERT INTO `th_blog` VALUES (137, 1, 0, 3, '爆笑', '大叔你这萌系发型是要闹哪样？', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:36:"attachs/12/3/18/137/t_1135033621.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 70, 7, 7, 0, NULL, 0, 0, 1332041714);
INSERT INTO `th_blog` VALUES (138, 1, 0, 1, '爆笑', '', '<span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px; "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; ">一早看到<span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: red; ">爆笑</span>娱乐新闻 ，共享共享。韩国一演员前日喜得三胞胎儿子，作为议员的奶奶给三孙子的乳名分别起为：“대한（大韩）”“민국（民国）”“만세（万岁）”。</span></span>', 1, 166, 8, 8, 0, NULL, 0, 0, 1332041887);
INSERT INTO `th_blog` VALUES (139, 1, 0, 4, '爆笑', '憨豆女传人 绝世女屌丝 第一季第一集爆笑来袭  21分钟笑爆全场  @56网搞笑  推荐', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:2:"56";s:3:"img";s:85:"http://img.v139.56.com/images/17/9/iccidd11i56olo56i56.com_133186525359hd.jpg?j=12755";s:3:"pid";s:56:"http://player.56.com/v_NjY4ODQ3Nzg.swf/880831_cchlzs.swf";s:4:"desc";s:106:"憨豆女传人 绝世女屌丝 第一季第一集爆笑来袭  21分钟笑爆全场  @56网搞笑  推荐";s:3:"url";s:59:"http://www.56.com/u37/v_NjY4ODQ3Nzg.html/880831_cchlzs.html";}}[/attribute]<span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px; "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; ">憨豆女传人 绝世女屌丝 第1季第1集<span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: red; ">爆笑</span>来袭 21分钟笑爆全场</span></span>', 1, 93, 7, 7, 0, NULL, 0, 0, 1332042024);
INSERT INTO `th_blog` VALUES (140, 1, 0, 3, '爆笑', '湿傅也要赶赶潮流~', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:36:"attachs/12/3/18/140/t_1141328240.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 221, 8, 8, 0, NULL, 0, 0, 1332042096);
INSERT INTO `th_blog` VALUES (141, 1, 0, 4, '爆笑', '最爆笑最恶搞的恶作剧！！', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:8:"baomihua";s:3:"img";s:54:"http://pic02.pomoho.com/grab_photo/201203/19193289.jpg";s:3:"pid";s:122:"http://resources.pomoho.com/swf/out_player.swf?flvid=19193289&domain=video.baomihua.com/tdqlwn&qudao=qqzone&modulecode=001";s:4:"desc";s:36:"最爆笑最恶搞的恶作剧！！";s:3:"url";s:41:"http://video.baomihua.com/tdqlwn/19193289";}}[/attribute]<span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px; "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; ">最<span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: red; ">爆笑</span>最恶搞的恶作剧！！</span></span><br />', 1, 168, 6, 6, 0, NULL, 0, 0, 1332042301);
INSERT INTO `th_blog` VALUES (142, 1, 0, 4, '爆笑', '爆笑！你知道喵星人是肿磨游泳的吗', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:5:"tudou";s:3:"img";s:37:"http://i1.tdimg.com/119/090/400/p.jpg";s:3:"pid";s:40:"http://www.tudou.com/v/QwUBHcUYpTI/v.swf";s:4:"desc";s:48:"爆笑！你知道喵星人是肿磨游泳的吗";s:3:"url";s:47:"http://www.tudou.com/programs/view/QwUBHcUYpTI/";}}[/attribute]<span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px; "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: red; ">爆笑</span>！你知道喵星人是肿磨游泳的吗</span></span>', 1, 89, 6, 6, 0, NULL, 0, 0, 1332042416);
INSERT INTO `th_blog` VALUES (143, 1, 0, 4, '搞笑', '猥亵男主持言语犀利问情事 希尔顿hold住全场', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:6:"pomoho";s:3:"img";s:54:"http://pic02.pomoho.com/grab_photo/201202/18460014.jpg";s:3:"pid";s:118:"http://resources.pomoho.com/swf/out_player.swf?flvid=18460014&domain=p.pomoho.com/t_wmdayy&qudao=qqzone&modulecode=001";s:4:"desc";s:59:"猥亵男主持言语犀利问情事 希尔顿hold住全场";s:3:"url";s:49:"http://p.pomoho.com/play/dF93bWRheXkvMTg0NjAwMTQ$";}}[/attribute]<span style="color: rgb(119, 119, 119); font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(243, 243, 243); "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; ">猥亵男主持言语犀利问情事 希尔顿hold住全场。。字字珠玑，句句内涵。。太<span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: red; ">搞笑</span>了~</span></span><br />', 1, 83, 7, 7, 0, NULL, 0, 0, 1332042532);
INSERT INTO `th_blog` VALUES (144, 1, 0, 3, '爆笑', '', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:36:"attachs/12/3/18/144/t_1150551557.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]<span style="color: rgb(119, 119, 119); font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(243, 243, 243); "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; ">新版狄仁杰里最威猛的一段：李元芳：大人，后院发现一具无头男尸。狄仁杰：以我断定，此人已死！李元芳：大人未到现场就知此人已死，大人真乃神人也！</span></span>', 1, 125, 6, 6, 0, NULL, 0, 0, 1332042663);
INSERT INTO `th_blog` VALUES (145, 1, 0, 3, '爆笑', '谷歌地图的真相~~~', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:36:"attachs/12/3/18/145/t_1156251930.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 55, 7, 7, 0, NULL, 0, 0, 1332043001);
INSERT INTO `th_blog` VALUES (146, 1, 0, 3, '爆笑', '这个画家是想荷包蛋想疯了！~~', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:36:"attachs/12/3/18/146/t_1158013840.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 64, 2, 2, 0, NULL, 0, 0, 1332043098);
INSERT INTO `th_blog` VALUES (147, 1, 0, 3, '爆笑', '一次性火炉，你值得拥有！', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:36:"attachs/12/3/18/147/t_1201339741.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 120, 7, 7, 0, NULL, 0, 0, 1332043304);
INSERT INTO `th_blog` VALUES (148, 1, 0, 3, '性教育', '米国的性教育书籍~~~', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:36:"attachs/12/3/18/148/t_1206291555.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 74, 4, 4, 0, NULL, 0, 0, 1332043657);
INSERT INTO `th_blog` VALUES (149, 1, 0, 4, '爆笑', '此笑料必火！屌丝女士 Knallerfrauen', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:3:"ku6";s:3:"img";s:91:"http://vi1.ku6img.com/data1/p3//ku6video/2012/3/14/20/1334949803038_18481226_18481226/8.jpg";s:3:"pid";s:58:"http://player.ku6.com/refer/hNh-01QyHKidr4Cj5LXupw../v.swf";s:4:"desc";s:44:"此笑料必火！屌丝女士 Knallerfrauen";s:3:"url";s:51:"http://v.ku6.com/show/hNh-01QyHKidr4Cj5LXupw...html";}}[/attribute]<span style="color: rgb(119, 119, 119); font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(243, 243, 243); "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; ">哈哈笑死了，史上第一女屌丝不愧是憨豆传人，尼玛我笑的面膜崩烂了！</span></span>', 1, 109, 7, 7, 0, NULL, 0, 0, 1332056248);
INSERT INTO `th_blog` VALUES (150, 1, 0, 3, '爆笑', '年度最佳抢镜~~', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:36:"attachs/12/3/18/150/t_1618075978.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 147, 5, 5, 0, NULL, 0, 0, 1332058712);
INSERT INTO `th_blog` VALUES (151, 1, 0, 3, '爆笑', '亮点在……', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:36:"attachs/12/3/18/151/t_1621082838.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 107, 7, 6, 1, NULL, 0, 0, 1332058876);
INSERT INTO `th_blog` VALUES (152, 1, 0, 3, '爆笑', '右二，放开那些妹子！！！', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:36:"attachs/12/3/18/152/t_1623186427.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 115, 6, 6, 0, NULL, 0, 0, 1332059017);
INSERT INTO `th_blog` VALUES (153, 1, 0, 3, '爆笑', '哈哈', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:36:"attachs/12/3/18/153/t_1627137759.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 92, 6, 6, 0, NULL, 0, 0, 1332059287);
INSERT INTO `th_blog` VALUES (154, 1, 0, 3, '爆笑', '怎么从Trollface得到一个鲨鱼……', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:36:"attachs/12/3/18/154/t_1703021851.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 92, 6, 6, 0, NULL, 0, 0, 1332061404);
INSERT INTO `th_blog` VALUES (155, 1, 0, 3, '猜猜', '美国与墨西哥的交界处。你猜哪边是美国？', '[attribute]a:2:{s:3:"img";a:1:{i:0;a:2:{s:3:"url";s:36:"attachs/12/3/18/155/t_1826137782.jpg";s:4:"desc";s:0:"";}}s:5:"count";i:1;}[/attribute]', 1, 177, 8, 8, 0, NULL, 0, 0, 1332066391);
INSERT INTO `th_blog` VALUES (156, 1, 0, 4, '爆笑', '买iPhone 4S后千万别炫耀啊，太尼玛悲催了', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:5:"tudou";s:3:"img";s:37:"http://i2.tdimg.com/119/328/565/p.jpg";s:3:"pid";s:84:"http://www.tudou.com/v/iGAdbtQwLbQ/&resourceId=98556023_06_05_99&rpid=98556023/v.swf";s:4:"desc";s:54:"买iPhone 4S后千万别炫耀啊，太尼玛悲催了";s:3:"url";s:90:"http://www.tudou.com/programs/view/iGAdbtQwLbQ/?resourceId=98556023_06_05_99&rpid=98556023";}}[/attribute]<span style="color: rgb(119, 119, 119); font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(243, 243, 243); "><span style="font-style: normal; ">买iPhone 4S后千万别炫耀啊，太尼玛悲催了，最后那一锤笑喷我了<img src="http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/19/heia_org.gif" title="[偷笑]" alt="[偷笑]" type="face" style="border-style: initial; border-color: initial; " />&nbsp;<img src="http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/6a/laugh.gif" title="[哈哈]" alt="[哈哈]" type="face" style="border-style: initial; border-color: initial; " /></span></span>', 1, 150, 8, 8, 0, NULL, 0, 0, 1332066854);
INSERT INTO `th_blog` VALUES (157, 1, 0, 4, '爆笑', '《全民最大党》爆笑模仿灌篮高手_原画', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:5:"tudou";s:3:"img";s:37:"http://i4.tdimg.com/114/142/263/p.jpg";s:3:"pid";s:79:"http://www.tudou.com/v/Bz9Rdj3P6yc/dW5pb25faWQ9MTAwOTYzXzEwMDAwMV8wMV8wMQ/v.swf";s:4:"desc";s:52:"《全民最大党》爆笑模仿灌篮高手_原画";s:3:"url";s:84:"http://www.tudou.com/programs/view/Bz9Rdj3P6ycdW5pb25faWQ9MTAwOTYzXzEwMDAwMV8wMV8wMQ";}}[/attribute]<span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px; "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; "><span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px; "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; ">这回真的瞎了......大家觉的谁最像<a class="a_topic" href="http://s.weibo.com/weibo/%25E8%2599%258E%25E6%2589%2591%25E8%25A7%2586%25E9%25A2%2591" target="_blank" style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; text-decoration: none; color: rgb(0, 120, 182); word-break: break-all; white-space: normal; ">#虎扑视频#</a>《全民最大党》<span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: red; ">爆笑</span>模仿灌篮高手</span></span></span></span>', 1, 133, 3, 3, 0, NULL, 0, 0, 1333251721);
INSERT INTO `th_blog` VALUES (158, 24, 0, 1, '', '', '', -1, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `th_blog` VALUES (159, 1, 0, 4, '愚人节', '屌丝同庆愚人节之终极恶搞盘点TOP5', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:2:"56";s:3:"img";s:89:"http://img.v139.56.com/images/15/24/memoryxxiaoi56olo56i56.com_133324787786hd.jpg?j=20599";s:3:"pid";s:38:"http://player.56.com/v_NjcxOTUyNTY.swf";s:4:"desc";s:46:"屌丝同庆愚人节之终极恶搞盘点TOP5";s:3:"url";s:40:"http://www.56.com/u51/v_NjcxOTUyNTY.html";}}[/attribute]<span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px; "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; ">【愚人节特辑-屌丝同庆愚人节之终极恶搞盘点TOP5】9国口音英语的东北小伙儿+微博原生态名词之各种“体”+德剧《屌丝女士》<span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: red; ">爆笑</span>无尿点！+杜甫很忙！+神曲《最炫民族风》合辑&nbsp;</span></span>', 1, 60, 3, 3, 0, NULL, 0, 0, 1333251786);
INSERT INTO `th_blog` VALUES (160, 1, 0, 4, '爆笑', '潮汕爆笑喜剧：卖苹果-2010贺岁片', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:5:"youku";s:3:"img";s:86:"http://g3.ykimg.com/0100641F464B78B48A9BE10035EE3F33AAF96E-6F3F-6D18-6868-53E728526DA3";s:3:"pid";s:74:"http://player.youku.com/player.php/partnerid/XOTcy/sid/XMTUyMjkyMzMy/v.swf";s:4:"desc";s:44:"潮汕爆笑喜剧：卖苹果-2010贺岁片";s:3:"url";s:47:"http://v.youku.com/v_show/id_XMTUyMjkyMzMy.html";}}[/attribute]<span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px; "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; ">笑了着死、【视频：潮汕<span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: red; ">爆笑</span>喜剧：卖苹果-2010贺岁片】&nbsp;</span></span>', 1, 133, 3, 3, 0, NULL, 0, 0, 1333251948);
INSERT INTO `th_blog` VALUES (161, 1, 0, 4, '爆笑', '奖门人搭错线全集', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:5:"tudou";s:3:"img";s:39:"http://i4.tdimg.com/070/755/391/m35.jpg";s:3:"pid";s:71:"http://www.tudou.com/v/-zzKLXiGxQo/&resourceId=105639227_03_05_02/v.swf";s:4:"desc";s:24:"奖门人搭错线全集";s:3:"url";s:77:"http://www.tudou.com/programs/view/-zzKLXiGxQo/?resourceId=105639227_03_05_02";}}[/attribute]<span style="color: rgb(119, 119, 119); font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(243, 243, 243); "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; ">由头笑到落尾！！！<img src="http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/6a/laugh.gif" title="[哈哈]" alt="[哈哈]" type="face" style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-style: initial; border-color: initial; " />&nbsp;<img src="http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/6a/laugh.gif" title="[哈哈]" alt="[哈哈]" type="face" style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-style: initial; border-color: initial; " />&nbsp;<img src="http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/6a/laugh.gif" title="[哈哈]" alt="[哈哈]" type="face" style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-style: initial; border-color: initial; " />&nbsp;笑足20分钟！【掌门人《搭错线》合集】全部<span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: red; ">爆笑</span>片段，都有晒！！！<img src="http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/6a/laugh.gif" title="[哈哈]" alt="[哈哈]" type="face" style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-style: initial; border-color: initial; " />&nbsp;陈小春、林敏聪、卢海鹏。。。真系笑到你扑街！！！<img src="http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/cc/whh_org.gif" title="[哇哈哈]" alt="[哇哈哈]" type="face" style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-style: initial; border-color: initial; " />&nbsp;<img src="http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/cc/whh_org.gif" title="[哇哈哈]" alt="[哇哈哈]" type="face" style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-style: initial; border-color: initial; " />&nbsp;<img src="http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/cc/whh_org.gif" title="[哇哈哈]" alt="[哇哈哈]" type="face" style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-style: initial; border-color: initial; " />&nbsp;</span></span>', 1, 137, 3, 3, 0, NULL, 0, 0, 1333252011);
INSERT INTO `th_blog` VALUES (162, 1, 0, 4, '爆笑,求婚', '【远芳的故事】苏科大求婚门终成正果，你们闪婚的勇气是责任，也是幸福。【一格电影】', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:5:"tudou";s:3:"img";s:39:"http://i1.tdimg.com/123/798/910/m20.jpg";s:3:"pid";s:63:"http://www.tudou.com/v/0zTXYhcnoZ0/&resourceId=0_03_05_02/v.swf";s:4:"desc";s:120:"【远芳的故事】苏科大求婚门终成正果，你们闪婚的勇气是责任，也是幸福。【一格电影】";s:3:"url";s:69:"http://www.tudou.com/programs/view/0zTXYhcnoZ0/?resourceId=0_03_05_02";}}[/attribute]<span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px; "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; ">苏科大求婚门终成正果，轰动苏州的科大求婚门男女主角超浪漫婚礼。从片头开始<span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: red; ">爆笑</span>！从3分13秒开始泪流！！ “我给你的婚礼是一场很棒的电影”。</span></span>', 1, 141, 3, 3, 0, NULL, 0, 0, 1333252082);
INSERT INTO `th_blog` VALUES (163, 17, 0, 4, '清明节', '[拍客]你买墓地了吗', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:5:"youku";s:3:"img";s:86:"http://g3.ykimg.com/0100641F464F76BA86E22105EB2B101E8BC3E8-B799-F07D-D199-F8B1878C2735";s:3:"pid";s:74:"http://player.youku.com/player.php/partnerid/XOTcy/sid/XMzc0MjMwNDA4/v.swf";s:4:"desc";s:26:"[拍客]你买墓地了吗";s:3:"url";s:47:"http://v.youku.com/v_show/id_XMzc0MjMwNDA4.html";}}[/attribute]<span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px; "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: red; ">爆笑</span>+感动！！！！【视频：[拍客]你买墓地了吗】</span></span>', 1, 77, 1, 1, 0, NULL, 0, 0, 1333258863);
INSERT INTO `th_blog` VALUES (164, 1, 0, 4, '爆笑', '爆笑恶搞！电梯里怎么突然多了个人？', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:4:"sohu";s:3:"img";s:92:"http://201.img.pp.sohu.com.cn/images/video/2012/1/31/15/18/6_1361d6aa320g55_13739170_5_1.jpg";s:3:"pid";s:69:"http://share.vrs.sohu.com/my/v.swf&id=13739170&topBar=1&autoplay=true";s:4:"desc";s:51:"爆笑恶搞！电梯里怎么突然多了个人？";s:3:"url";s:35:"http://my.tv.sohu.com/u/vw/13739170";}}[/attribute]<span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px; "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: red; ">爆笑</span>恶搞！电梯里怎么突然多了个人？&nbsp;<a title="http://my.tv.sohu.com/u/vw/13739170" href="http://t.cn/zOPbVDu" target="_blank" action-data="title=%E7%88%86%E7%AC%91%E6%81%B6%E6%90%9E%EF%BC%81%E7%94%B5%E6%A2%AF%E9%87%8C%E6%80%8E%E4%B9%88%E7%AA%81%E7%84%B6%E5%A4%9A%E4%BA%86%E4%B8%AA%E4%BA%BA%EF%BC%9F&amp;short_url=http://t.cn/zOPbVDu&amp;full_url=http%3A%2F%2Fmy.tv.sohu.com%2Fu%2Fvw%2F13739170" action-type="feed_list_media_video" style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; text-decoration: none; color: rgb(0, 120, 182); word-break: break-all; ">http://t.cn/zOPbVDu<span class="feedico_vedio" style="margin-top: 0px; margin-right: 5px; margin-bottom: 0px; margin-left: 5px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; background-image: url(http://img.t.sinajs.cn/t4/appstyle/searchV41/images/common/ico.png?id=1324025955176); background-attachment: initial; background-origin: initial; background-clip: initial; background-color: initial; display: inline-block; width: 14px; height: 14px; background-position: 0px -2235px; background-repeat: no-repeat no-repeat; "></span></a>&nbsp;瞧瞧，人家这个幽默！！</span></span>', 1, 100, 0, 0, 0, NULL, 0, 0, 1333259112);
INSERT INTO `th_blog` VALUES (165, 1, 0, 1, '生活', '', '<span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px; "><span style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-style: normal; ">走老爸接孩子从家，路上孩子对他说：爸爸，我累了。 老爸对孩子说：咱俩数到三，爸爸就抱你走，行不行？ 孩子很高兴的答应了。然后，老爸大声说：预备——齐步走！1 2 1</span></span>', 1, 81, 0, 0, 0, NULL, 0, 0, 1333259207);
INSERT INTO `th_blog` VALUES (166, 25, 0, 4, '生生世世生生世世事实', '嘻哈四重奏08：愚人节', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:5:"youku";s:3:"img";s:86:"http://g1.ykimg.com/0100641F464F78244CCF9F06257BB61FB1AD1D-B35D-894F-ED0A-543A7887C500";s:3:"pid";s:74:"http://player.youku.com/player.php/partnerid/XOTcy/sid/XMzc0NDYyODk2/v.swf";s:4:"desc";s:29:"嘻哈四重奏08：愚人节";s:3:"url";s:47:"http://v.youku.com/v_show/id_XMzc0NDYyODk2.html";}}[/attribute] 生生世世事实', 1, 1, 1, 0, 0, NULL, 0, 0, 1333275002);
INSERT INTO `th_blog` VALUES (167, 1, 0, 4, '中国球迷', '中国球迷惹不起。30秒后全亮了，有曲有节奏。霸气外露', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:5:"tudou";s:3:"img";s:37:"http://i2.tdimg.com/115/141/521/p.jpg";s:3:"pid";s:70:"http://www.tudou.com/v/EB5gAOWkdIA/&resourceId=70555124_03_05_02/v.swf";s:4:"desc";s:74:"中国球迷惹不起。30秒后全亮了，有曲有节奏。霸气外露";s:3:"url";s:76:"http://www.tudou.com/programs/view/EB5gAOWkdIA/?resourceId=70555124_03_05_02";}}[/attribute]<span style="color: rgb(119, 119, 119); font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(243, 243, 243); "><span style="font-style: normal; ">【 中国球迷惹不起。30秒后全亮了，有曲有节奏！】裁判是个大傻B？？？球迷伤不起~！</span></span>', 1, 108, 0, 0, 0, NULL, 0, 0, 1333600612);
INSERT INTO `th_blog` VALUES (168, 1, 0, 4, '爆笑', '中国乒乓球史上最最精彩一幕', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:5:"tudou";s:3:"img";s:37:"http://i2.tdimg.com/118/936/029/p.jpg";s:3:"pid";s:70:"http://www.tudou.com/v/odeZCQwWEI0/&resourceId=78790812_06_05_99/v.swf";s:4:"desc";s:47:"中国乒乓球史上最最精彩一幕-320x240";s:3:"url";s:76:"http://www.tudou.com/programs/view/odeZCQwWEI0/?resourceId=78790812_06_05_99";}}[/attribute]<span style="color: rgb(119, 119, 119); font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(243, 243, 243); "><span style="font-style: normal; ">中国乒乓球史上最精彩的一幕，把我笑疯了。。。一定要睇啊！</span></span>', 1, 259, 0, 0, 0, NULL, 0, 0, 1333638050);
INSERT INTO `th_blog` VALUES (169, 1, 0, 4, '猫', '（ミ ิ ≖  ิ彡）', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:5:"youku";s:3:"img";s:86:"http://g1.ykimg.com/0100641F464E79BBB450C8053C0510BA6FB1F8-F809-B926-BC5F-A27369441683";s:3:"pid";s:74:"http://player.youku.com/player.php/partnerid/XOTcy/sid/XMzA2MDkyMTI0/v.swf";s:4:"desc";s:25:"（ミ ิ ≖  ิ彡）";s:3:"url";s:47:"http://v.youku.com/v_show/id_XMzA2MDkyMTI0.html";}}[/attribute]<span style="font-family: Verdana, 宋体, sans-serif; font-size: 13px; line-height: 19px; ">默默忍耐小狗折腾自己的猫</span>', 1, 92, 0, 0, 0, NULL, 0, 0, 1333763037);
INSERT INTO `th_blog` VALUES (170, 1, 0, 4, '爆笑', '安全套柔韧性测验', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:5:"tudou";s:3:"img";s:37:"http://i4.tdimg.com/058/356/459/p.jpg";s:3:"pid";s:40:"http://www.tudou.com/v/VS0TpfvqPqI/v.swf";s:4:"desc";s:24:"安全套柔韧性测验";s:3:"url";s:47:"http://www.tudou.com/programs/view/VS0TpfvqPqI/";}}[/attribute]<span style="color: rgb(119, 119, 119); font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(243, 243, 243); "><span style="font-style: normal; ">原来外国是这样测试安全套韧性的~~~无语~~~这事鬼佬才做得出。。</span></span>', 1, 81, 0, 0, 0, NULL, 0, 0, 1333854667);
INSERT INTO `th_blog` VALUES (171, 1, 0, 4, '狗狗', '哈士奇狗狗唱贾斯汀-比伯的歌', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:2:"56";s:3:"img";s:82:"http://img.v139.56.com/images/5/25/ckh56i56olo56i56.com_132151043233hd.jpg?j=33277";s:3:"pid";s:57:"http://player.56.com/v_NjQ3NTY0MDM.swf/880831_cdcly21.swf";s:4:"desc";s:40:"哈士奇狗狗唱贾斯汀-比伯的歌";s:3:"url";s:60:"http://www.56.com/u30/v_NjQ3NTY0MDM.html/880831_cdcly21.html";}}[/attribute]<span style="color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 22px; background-color: rgba(205, 206, 163, 0.949219); "><span style="font-style: normal; ">真正的200W都不卖的哈士奇，唱贾斯汀-比伯的歌，一张嘴，我就傻眼了！！完全在调啊有木有！！！真是神狗啊！！</span></span>', 1, 143, 0, 0, 0, NULL, 0, 0, 1334147235);
INSERT INTO `th_blog` VALUES (172, 1, 0, 4, '狗狗', '搞笑哈士奇狗狗和宝宝互相“飙歌”', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:2:"56";s:3:"img";s:93:"http://img.v155.56.com/images/26/12/lao123aai56olo56i56.com_sc_mp4_132607076492hd.jpg?j=72549";s:3:"pid";s:38:"http://player.56.com/v_NjU3NzU1NDU.swf";s:4:"desc";s:48:"搞笑哈士奇狗狗和宝宝互相“飙歌”";s:3:"url";s:40:"http://www.56.com/u44/v_NjU3NzU1NDU.html";}}[/attribute]搞笑哈士奇狗狗和宝宝互相“飙歌”', 1, 100, 1, 1, 0, NULL, 1, 0, 1334147334);
INSERT INTO `th_blog` VALUES (173, 1, 0, 4, '哈士奇', '台南现哈士奇拉同伴上街遛弯', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:2:"56";s:3:"img";s:93:"http://img.v140.56.com/images/10/20/iccidd12i56olo56i56.com_sc_mp4_132636239154hd.jpg?j=35972";s:3:"pid";s:38:"http://player.56.com/v_NjU4MzY1Mjk.swf";s:4:"desc";s:39:"台南现哈士奇拉同伴上街遛弯";s:3:"url";s:40:"http://www.56.com/u44/v_NjU4MzY1Mjk.html";}}[/attribute]台南现哈士奇拉同伴上街遛弯', 1, 76, 0, 0, 0, NULL, 1, 0, 1334147596);
INSERT INTO `th_blog` VALUES (174, 1, 0, 4, '可爱', '腿到用时方恨短，短腿萌熊猫的悲剧', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:3:"ku6";s:3:"img";s:89:"http://vi0.ku6img.com/data1/p4/ku6video/2012/4/23/8/1338384102898_21237391_21237391/1.jpg";s:3:"pid";s:58:"http://player.ku6.com/refer/VyBlEnHK8rHRNlp9B8pBkQ../v.swf";s:4:"desc";s:48:"腿到用时方恨短，短腿萌熊猫的悲剧";s:3:"url";s:51:"http://v.ku6.com/show/VyBlEnHK8rHRNlp9B8pBkQ...html";}}[/attribute]<span style="font-family: 微软雅黑, 宋体, ''Times New Roman'', Times, serif; line-height: 50px; ">腿到用时方恨短，短腿萌熊猫的悲剧&nbsp;</span><br />', 1, 128, 1, 0, 1, NULL, 0, 0, 1335677786);
INSERT INTO `th_blog` VALUES (175, 1, 0, 4, '哈哈', '爱情就是要死缠烂打，就是要屡败屡战，就是要越挫越通勇，这娃已经深得其要领精髓了', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:2:"56";s:3:"img";s:86:"http://img.v140.56.com/images/17/27/iccidd13i56olo56i56.com_133609912136hd.jpg?j=71355";s:3:"pid";s:62:"http://player.56.com/v_Njc5ODg5MjM.swf/880831_zhangleixmts.swf";s:4:"desc";s:117:"爱情就是要死缠烂打，就是要屡败屡战，就是要越挫越通勇，这娃已经深得其要领精髓了";s:3:"url";s:65:"http://www.56.com/u46/v_Njc5ODg5MjM.html/880831_zhangleixmts.html";}}[/attribute]<span style="color: rgb(119, 119, 119); font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(243, 243, 243); "><span style="font-style: normal; ">爱情就是要死缠烂打，就是要屡败屡战，就是要越挫越通勇，这娃已经深得</span></span>', 1, 91, 2, 2, 0, NULL, 1, 0, 1336294191);
INSERT INTO `th_blog` VALUES (176, 1, 0, 4, '碉堡', '美国的变形金刚 out 了看咱们中国的自行车[变形金刚]_0', '[attribute]a:1:{i:0;a:5:{s:4:"type";s:8:"baomihua";s:3:"img";s:54:"http://pic01.pomoho.com/grab_photo/201110/16432530.jpg";s:3:"pid";s:124:"http://resources.pomoho.com/swf/out_player.swf?flvid=16432530&domain=video.baomihua.com/16241048&qudao=qqzone&modulecode=001";s:4:"desc";s:72:"美国的变形金刚 out 了看咱们中国的自行车[变形金刚]_0";s:3:"url";s:43:"http://video.baomihua.com/16241048/16432530";}}[/attribute]<span style="color: rgb(119, 119, 119); font-family: Arial, Helvetica, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(243, 243, 243); "><span style="font-style: normal; ">美国的变形金刚 out 了看咱们中国的自行车[变形金刚]</span></span>', 1, 103, 2, 2, 0, NULL, 5, 0, 1336475662);
INSERT INTO `th_blog` VALUES (177, 27, 0, 1, '', '', '', -1, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `th_blog` VALUES (178, 30, 0, 1, '', '', '', -1, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `th_blog` VALUES (179, 31, 0, 1, '', '', '', -1, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `th_blog` VALUES (180, 32, 0, 1, '', '', '', -1, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `th_blog` VALUES (181, 33, 0, 1, '', '', '', -1, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `th_blog` VALUES (182, 34, 0, 1, '', '', '', -1, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `th_blog` VALUES (183, 1, 0, 1, '', '', '', -1, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `th_blog` VALUES (184, 26, 0, 1, '', '', '', -1, 0, 0, 0, 0, 0, 0, 0, 0);

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
) ENGINE=MyISAM AUTO_INCREMENT=873 DEFAULT CHARSET=utf8 AUTO_INCREMENT=873 ;

-- 
-- 导出表中的数据 `th_feeds`
-- 

INSERT INTO `th_feeds` VALUES (1, 16, 'likes', 2, '喜欢本内容', '', 1331866136);
INSERT INTO `th_feeds` VALUES (2, 15, 'likes', 2, '喜欢本内容', '', 1331866137);
INSERT INTO `th_feeds` VALUES (3, 14, 'likes', 2, '喜欢本内容', '', 1331866139);
INSERT INTO `th_feeds` VALUES (4, 13, 'likes', 2, '喜欢本内容', '', 1331866141);
INSERT INTO `th_feeds` VALUES (5, 12, 'likes', 2, '喜欢本内容', '', 1331866142);
INSERT INTO `th_feeds` VALUES (6, 11, 'likes', 2, '喜欢本内容', '', 1331866143);
INSERT INTO `th_feeds` VALUES (7, 10, 'likes', 2, '喜欢本内容', '', 1331866145);
INSERT INTO `th_feeds` VALUES (8, 9, 'likes', 2, '喜欢本内容', '', 1331866145);
INSERT INTO `th_feeds` VALUES (9, 8, 'likes', 2, '喜欢本内容', '', 1331866148);
INSERT INTO `th_feeds` VALUES (10, 7, 'likes', 2, '喜欢本内容', '', 1331866150);
INSERT INTO `th_feeds` VALUES (11, 6, 'likes', 2, '喜欢本内容', '', 1331866154);
INSERT INTO `th_feeds` VALUES (12, 5, 'likes', 2, '喜欢本内容', '', 1331866156);
INSERT INTO `th_feeds` VALUES (13, 4, 'likes', 2, '喜欢本内容', '', 1331866158);
INSERT INTO `th_feeds` VALUES (14, 3, 'likes', 2, '喜欢本内容', '', 1331866159);
INSERT INTO `th_feeds` VALUES (15, 1, 'likes', 2, '喜欢本内容', '', 1331866160);
INSERT INTO `th_feeds` VALUES (16, 2, 'likes', 2, '喜欢本内容', '', 1331866161);
INSERT INTO `th_feeds` VALUES (17, 31, 'likes', 3, '喜欢本内容', '', 1331867414);
INSERT INTO `th_feeds` VALUES (18, 30, 'likes', 3, '喜欢本内容', '', 1331867418);
INSERT INTO `th_feeds` VALUES (19, 29, 'likes', 3, '喜欢本内容', '', 1331867421);
INSERT INTO `th_feeds` VALUES (20, 28, 'likes', 3, '喜欢本内容', '', 1331867422);
INSERT INTO `th_feeds` VALUES (21, 27, 'likes', 3, '喜欢本内容', '', 1331867424);
INSERT INTO `th_feeds` VALUES (22, 26, 'likes', 3, '喜欢本内容', '', 1331867427);
INSERT INTO `th_feeds` VALUES (23, 24, 'likes', 3, '喜欢本内容', '', 1331867429);
INSERT INTO `th_feeds` VALUES (24, 25, 'likes', 3, '喜欢本内容', '', 1331867431);
INSERT INTO `th_feeds` VALUES (25, 22, 'likes', 3, '喜欢本内容', '', 1331867431);
INSERT INTO `th_feeds` VALUES (26, 20, 'likes', 3, '喜欢本内容', '', 1331867437);
INSERT INTO `th_feeds` VALUES (27, 21, 'likes', 3, '喜欢本内容', '', 1331867437);
INSERT INTO `th_feeds` VALUES (28, 19, 'likes', 3, '喜欢本内容', '', 1331867439);
INSERT INTO `th_feeds` VALUES (29, 18, 'likes', 3, '喜欢本内容', '', 1331867443);
INSERT INTO `th_feeds` VALUES (30, 17, 'likes', 3, '喜欢本内容', '', 1331867443);
INSERT INTO `th_feeds` VALUES (31, 16, 'likes', 3, '喜欢本内容', '', 1331867445);
INSERT INTO `th_feeds` VALUES (32, 15, 'likes', 3, '喜欢本内容', '', 1331867447);
INSERT INTO `th_feeds` VALUES (33, 14, 'likes', 3, '喜欢本内容', '', 1331867449);
INSERT INTO `th_feeds` VALUES (34, 13, 'likes', 3, '喜欢本内容', '', 1331867451);
INSERT INTO `th_feeds` VALUES (35, 12, 'likes', 3, '喜欢本内容', '', 1331867453);
INSERT INTO `th_feeds` VALUES (36, 11, 'likes', 3, '喜欢本内容', '', 1331867461);
INSERT INTO `th_feeds` VALUES (37, 9, 'likes', 3, '喜欢本内容', '', 1331867462);
INSERT INTO `th_feeds` VALUES (38, 10, 'likes', 3, '喜欢本内容', '', 1331867464);
INSERT INTO `th_feeds` VALUES (39, 8, 'likes', 3, '喜欢本内容', '', 1331867464);
INSERT INTO `th_feeds` VALUES (40, 7, 'likes', 3, '喜欢本内容', '', 1331867466);
INSERT INTO `th_feeds` VALUES (41, 6, 'likes', 3, '喜欢本内容', '', 1331867467);
INSERT INTO `th_feeds` VALUES (42, 4, 'likes', 3, '喜欢本内容', '', 1331867471);
INSERT INTO `th_feeds` VALUES (43, 3, 'likes', 3, '喜欢本内容', '', 1331867474);
INSERT INTO `th_feeds` VALUES (44, 2, 'likes', 3, '喜欢本内容', '', 1331867475);
INSERT INTO `th_feeds` VALUES (45, 1, 'likes', 3, '喜欢本内容', '', 1331867483);
INSERT INTO `th_feeds` VALUES (46, 33, 'likes', 1, '喜欢本内容', '', 1331868030);
INSERT INTO `th_feeds` VALUES (47, 32, 'likes', 1, '喜欢本内容', '', 1331868032);
INSERT INTO `th_feeds` VALUES (48, 31, 'likes', 1, '喜欢本内容', '', 1331868036);
INSERT INTO `th_feeds` VALUES (49, 30, 'likes', 1, '喜欢本内容', '', 1331868042);
INSERT INTO `th_feeds` VALUES (50, 29, 'likes', 1, '喜欢本内容', '', 1331868045);
INSERT INTO `th_feeds` VALUES (51, 28, 'likes', 1, '喜欢本内容', '', 1331868045);
INSERT INTO `th_feeds` VALUES (52, 27, 'likes', 1, '喜欢本内容', '', 1331868046);
INSERT INTO `th_feeds` VALUES (53, 26, 'likes', 1, '喜欢本内容', '', 1331868049);
INSERT INTO `th_feeds` VALUES (54, 25, 'likes', 1, '喜欢本内容', '', 1331868050);
INSERT INTO `th_feeds` VALUES (55, 24, 'likes', 1, '喜欢本内容', '', 1331868051);
INSERT INTO `th_feeds` VALUES (56, 23, 'likes', 1, '喜欢本内容', '', 1331868055);
INSERT INTO `th_feeds` VALUES (57, 22, 'likes', 1, '喜欢本内容', '', 1331868057);
INSERT INTO `th_feeds` VALUES (58, 21, 'likes', 1, '喜欢本内容', '', 1331868058);
INSERT INTO `th_feeds` VALUES (59, 20, 'likes', 1, '喜欢本内容', '', 1331868058);
INSERT INTO `th_feeds` VALUES (60, 18, 'likes', 1, '喜欢本内容', '', 1331868063);
INSERT INTO `th_feeds` VALUES (61, 19, 'likes', 1, '喜欢本内容', '', 1331868063);
INSERT INTO `th_feeds` VALUES (62, 17, 'likes', 1, '喜欢本内容', '', 1331868065);
INSERT INTO `th_feeds` VALUES (63, 33, 'likes', 4, '喜欢本内容', '', 1331868137);
INSERT INTO `th_feeds` VALUES (64, 32, 'likes', 4, '喜欢本内容', '', 1331868140);
INSERT INTO `th_feeds` VALUES (65, 31, 'likes', 4, '喜欢本内容', '', 1331868141);
INSERT INTO `th_feeds` VALUES (66, 30, 'likes', 4, '喜欢本内容', '', 1331868144);
INSERT INTO `th_feeds` VALUES (67, 29, 'likes', 4, '喜欢本内容', '', 1331868146);
INSERT INTO `th_feeds` VALUES (68, 28, 'likes', 4, '喜欢本内容', '', 1331868147);
INSERT INTO `th_feeds` VALUES (69, 27, 'likes', 4, '喜欢本内容', '', 1331868149);
INSERT INTO `th_feeds` VALUES (70, 26, 'likes', 4, '喜欢本内容', '', 1331868152);
INSERT INTO `th_feeds` VALUES (71, 25, 'likes', 4, '喜欢本内容', '', 1331868155);
INSERT INTO `th_feeds` VALUES (72, 24, 'likes', 4, '喜欢本内容', '', 1331868156);
INSERT INTO `th_feeds` VALUES (73, 23, 'likes', 4, '喜欢本内容', '', 1331868159);
INSERT INTO `th_feeds` VALUES (74, 22, 'likes', 4, '喜欢本内容', '', 1331868160);
INSERT INTO `th_feeds` VALUES (75, 21, 'likes', 4, '喜欢本内容', '', 1331868162);
INSERT INTO `th_feeds` VALUES (76, 19, 'likes', 4, '喜欢本内容', '', 1331868166);
INSERT INTO `th_feeds` VALUES (77, 20, 'likes', 4, '喜欢本内容', '', 1331868168);
INSERT INTO `th_feeds` VALUES (78, 18, 'likes', 4, '喜欢本内容', '', 1331868169);
INSERT INTO `th_feeds` VALUES (79, 16, 'likes', 4, '喜欢本内容', '', 1331868171);
INSERT INTO `th_feeds` VALUES (80, 15, 'likes', 4, '喜欢本内容', '', 1331868173);
INSERT INTO `th_feeds` VALUES (81, 14, 'likes', 4, '喜欢本内容', '', 1331868173);
INSERT INTO `th_feeds` VALUES (82, 13, 'likes', 4, '喜欢本内容', '', 1331868180);
INSERT INTO `th_feeds` VALUES (83, 12, 'likes', 4, '喜欢本内容', '', 1331868182);
INSERT INTO `th_feeds` VALUES (84, 11, 'likes', 4, '喜欢本内容', '', 1331868183);
INSERT INTO `th_feeds` VALUES (85, 10, 'likes', 4, '喜欢本内容', '', 1331868184);
INSERT INTO `th_feeds` VALUES (86, 8, 'likes', 4, '喜欢本内容', '', 1331868186);
INSERT INTO `th_feeds` VALUES (87, 9, 'likes', 4, '喜欢本内容', '', 1331868186);
INSERT INTO `th_feeds` VALUES (88, 7, 'likes', 4, '喜欢本内容', '', 1331868188);
INSERT INTO `th_feeds` VALUES (89, 6, 'likes', 4, '喜欢本内容', '', 1331868189);
INSERT INTO `th_feeds` VALUES (90, 5, 'likes', 4, '喜欢本内容', '', 1331868191);
INSERT INTO `th_feeds` VALUES (91, 4, 'likes', 4, '喜欢本内容', '', 1331868193);
INSERT INTO `th_feeds` VALUES (92, 3, 'likes', 4, '喜欢本内容', '', 1331868196);
INSERT INTO `th_feeds` VALUES (93, 2, 'likes', 4, '喜欢本内容', '', 1331868199);
INSERT INTO `th_feeds` VALUES (94, 1, 'likes', 4, '喜欢本内容', '', 1331868203);
INSERT INTO `th_feeds` VALUES (95, 36, 'likes', 5, '喜欢本内容', '', 1331868552);
INSERT INTO `th_feeds` VALUES (96, 35, 'likes', 5, '喜欢本内容', '', 1331868554);
INSERT INTO `th_feeds` VALUES (97, 34, 'likes', 5, '喜欢本内容', '', 1331868555);
INSERT INTO `th_feeds` VALUES (98, 33, 'likes', 5, '喜欢本内容', '', 1331868557);
INSERT INTO `th_feeds` VALUES (99, 32, 'likes', 5, '喜欢本内容', '', 1331868560);
INSERT INTO `th_feeds` VALUES (100, 31, 'likes', 5, '喜欢本内容', '', 1331868561);
INSERT INTO `th_feeds` VALUES (101, 30, 'likes', 5, '喜欢本内容', '', 1331868564);
INSERT INTO `th_feeds` VALUES (102, 29, 'likes', 5, '喜欢本内容', '', 1331868564);
INSERT INTO `th_feeds` VALUES (103, 28, 'likes', 5, '喜欢本内容', '', 1331868566);
INSERT INTO `th_feeds` VALUES (104, 27, 'likes', 5, '喜欢本内容', '', 1331868568);
INSERT INTO `th_feeds` VALUES (105, 26, 'likes', 5, '喜欢本内容', '', 1331868573);
INSERT INTO `th_feeds` VALUES (106, 24, 'likes', 5, '喜欢本内容', '', 1331868575);
INSERT INTO `th_feeds` VALUES (107, 25, 'likes', 5, '喜欢本内容', '', 1331868575);
INSERT INTO `th_feeds` VALUES (108, 22, 'likes', 5, '喜欢本内容', '', 1331868578);
INSERT INTO `th_feeds` VALUES (109, 20, 'likes', 5, '喜欢本内容', '', 1331868579);
INSERT INTO `th_feeds` VALUES (110, 19, 'likes', 5, '喜欢本内容', '', 1331868580);
INSERT INTO `th_feeds` VALUES (111, 18, 'likes', 5, '喜欢本内容', '', 1331868581);
INSERT INTO `th_feeds` VALUES (112, 17, 'likes', 5, '喜欢本内容', '', 1331868584);
INSERT INTO `th_feeds` VALUES (113, 16, 'likes', 5, '喜欢本内容', '', 1331868588);
INSERT INTO `th_feeds` VALUES (114, 15, 'likes', 5, '喜欢本内容', '', 1331868588);
INSERT INTO `th_feeds` VALUES (115, 14, 'likes', 5, '喜欢本内容', '', 1331868590);
INSERT INTO `th_feeds` VALUES (116, 13, 'likes', 5, '喜欢本内容', '', 1331868591);
INSERT INTO `th_feeds` VALUES (117, 12, 'likes', 5, '喜欢本内容', '', 1331868596);
INSERT INTO `th_feeds` VALUES (118, 11, 'likes', 5, '喜欢本内容', '', 1331868597);
INSERT INTO `th_feeds` VALUES (119, 9, 'likes', 5, '喜欢本内容', '', 1331868598);
INSERT INTO `th_feeds` VALUES (120, 10, 'likes', 5, '喜欢本内容', '', 1331868600);
INSERT INTO `th_feeds` VALUES (121, 8, 'likes', 5, '喜欢本内容', '', 1331868600);
INSERT INTO `th_feeds` VALUES (122, 7, 'likes', 5, '喜欢本内容', '', 1331868602);
INSERT INTO `th_feeds` VALUES (123, 6, 'likes', 5, '喜欢本内容', '', 1331868604);
INSERT INTO `th_feeds` VALUES (124, 5, 'likes', 5, '喜欢本内容', '', 1331868607);
INSERT INTO `th_feeds` VALUES (125, 4, 'likes', 5, '喜欢本内容', '', 1331868608);
INSERT INTO `th_feeds` VALUES (126, 2, 'likes', 5, '喜欢本内容', '', 1331868612);
INSERT INTO `th_feeds` VALUES (127, 3, 'likes', 5, '喜欢本内容', '', 1331868613);
INSERT INTO `th_feeds` VALUES (128, 1, 'likes', 5, '喜欢本内容', '', 1331868614);
INSERT INTO `th_feeds` VALUES (129, 36, 'likes', 6, '喜欢本内容', '', 1331868684);
INSERT INTO `th_feeds` VALUES (130, 35, 'likes', 6, '喜欢本内容', '', 1331868687);
INSERT INTO `th_feeds` VALUES (131, 34, 'likes', 6, '喜欢本内容', '', 1331868688);
INSERT INTO `th_feeds` VALUES (132, 33, 'likes', 6, '喜欢本内容', '', 1331868691);
INSERT INTO `th_feeds` VALUES (133, 32, 'likes', 6, '喜欢本内容', '', 1331868695);
INSERT INTO `th_feeds` VALUES (134, 31, 'likes', 6, '喜欢本内容', '', 1331868697);
INSERT INTO `th_feeds` VALUES (135, 30, 'likes', 6, '喜欢本内容', '', 1331868697);
INSERT INTO `th_feeds` VALUES (136, 29, 'likes', 6, '喜欢本内容', '', 1331868697);
INSERT INTO `th_feeds` VALUES (137, 28, 'likes', 6, '喜欢本内容', '', 1331868699);
INSERT INTO `th_feeds` VALUES (138, 27, 'likes', 6, '喜欢本内容', '', 1331868700);
INSERT INTO `th_feeds` VALUES (139, 26, 'likes', 6, '喜欢本内容', '', 1331868707);
INSERT INTO `th_feeds` VALUES (140, 25, 'likes', 6, '喜欢本内容', '', 1331868711);
INSERT INTO `th_feeds` VALUES (141, 24, 'likes', 6, '喜欢本内容', '', 1331868712);
INSERT INTO `th_feeds` VALUES (142, 23, 'likes', 6, '喜欢本内容', '', 1331868714);
INSERT INTO `th_feeds` VALUES (143, 22, 'likes', 6, '喜欢本内容', '', 1331868718);
INSERT INTO `th_feeds` VALUES (144, 20, 'likes', 6, '喜欢本内容', '', 1331868719);
INSERT INTO `th_feeds` VALUES (145, 21, 'likes', 6, '喜欢本内容', '', 1331868721);
INSERT INTO `th_feeds` VALUES (146, 19, 'likes', 6, '喜欢本内容', '', 1331868721);
INSERT INTO `th_feeds` VALUES (147, 18, 'likes', 6, '喜欢本内容', '', 1331868722);
INSERT INTO `th_feeds` VALUES (148, 17, 'likes', 6, '喜欢本内容', '', 1331868722);
INSERT INTO `th_feeds` VALUES (149, 16, 'likes', 6, '喜欢本内容', '', 1331868727);
INSERT INTO `th_feeds` VALUES (150, 15, 'likes', 6, '喜欢本内容', '', 1331868731);
INSERT INTO `th_feeds` VALUES (151, 14, 'likes', 6, '喜欢本内容', '', 1331868732);
INSERT INTO `th_feeds` VALUES (152, 13, 'likes', 6, '喜欢本内容', '', 1331868736);
INSERT INTO `th_feeds` VALUES (153, 11, 'likes', 6, '喜欢本内容', '', 1331868736);
INSERT INTO `th_feeds` VALUES (154, 12, 'likes', 6, '喜欢本内容', '', 1331868738);
INSERT INTO `th_feeds` VALUES (155, 10, 'likes', 6, '喜欢本内容', '', 1331868739);
INSERT INTO `th_feeds` VALUES (156, 9, 'likes', 6, '喜欢本内容', '', 1331868739);
INSERT INTO `th_feeds` VALUES (157, 8, 'likes', 6, '喜欢本内容', '', 1331868740);
INSERT INTO `th_feeds` VALUES (158, 7, 'likes', 6, '喜欢本内容', '', 1331868745);
INSERT INTO `th_feeds` VALUES (159, 6, 'likes', 6, '喜欢本内容', '', 1331868752);
INSERT INTO `th_feeds` VALUES (160, 5, 'likes', 6, '喜欢本内容', '', 1331868753);
INSERT INTO `th_feeds` VALUES (161, 4, 'likes', 6, '喜欢本内容', '', 1331868755);
INSERT INTO `th_feeds` VALUES (162, 3, 'likes', 6, '喜欢本内容', '', 1331868756);
INSERT INTO `th_feeds` VALUES (163, 1, 'likes', 6, '喜欢本内容', '', 1331868758);
INSERT INTO `th_feeds` VALUES (164, 42, 'likes', 7, '喜欢本内容', '', 1331876663);
INSERT INTO `th_feeds` VALUES (165, 41, 'likes', 7, '喜欢本内容', '', 1331876667);
INSERT INTO `th_feeds` VALUES (166, 40, 'likes', 7, '喜欢本内容', '', 1331876668);
INSERT INTO `th_feeds` VALUES (167, 38, 'likes', 7, '喜欢本内容', '', 1331876671);
INSERT INTO `th_feeds` VALUES (168, 37, 'likes', 7, '喜欢本内容', '', 1331876672);
INSERT INTO `th_feeds` VALUES (169, 36, 'likes', 7, '喜欢本内容', '', 1331876674);
INSERT INTO `th_feeds` VALUES (170, 35, 'likes', 7, '喜欢本内容', '', 1331876676);
INSERT INTO `th_feeds` VALUES (171, 34, 'likes', 7, '喜欢本内容', '', 1331876679);
INSERT INTO `th_feeds` VALUES (172, 33, 'likes', 7, '喜欢本内容', '', 1331876681);
INSERT INTO `th_feeds` VALUES (173, 32, 'likes', 7, '喜欢本内容', '', 1331876690);
INSERT INTO `th_feeds` VALUES (174, 31, 'likes', 7, '喜欢本内容', '', 1331876692);
INSERT INTO `th_feeds` VALUES (175, 30, 'likes', 7, '喜欢本内容', '', 1331876698);
INSERT INTO `th_feeds` VALUES (176, 29, 'likes', 7, '喜欢本内容', '', 1331876702);
INSERT INTO `th_feeds` VALUES (177, 28, 'likes', 7, '喜欢本内容', '', 1331876704);
INSERT INTO `th_feeds` VALUES (178, 27, 'likes', 7, '喜欢本内容', '', 1331876707);
INSERT INTO `th_feeds` VALUES (179, 25, 'likes', 7, '喜欢本内容', '', 1331876717);
INSERT INTO `th_feeds` VALUES (180, 23, 'likes', 7, '喜欢本内容', '', 1331876720);
INSERT INTO `th_feeds` VALUES (181, 22, 'likes', 7, '喜欢本内容', '', 1331876724);
INSERT INTO `th_feeds` VALUES (182, 21, 'likes', 7, '喜欢本内容', '', 1331876726);
INSERT INTO `th_feeds` VALUES (183, 20, 'likes', 7, '喜欢本内容', '', 1331876728);
INSERT INTO `th_feeds` VALUES (184, 19, 'likes', 7, '喜欢本内容', '', 1331876729);
INSERT INTO `th_feeds` VALUES (185, 18, 'likes', 7, '喜欢本内容', '', 1331876731);
INSERT INTO `th_feeds` VALUES (186, 17, 'likes', 7, '喜欢本内容', '', 1331876733);
INSERT INTO `th_feeds` VALUES (187, 13, 'likes', 7, '喜欢本内容', '', 1331876859);
INSERT INTO `th_feeds` VALUES (188, 42, 'likes', 10, '喜欢本内容', '', 1331902499);
INSERT INTO `th_feeds` VALUES (189, 38, 'likes', 10, '喜欢本内容', '', 1331902526);
INSERT INTO `th_feeds` VALUES (190, 25, 'likes', 12, '喜欢本内容', '', 1331909711);
INSERT INTO `th_feeds` VALUES (191, 96, 'likes', 7, '喜欢本内容', '', 1331979520);
INSERT INTO `th_feeds` VALUES (192, 95, 'likes', 7, '喜欢本内容', '', 1331979522);
INSERT INTO `th_feeds` VALUES (193, 94, 'likes', 7, '喜欢本内容', '', 1331979523);
INSERT INTO `th_feeds` VALUES (194, 93, 'likes', 7, '喜欢本内容', '', 1331979524);
INSERT INTO `th_feeds` VALUES (195, 92, 'likes', 7, '喜欢本内容', '', 1331979526);
INSERT INTO `th_feeds` VALUES (196, 91, 'likes', 7, '喜欢本内容', '', 1331979528);
INSERT INTO `th_feeds` VALUES (197, 90, 'likes', 7, '喜欢本内容', '', 1331979530);
INSERT INTO `th_feeds` VALUES (198, 89, 'likes', 7, '喜欢本内容', '', 1331979531);
INSERT INTO `th_feeds` VALUES (199, 87, 'likes', 7, '喜欢本内容', '', 1331979534);
INSERT INTO `th_feeds` VALUES (200, 86, 'likes', 7, '喜欢本内容', '', 1331979538);
INSERT INTO `th_feeds` VALUES (201, 85, 'likes', 7, '喜欢本内容', '', 1331979540);
INSERT INTO `th_feeds` VALUES (202, 84, 'likes', 7, '喜欢本内容', '', 1331979543);
INSERT INTO `th_feeds` VALUES (203, 83, 'likes', 7, '喜欢本内容', '', 1331979544);
INSERT INTO `th_feeds` VALUES (204, 82, 'likes', 7, '喜欢本内容', '', 1331979546);
INSERT INTO `th_feeds` VALUES (205, 80, 'likes', 7, '喜欢本内容', '', 1331979548);
INSERT INTO `th_feeds` VALUES (206, 79, 'likes', 7, '喜欢本内容', '', 1331979549);
INSERT INTO `th_feeds` VALUES (207, 78, 'likes', 7, '喜欢本内容', '', 1331979550);
INSERT INTO `th_feeds` VALUES (208, 77, 'likes', 7, '喜欢本内容', '', 1331979552);
INSERT INTO `th_feeds` VALUES (209, 76, 'likes', 7, '喜欢本内容', '', 1331979553);
INSERT INTO `th_feeds` VALUES (210, 75, 'likes', 7, '喜欢本内容', '', 1331979558);
INSERT INTO `th_feeds` VALUES (211, 74, 'likes', 7, '喜欢本内容', '', 1331979559);
INSERT INTO `th_feeds` VALUES (212, 73, 'likes', 7, '喜欢本内容', '', 1331979560);
INSERT INTO `th_feeds` VALUES (213, 72, 'likes', 7, '喜欢本内容', '', 1331979561);
INSERT INTO `th_feeds` VALUES (214, 71, 'likes', 7, '喜欢本内容', '', 1331979563);
INSERT INTO `th_feeds` VALUES (215, 70, 'likes', 7, '喜欢本内容', '', 1331979565);
INSERT INTO `th_feeds` VALUES (216, 69, 'likes', 7, '喜欢本内容', '', 1331979566);
INSERT INTO `th_feeds` VALUES (217, 67, 'likes', 7, '喜欢本内容', '', 1331979569);
INSERT INTO `th_feeds` VALUES (218, 66, 'likes', 7, '喜欢本内容', '', 1331979571);
INSERT INTO `th_feeds` VALUES (219, 65, 'likes', 7, '喜欢本内容', '', 1331979577);
INSERT INTO `th_feeds` VALUES (220, 55, 'likes', 7, '喜欢本内容', '', 1331979579);
INSERT INTO `th_feeds` VALUES (221, 64, 'likes', 7, '喜欢本内容', '', 1331979581);
INSERT INTO `th_feeds` VALUES (222, 63, 'likes', 7, '喜欢本内容', '', 1331979583);
INSERT INTO `th_feeds` VALUES (223, 62, 'likes', 7, '喜欢本内容', '', 1331979584);
INSERT INTO `th_feeds` VALUES (224, 61, 'likes', 7, '喜欢本内容', '', 1331979586);
INSERT INTO `th_feeds` VALUES (225, 60, 'likes', 7, '喜欢本内容', '', 1331979587);
INSERT INTO `th_feeds` VALUES (226, 59, 'likes', 7, '喜欢本内容', '', 1331979589);
INSERT INTO `th_feeds` VALUES (227, 58, 'likes', 7, '喜欢本内容', '', 1331979590);
INSERT INTO `th_feeds` VALUES (228, 57, 'likes', 7, '喜欢本内容', '', 1331979591);
INSERT INTO `th_feeds` VALUES (229, 56, 'likes', 7, '喜欢本内容', '', 1331979594);
INSERT INTO `th_feeds` VALUES (230, 54, 'likes', 7, '喜欢本内容', '', 1331979596);
INSERT INTO `th_feeds` VALUES (231, 53, 'likes', 7, '喜欢本内容', '', 1331979598);
INSERT INTO `th_feeds` VALUES (232, 52, 'likes', 7, '喜欢本内容', '', 1331979599);
INSERT INTO `th_feeds` VALUES (233, 51, 'likes', 7, '喜欢本内容', '', 1331979601);
INSERT INTO `th_feeds` VALUES (234, 50, 'likes', 7, '喜欢本内容', '', 1331979603);
INSERT INTO `th_feeds` VALUES (235, 49, 'likes', 7, '喜欢本内容', '', 1331979604);
INSERT INTO `th_feeds` VALUES (236, 48, 'likes', 7, '喜欢本内容', '', 1331979605);
INSERT INTO `th_feeds` VALUES (237, 47, 'likes', 7, '喜欢本内容', '', 1331979607);
INSERT INTO `th_feeds` VALUES (238, 45, 'likes', 7, '喜欢本内容', '', 1331979608);
INSERT INTO `th_feeds` VALUES (239, 44, 'likes', 7, '喜欢本内容', '', 1331979611);
INSERT INTO `th_feeds` VALUES (240, 43, 'likes', 7, '喜欢本内容', '', 1331979613);
INSERT INTO `th_feeds` VALUES (241, 96, 'likes', 15, '喜欢本内容', '', 1331979692);
INSERT INTO `th_feeds` VALUES (242, 95, 'likes', 15, '喜欢本内容', '', 1331979693);
INSERT INTO `th_feeds` VALUES (243, 94, 'likes', 15, '喜欢本内容', '', 1331979694);
INSERT INTO `th_feeds` VALUES (244, 93, 'likes', 15, '喜欢本内容', '', 1331979695);
INSERT INTO `th_feeds` VALUES (245, 92, 'likes', 15, '喜欢本内容', '', 1331979697);
INSERT INTO `th_feeds` VALUES (246, 91, 'likes', 15, '喜欢本内容', '', 1331979698);
INSERT INTO `th_feeds` VALUES (247, 90, 'likes', 15, '喜欢本内容', '', 1331979700);
INSERT INTO `th_feeds` VALUES (248, 89, 'likes', 15, '喜欢本内容', '', 1331979701);
INSERT INTO `th_feeds` VALUES (249, 88, 'likes', 15, '喜欢本内容', '', 1331979703);
INSERT INTO `th_feeds` VALUES (250, 87, 'likes', 15, '喜欢本内容', '', 1331979704);
INSERT INTO `th_feeds` VALUES (251, 86, 'likes', 15, '喜欢本内容', '', 1331979708);
INSERT INTO `th_feeds` VALUES (252, 85, 'likes', 15, '喜欢本内容', '', 1331979709);
INSERT INTO `th_feeds` VALUES (253, 84, 'likes', 15, '喜欢本内容', '', 1331979711);
INSERT INTO `th_feeds` VALUES (254, 82, 'likes', 15, '喜欢本内容', '', 1331979712);
INSERT INTO `th_feeds` VALUES (255, 83, 'likes', 15, '喜欢本内容', '', 1331979714);
INSERT INTO `th_feeds` VALUES (256, 80, 'likes', 15, '喜欢本内容', '', 1331979716);
INSERT INTO `th_feeds` VALUES (257, 79, 'likes', 15, '喜欢本内容', '', 1331979718);
INSERT INTO `th_feeds` VALUES (258, 77, 'likes', 15, '喜欢本内容', '', 1331979719);
INSERT INTO `th_feeds` VALUES (259, 76, 'likes', 15, '喜欢本内容', '', 1331979720);
INSERT INTO `th_feeds` VALUES (260, 75, 'likes', 15, '喜欢本内容', '', 1331979723);
INSERT INTO `th_feeds` VALUES (261, 74, 'likes', 15, '喜欢本内容', '', 1331979724);
INSERT INTO `th_feeds` VALUES (262, 73, 'likes', 15, '喜欢本内容', '', 1331979726);
INSERT INTO `th_feeds` VALUES (263, 72, 'likes', 15, '喜欢本内容', '', 1331979727);
INSERT INTO `th_feeds` VALUES (264, 71, 'likes', 15, '喜欢本内容', '', 1331979728);
INSERT INTO `th_feeds` VALUES (265, 70, 'likes', 15, '喜欢本内容', '', 1331979729);
INSERT INTO `th_feeds` VALUES (266, 69, 'likes', 15, '喜欢本内容', '', 1331979730);
INSERT INTO `th_feeds` VALUES (267, 67, 'likes', 15, '喜欢本内容', '', 1331979733);
INSERT INTO `th_feeds` VALUES (268, 66, 'likes', 15, '喜欢本内容', '', 1331979734);
INSERT INTO `th_feeds` VALUES (269, 55, 'likes', 15, '喜欢本内容', '', 1331979740);
INSERT INTO `th_feeds` VALUES (270, 64, 'likes', 15, '喜欢本内容', '', 1331979741);
INSERT INTO `th_feeds` VALUES (271, 63, 'likes', 15, '喜欢本内容', '', 1331979743);
INSERT INTO `th_feeds` VALUES (272, 62, 'likes', 15, '喜欢本内容', '', 1331979745);
INSERT INTO `th_feeds` VALUES (273, 61, 'likes', 15, '喜欢本内容', '', 1331979746);
INSERT INTO `th_feeds` VALUES (274, 60, 'likes', 15, '喜欢本内容', '', 1331979749);
INSERT INTO `th_feeds` VALUES (275, 59, 'likes', 15, '喜欢本内容', '', 1331979750);
INSERT INTO `th_feeds` VALUES (276, 58, 'likes', 15, '喜欢本内容', '', 1331979752);
INSERT INTO `th_feeds` VALUES (277, 57, 'likes', 15, '喜欢本内容', '', 1331979753);
INSERT INTO `th_feeds` VALUES (278, 56, 'likes', 15, '喜欢本内容', '', 1331979756);
INSERT INTO `th_feeds` VALUES (279, 54, 'likes', 15, '喜欢本内容', '', 1331979757);
INSERT INTO `th_feeds` VALUES (280, 53, 'likes', 15, '喜欢本内容', '', 1331979758);
INSERT INTO `th_feeds` VALUES (281, 52, 'likes', 15, '喜欢本内容', '', 1331979760);
INSERT INTO `th_feeds` VALUES (282, 51, 'likes', 15, '喜欢本内容', '', 1331979762);
INSERT INTO `th_feeds` VALUES (283, 49, 'likes', 15, '喜欢本内容', '', 1331979765);
INSERT INTO `th_feeds` VALUES (284, 48, 'likes', 15, '喜欢本内容', '', 1331979767);
INSERT INTO `th_feeds` VALUES (285, 47, 'likes', 15, '喜欢本内容', '', 1331979769);
INSERT INTO `th_feeds` VALUES (286, 45, 'likes', 15, '喜欢本内容', '', 1331979770);
INSERT INTO `th_feeds` VALUES (287, 44, 'likes', 15, '喜欢本内容', '', 1331979774);
INSERT INTO `th_feeds` VALUES (288, 43, 'likes', 15, '喜欢本内容', '', 1331979775);
INSERT INTO `th_feeds` VALUES (289, 42, 'likes', 15, '喜欢本内容', '', 1331979777);
INSERT INTO `th_feeds` VALUES (290, 41, 'likes', 15, '喜欢本内容', '', 1331979779);
INSERT INTO `th_feeds` VALUES (291, 40, 'likes', 15, '喜欢本内容', '', 1331979780);
INSERT INTO `th_feeds` VALUES (292, 39, 'likes', 15, '喜欢本内容', '', 1331979782);
INSERT INTO `th_feeds` VALUES (293, 38, 'likes', 15, '喜欢本内容', '', 1331979783);
INSERT INTO `th_feeds` VALUES (294, 37, 'likes', 15, '喜欢本内容', '', 1331979784);
INSERT INTO `th_feeds` VALUES (295, 36, 'likes', 15, '喜欢本内容', '', 1331979788);
INSERT INTO `th_feeds` VALUES (296, 35, 'likes', 15, '喜欢本内容', '', 1331979789);
INSERT INTO `th_feeds` VALUES (297, 34, 'likes', 15, '喜欢本内容', '', 1331979793);
INSERT INTO `th_feeds` VALUES (298, 33, 'likes', 15, '喜欢本内容', '', 1331979794);
INSERT INTO `th_feeds` VALUES (299, 32, 'likes', 15, '喜欢本内容', '', 1331979797);
INSERT INTO `th_feeds` VALUES (300, 31, 'likes', 15, '喜欢本内容', '', 1331979801);
INSERT INTO `th_feeds` VALUES (301, 30, 'likes', 15, '喜欢本内容', '', 1331979804);
INSERT INTO `th_feeds` VALUES (302, 96, 'likes', 2, '喜欢本内容', '', 1331979831);
INSERT INTO `th_feeds` VALUES (303, 95, 'likes', 2, '喜欢本内容', '', 1331979834);
INSERT INTO `th_feeds` VALUES (304, 94, 'likes', 2, '喜欢本内容', '', 1331979834);
INSERT INTO `th_feeds` VALUES (305, 93, 'likes', 2, '喜欢本内容', '', 1331979835);
INSERT INTO `th_feeds` VALUES (306, 92, 'likes', 2, '喜欢本内容', '', 1331979836);
INSERT INTO `th_feeds` VALUES (307, 91, 'likes', 2, '喜欢本内容', '', 1331979838);
INSERT INTO `th_feeds` VALUES (308, 90, 'likes', 2, '喜欢本内容', '', 1331979839);
INSERT INTO `th_feeds` VALUES (309, 89, 'likes', 2, '喜欢本内容', '', 1331979841);
INSERT INTO `th_feeds` VALUES (310, 88, 'likes', 2, '喜欢本内容', '', 1331979843);
INSERT INTO `th_feeds` VALUES (311, 87, 'likes', 2, '喜欢本内容', '', 1331979844);
INSERT INTO `th_feeds` VALUES (312, 86, 'likes', 2, '喜欢本内容', '', 1331979847);
INSERT INTO `th_feeds` VALUES (313, 84, 'likes', 2, '喜欢本内容', '', 1331979850);
INSERT INTO `th_feeds` VALUES (314, 83, 'likes', 2, '喜欢本内容', '', 1331979851);
INSERT INTO `th_feeds` VALUES (315, 82, 'likes', 2, '喜欢本内容', '', 1331979853);
INSERT INTO `th_feeds` VALUES (316, 80, 'likes', 2, '喜欢本内容', '', 1331979854);
INSERT INTO `th_feeds` VALUES (317, 79, 'likes', 2, '喜欢本内容', '', 1331979855);
INSERT INTO `th_feeds` VALUES (318, 78, 'likes', 2, '喜欢本内容', '', 1331979856);
INSERT INTO `th_feeds` VALUES (319, 77, 'likes', 2, '喜欢本内容', '', 1331979857);
INSERT INTO `th_feeds` VALUES (320, 76, 'likes', 2, '喜欢本内容', '', 1331979861);
INSERT INTO `th_feeds` VALUES (321, 75, 'likes', 2, '喜欢本内容', '', 1331979864);
INSERT INTO `th_feeds` VALUES (322, 74, 'likes', 2, '喜欢本内容', '', 1331979865);
INSERT INTO `th_feeds` VALUES (323, 73, 'likes', 2, '喜欢本内容', '', 1331979867);
INSERT INTO `th_feeds` VALUES (324, 72, 'likes', 2, '喜欢本内容', '', 1331979868);
INSERT INTO `th_feeds` VALUES (325, 71, 'likes', 2, '喜欢本内容', '', 1331979870);
INSERT INTO `th_feeds` VALUES (326, 70, 'likes', 2, '喜欢本内容', '', 1331979871);
INSERT INTO `th_feeds` VALUES (327, 69, 'likes', 2, '喜欢本内容', '', 1331979873);
INSERT INTO `th_feeds` VALUES (328, 68, 'likes', 2, '喜欢本内容', '', 1331979874);
INSERT INTO `th_feeds` VALUES (329, 67, 'likes', 2, '喜欢本内容', '', 1331979876);
INSERT INTO `th_feeds` VALUES (330, 66, 'likes', 2, '喜欢本内容', '', 1331979877);
INSERT INTO `th_feeds` VALUES (331, 55, 'likes', 2, '喜欢本内容', '', 1331979884);
INSERT INTO `th_feeds` VALUES (332, 64, 'likes', 2, '喜欢本内容', '', 1331979885);
INSERT INTO `th_feeds` VALUES (333, 63, 'likes', 2, '喜欢本内容', '', 1331979886);
INSERT INTO `th_feeds` VALUES (334, 62, 'likes', 2, '喜欢本内容', '', 1331979887);
INSERT INTO `th_feeds` VALUES (335, 61, 'likes', 2, '喜欢本内容', '', 1331979889);
INSERT INTO `th_feeds` VALUES (336, 60, 'likes', 2, '喜欢本内容', '', 1331979891);
INSERT INTO `th_feeds` VALUES (337, 59, 'likes', 2, '喜欢本内容', '', 1331979892);
INSERT INTO `th_feeds` VALUES (338, 58, 'likes', 2, '喜欢本内容', '', 1331979893);
INSERT INTO `th_feeds` VALUES (339, 57, 'likes', 2, '喜欢本内容', '', 1331979895);
INSERT INTO `th_feeds` VALUES (340, 54, 'likes', 2, '喜欢本内容', '', 1331979899);
INSERT INTO `th_feeds` VALUES (341, 56, 'likes', 2, '喜欢本内容', '', 1331979900);
INSERT INTO `th_feeds` VALUES (342, 53, 'likes', 2, '喜欢本内容', '', 1331979902);
INSERT INTO `th_feeds` VALUES (343, 52, 'likes', 2, '喜欢本内容', '', 1331979903);
INSERT INTO `th_feeds` VALUES (344, 51, 'likes', 2, '喜欢本内容', '', 1331979905);
INSERT INTO `th_feeds` VALUES (345, 50, 'likes', 2, '喜欢本内容', '', 1331979907);
INSERT INTO `th_feeds` VALUES (346, 49, 'likes', 2, '喜欢本内容', '', 1331979907);
INSERT INTO `th_feeds` VALUES (347, 48, 'likes', 2, '喜欢本内容', '', 1331979910);
INSERT INTO `th_feeds` VALUES (348, 47, 'likes', 2, '喜欢本内容', '', 1331979911);
INSERT INTO `th_feeds` VALUES (349, 45, 'likes', 2, '喜欢本内容', '', 1331979911);
INSERT INTO `th_feeds` VALUES (350, 44, 'likes', 2, '喜欢本内容', '', 1331979916);
INSERT INTO `th_feeds` VALUES (351, 43, 'likes', 2, '喜欢本内容', '', 1331979917);
INSERT INTO `th_feeds` VALUES (352, 42, 'likes', 2, '喜欢本内容', '', 1331979918);
INSERT INTO `th_feeds` VALUES (353, 41, 'likes', 2, '喜欢本内容', '', 1331979920);
INSERT INTO `th_feeds` VALUES (354, 40, 'likes', 2, '喜欢本内容', '', 1331979921);
INSERT INTO `th_feeds` VALUES (355, 39, 'likes', 2, '喜欢本内容', '', 1331979922);
INSERT INTO `th_feeds` VALUES (356, 38, 'likes', 2, '喜欢本内容', '', 1331979924);
INSERT INTO `th_feeds` VALUES (357, 37, 'likes', 2, '喜欢本内容', '', 1331979926);
INSERT INTO `th_feeds` VALUES (358, 36, 'likes', 2, '喜欢本内容', '', 1331979927);
INSERT INTO `th_feeds` VALUES (359, 35, 'likes', 2, '喜欢本内容', '', 1331979928);
INSERT INTO `th_feeds` VALUES (360, 34, 'likes', 2, '喜欢本内容', '', 1331979931);
INSERT INTO `th_feeds` VALUES (361, 33, 'likes', 2, '喜欢本内容', '', 1331979933);
INSERT INTO `th_feeds` VALUES (362, 96, 'likes', 5, '喜欢本内容', '', 1331980005);
INSERT INTO `th_feeds` VALUES (363, 95, 'likes', 5, '喜欢本内容', '', 1331980005);
INSERT INTO `th_feeds` VALUES (364, 94, 'likes', 5, '喜欢本内容', '', 1331980008);
INSERT INTO `th_feeds` VALUES (365, 93, 'likes', 5, '喜欢本内容', '', 1331980009);
INSERT INTO `th_feeds` VALUES (366, 92, 'likes', 5, '喜欢本内容', '', 1331980010);
INSERT INTO `th_feeds` VALUES (367, 91, 'likes', 5, '喜欢本内容', '', 1331980012);
INSERT INTO `th_feeds` VALUES (368, 90, 'likes', 5, '喜欢本内容', '', 1331980013);
INSERT INTO `th_feeds` VALUES (369, 89, 'likes', 5, '喜欢本内容', '', 1331980016);
INSERT INTO `th_feeds` VALUES (370, 88, 'likes', 5, '喜欢本内容', '', 1331980018);
INSERT INTO `th_feeds` VALUES (371, 87, 'likes', 5, '喜欢本内容', '', 1331980020);
INSERT INTO `th_feeds` VALUES (372, 86, 'likes', 5, '喜欢本内容', '', 1331980024);
INSERT INTO `th_feeds` VALUES (373, 85, 'likes', 5, '喜欢本内容', '', 1331980024);
INSERT INTO `th_feeds` VALUES (374, 84, 'likes', 5, '喜欢本内容', '', 1331980027);
INSERT INTO `th_feeds` VALUES (375, 82, 'likes', 5, '喜欢本内容', '', 1331980029);
INSERT INTO `th_feeds` VALUES (376, 83, 'likes', 5, '喜欢本内容', '', 1331980030);
INSERT INTO `th_feeds` VALUES (377, 80, 'likes', 5, '喜欢本内容', '', 1331980032);
INSERT INTO `th_feeds` VALUES (378, 79, 'likes', 5, '喜欢本内容', '', 1331980034);
INSERT INTO `th_feeds` VALUES (379, 78, 'likes', 5, '喜欢本内容', '', 1331980035);
INSERT INTO `th_feeds` VALUES (380, 77, 'likes', 5, '喜欢本内容', '', 1331980039);
INSERT INTO `th_feeds` VALUES (381, 76, 'likes', 5, '喜欢本内容', '', 1331980039);
INSERT INTO `th_feeds` VALUES (382, 75, 'likes', 5, '喜欢本内容', '', 1331980050);
INSERT INTO `th_feeds` VALUES (383, 74, 'likes', 5, '喜欢本内容', '', 1331980051);
INSERT INTO `th_feeds` VALUES (384, 73, 'likes', 5, '喜欢本内容', '', 1331980053);
INSERT INTO `th_feeds` VALUES (385, 72, 'likes', 5, '喜欢本内容', '', 1331980055);
INSERT INTO `th_feeds` VALUES (386, 71, 'likes', 5, '喜欢本内容', '', 1331980056);
INSERT INTO `th_feeds` VALUES (387, 70, 'likes', 5, '喜欢本内容', '', 1331980058);
INSERT INTO `th_feeds` VALUES (388, 69, 'likes', 5, '喜欢本内容', '', 1331980059);
INSERT INTO `th_feeds` VALUES (389, 67, 'likes', 5, '喜欢本内容', '', 1331980062);
INSERT INTO `th_feeds` VALUES (390, 66, 'likes', 5, '喜欢本内容', '', 1331980064);
INSERT INTO `th_feeds` VALUES (391, 55, 'likes', 5, '喜欢本内容', '', 1331980069);
INSERT INTO `th_feeds` VALUES (392, 64, 'likes', 5, '喜欢本内容', '', 1331980070);
INSERT INTO `th_feeds` VALUES (393, 63, 'likes', 5, '喜欢本内容', '', 1331980071);
INSERT INTO `th_feeds` VALUES (394, 62, 'likes', 5, '喜欢本内容', '', 1331980073);
INSERT INTO `th_feeds` VALUES (395, 61, 'likes', 5, '喜欢本内容', '', 1331980074);
INSERT INTO `th_feeds` VALUES (396, 60, 'likes', 5, '喜欢本内容', '', 1331980076);
INSERT INTO `th_feeds` VALUES (397, 59, 'likes', 5, '喜欢本内容', '', 1331980077);
INSERT INTO `th_feeds` VALUES (398, 58, 'likes', 5, '喜欢本内容', '', 1331980078);
INSERT INTO `th_feeds` VALUES (399, 57, 'likes', 5, '喜欢本内容', '', 1331980079);
INSERT INTO `th_feeds` VALUES (400, 54, 'likes', 5, '喜欢本内容', '', 1331980083);
INSERT INTO `th_feeds` VALUES (401, 56, 'likes', 5, '喜欢本内容', '', 1331980085);
INSERT INTO `th_feeds` VALUES (402, 49, 'likes', 5, '喜欢本内容', '', 1331980088);
INSERT INTO `th_feeds` VALUES (403, 48, 'likes', 5, '喜欢本内容', '', 1331980090);
INSERT INTO `th_feeds` VALUES (404, 47, 'likes', 5, '喜欢本内容', '', 1331980091);
INSERT INTO `th_feeds` VALUES (405, 45, 'likes', 5, '喜欢本内容', '', 1331980093);
INSERT INTO `th_feeds` VALUES (406, 44, 'likes', 5, '喜欢本内容', '', 1331980096);
INSERT INTO `th_feeds` VALUES (407, 43, 'likes', 5, '喜欢本内容', '', 1331980098);
INSERT INTO `th_feeds` VALUES (408, 42, 'likes', 5, '喜欢本内容', '', 1331980102);
INSERT INTO `th_feeds` VALUES (409, 41, 'likes', 5, '喜欢本内容', '', 1331980104);
INSERT INTO `th_feeds` VALUES (410, 40, 'likes', 5, '喜欢本内容', '', 1331980105);
INSERT INTO `th_feeds` VALUES (411, 39, 'likes', 5, '喜欢本内容', '', 1331980107);
INSERT INTO `th_feeds` VALUES (412, 38, 'likes', 5, '喜欢本内容', '', 1331980108);
INSERT INTO `th_feeds` VALUES (413, 96, 'likes', 6, '喜欢本内容', '', 1331980141);
INSERT INTO `th_feeds` VALUES (414, 95, 'likes', 6, '喜欢本内容', '', 1331980144);
INSERT INTO `th_feeds` VALUES (415, 94, 'likes', 6, '喜欢本内容', '', 1331980144);
INSERT INTO `th_feeds` VALUES (416, 92, 'likes', 6, '喜欢本内容', '', 1331980147);
INSERT INTO `th_feeds` VALUES (417, 93, 'likes', 6, '喜欢本内容', '', 1331980147);
INSERT INTO `th_feeds` VALUES (418, 91, 'likes', 6, '喜欢本内容', '', 1331980151);
INSERT INTO `th_feeds` VALUES (419, 89, 'likes', 6, '喜欢本内容', '', 1331980151);
INSERT INTO `th_feeds` VALUES (420, 90, 'likes', 6, '喜欢本内容', '', 1331980151);
INSERT INTO `th_feeds` VALUES (421, 88, 'likes', 6, '喜欢本内容', '', 1331980153);
INSERT INTO `th_feeds` VALUES (422, 87, 'likes', 6, '喜欢本内容', '', 1331980154);
INSERT INTO `th_feeds` VALUES (423, 86, 'likes', 6, '喜欢本内容', '', 1331980164);
INSERT INTO `th_feeds` VALUES (424, 85, 'likes', 6, '喜欢本内容', '', 1331980166);
INSERT INTO `th_feeds` VALUES (425, 84, 'likes', 6, '喜欢本内容', '', 1331980167);
INSERT INTO `th_feeds` VALUES (426, 83, 'likes', 6, '喜欢本内容', '', 1331980167);
INSERT INTO `th_feeds` VALUES (427, 82, 'likes', 6, '喜欢本内容', '', 1331980170);
INSERT INTO `th_feeds` VALUES (428, 79, 'likes', 6, '喜欢本内容', '', 1331980173);
INSERT INTO `th_feeds` VALUES (429, 80, 'likes', 6, '喜欢本内容', '', 1331980173);
INSERT INTO `th_feeds` VALUES (430, 78, 'likes', 6, '喜欢本内容', '', 1331980174);
INSERT INTO `th_feeds` VALUES (431, 77, 'likes', 6, '喜欢本内容', '', 1331980176);
INSERT INTO `th_feeds` VALUES (432, 76, 'likes', 6, '喜欢本内容', '', 1331980177);
INSERT INTO `th_feeds` VALUES (433, 75, 'likes', 6, '喜欢本内容', '', 1331980181);
INSERT INTO `th_feeds` VALUES (434, 74, 'likes', 6, '喜欢本内容', '', 1331980182);
INSERT INTO `th_feeds` VALUES (435, 73, 'likes', 6, '喜欢本内容', '', 1331980187);
INSERT INTO `th_feeds` VALUES (436, 72, 'likes', 6, '喜欢本内容', '', 1331980187);
INSERT INTO `th_feeds` VALUES (437, 71, 'likes', 6, '喜欢本内容', '', 1331980188);
INSERT INTO `th_feeds` VALUES (438, 70, 'likes', 6, '喜欢本内容', '', 1331980191);
INSERT INTO `th_feeds` VALUES (439, 69, 'likes', 6, '喜欢本内容', '', 1331980193);
INSERT INTO `th_feeds` VALUES (440, 68, 'likes', 6, '喜欢本内容', '', 1331980193);
INSERT INTO `th_feeds` VALUES (441, 67, 'likes', 6, '喜欢本内容', '', 1331980197);
INSERT INTO `th_feeds` VALUES (442, 66, 'likes', 6, '喜欢本内容', '', 1331980197);
INSERT INTO `th_feeds` VALUES (443, 55, 'likes', 6, '喜欢本内容', '', 1331980205);
INSERT INTO `th_feeds` VALUES (444, 64, 'likes', 6, '喜欢本内容', '', 1331980209);
INSERT INTO `th_feeds` VALUES (445, 63, 'likes', 6, '喜欢本内容', '', 1331980209);
INSERT INTO `th_feeds` VALUES (446, 62, 'likes', 6, '喜欢本内容', '', 1331980210);
INSERT INTO `th_feeds` VALUES (447, 61, 'likes', 6, '喜欢本内容', '', 1331980215);
INSERT INTO `th_feeds` VALUES (448, 60, 'likes', 6, '喜欢本内容', '', 1331980215);
INSERT INTO `th_feeds` VALUES (449, 59, 'likes', 6, '喜欢本内容', '', 1331980216);
INSERT INTO `th_feeds` VALUES (450, 58, 'likes', 6, '喜欢本内容', '', 1331980222);
INSERT INTO `th_feeds` VALUES (451, 57, 'likes', 6, '喜欢本内容', '', 1331980222);
INSERT INTO `th_feeds` VALUES (452, 56, 'likes', 6, '喜欢本内容', '', 1331980229);
INSERT INTO `th_feeds` VALUES (453, 54, 'likes', 6, '喜欢本内容', '', 1331980229);
INSERT INTO `th_feeds` VALUES (454, 53, 'likes', 6, '喜欢本内容', '', 1331980229);
INSERT INTO `th_feeds` VALUES (455, 52, 'likes', 6, '喜欢本内容', '', 1331980231);
INSERT INTO `th_feeds` VALUES (456, 51, 'likes', 6, '喜欢本内容', '', 1331980232);
INSERT INTO `th_feeds` VALUES (457, 49, 'likes', 6, '喜欢本内容', '', 1331980235);
INSERT INTO `th_feeds` VALUES (458, 48, 'likes', 6, '喜欢本内容', '', 1331980235);
INSERT INTO `th_feeds` VALUES (459, 47, 'likes', 6, '喜欢本内容', '', 1331980237);
INSERT INTO `th_feeds` VALUES (460, 45, 'likes', 6, '喜欢本内容', '', 1331980238);
INSERT INTO `th_feeds` VALUES (461, 44, 'likes', 6, '喜欢本内容', '', 1331980242);
INSERT INTO `th_feeds` VALUES (462, 43, 'likes', 6, '喜欢本内容', '', 1331980243);
INSERT INTO `th_feeds` VALUES (463, 94, 'likes', 16, '喜欢本内容', '', 1331980338);
INSERT INTO `th_feeds` VALUES (464, 87, 'likes', 16, '喜欢本内容', '', 1331980346);
INSERT INTO `th_feeds` VALUES (465, 86, 'likes', 16, '喜欢本内容', '', 1331980350);
INSERT INTO `th_feeds` VALUES (466, 85, 'likes', 16, '喜欢本内容', '', 1331980352);
INSERT INTO `th_feeds` VALUES (467, 84, 'likes', 16, '喜欢本内容', '', 1331980355);
INSERT INTO `th_feeds` VALUES (468, 83, 'likes', 16, '喜欢本内容', '', 1331980356);
INSERT INTO `th_feeds` VALUES (469, 82, 'likes', 16, '喜欢本内容', '', 1331980360);
INSERT INTO `th_feeds` VALUES (470, 79, 'likes', 16, '喜欢本内容', '', 1331980363);
INSERT INTO `th_feeds` VALUES (471, 78, 'likes', 16, '喜欢本内容', '', 1331980365);
INSERT INTO `th_feeds` VALUES (472, 77, 'likes', 16, '喜欢本内容', '', 1331980366);
INSERT INTO `th_feeds` VALUES (473, 76, 'likes', 16, '喜欢本内容', '', 1331980368);
INSERT INTO `th_feeds` VALUES (474, 55, 'likes', 16, '喜欢本内容', '', 1331980394);
INSERT INTO `th_feeds` VALUES (475, 62, 'likes', 16, '喜欢本内容', '', 1331980398);
INSERT INTO `th_feeds` VALUES (476, 59, 'likes', 16, '喜欢本内容', '', 1331980402);
INSERT INTO `th_feeds` VALUES (477, 57, 'likes', 16, '喜欢本内容', '', 1331980405);
INSERT INTO `th_feeds` VALUES (478, 53, 'likes', 16, '喜欢本内容', '', 1331980411);
INSERT INTO `th_feeds` VALUES (479, 44, 'likes', 16, '喜欢本内容', '', 1331980422);
INSERT INTO `th_feeds` VALUES (480, 43, 'likes', 16, '喜欢本内容', '', 1331980424);
INSERT INTO `th_feeds` VALUES (481, 41, 'likes', 16, '喜欢本内容', '', 1331980427);
INSERT INTO `th_feeds` VALUES (482, 40, 'likes', 16, '喜欢本内容', '', 1331980432);
INSERT INTO `th_feeds` VALUES (483, 39, 'likes', 16, '喜欢本内容', '', 1331980434);
INSERT INTO `th_feeds` VALUES (484, 36, 'likes', 16, '喜欢本内容', '', 1331980439);
INSERT INTO `th_feeds` VALUES (485, 35, 'likes', 16, '喜欢本内容', '', 1331980441);
INSERT INTO `th_feeds` VALUES (486, 95, 'likes', 17, '喜欢本内容', '', 1331980485);
INSERT INTO `th_feeds` VALUES (487, 94, 'likes', 17, '喜欢本内容', '', 1331980487);
INSERT INTO `th_feeds` VALUES (488, 88, 'likes', 17, '喜欢本内容', '', 1331980494);
INSERT INTO `th_feeds` VALUES (489, 89, 'likes', 17, '喜欢本内容', '', 1331980498);
INSERT INTO `th_feeds` VALUES (490, 82, 'likes', 17, '喜欢本内容', '', 1331980517);
INSERT INTO `th_feeds` VALUES (491, 76, 'likes', 17, '喜欢本内容', '', 1331980523);
INSERT INTO `th_feeds` VALUES (492, 55, 'likes', 17, '喜欢本内容', '', 1331980536);
INSERT INTO `th_feeds` VALUES (493, 61, 'likes', 17, '喜欢本内容', '', 1331980540);
INSERT INTO `th_feeds` VALUES (494, 59, 'likes', 17, '喜欢本内容', '', 1331980542);
INSERT INTO `th_feeds` VALUES (495, 57, 'likes', 17, '喜欢本内容', '', 1331980544);
INSERT INTO `th_feeds` VALUES (496, 43, 'likes', 17, '喜欢本内容', '', 1331980559);
INSERT INTO `th_feeds` VALUES (497, 39, 'likes', 17, '喜欢本内容', '', 1331980566);
INSERT INTO `th_feeds` VALUES (498, 40, 'likes', 17, '喜欢本内容', '', 1331980568);
INSERT INTO `th_feeds` VALUES (499, 33, 'likes', 17, '喜欢本内容', '', 1331980580);
INSERT INTO `th_feeds` VALUES (500, 30, 'likes', 17, '喜欢本内容', '', 1331980581);
INSERT INTO `th_feeds` VALUES (501, 25, 'likes', 17, '喜欢本内容', '', 1331980584);
INSERT INTO `th_feeds` VALUES (502, 2, 'likes', 14, '喜欢本内容', '', 1331982351);
INSERT INTO `th_feeds` VALUES (503, 96, 'likes', 18, '喜欢本内容', '', 1331985226);
INSERT INTO `th_feeds` VALUES (504, 95, 'likes', 18, '喜欢本内容', '', 1331985229);
INSERT INTO `th_feeds` VALUES (505, 94, 'likes', 18, '喜欢本内容', '', 1331985231);
INSERT INTO `th_feeds` VALUES (506, 93, 'likes', 18, '喜欢本内容', '', 1331985234);
INSERT INTO `th_feeds` VALUES (507, 92, 'likes', 18, '喜欢本内容', '', 1331985237);
INSERT INTO `th_feeds` VALUES (508, 98, 'likes', 18, '喜欢本内容', '', 1331986805);
INSERT INTO `th_feeds` VALUES (509, 78, 'likes', 18, '喜欢本内容', '', 1331987404);
INSERT INTO `th_feeds` VALUES (510, 77, 'likes', 18, '喜欢本内容', '', 1331987407);
INSERT INTO `th_feeds` VALUES (511, 76, 'likes', 18, '喜欢本内容', '', 1331987408);
INSERT INTO `th_feeds` VALUES (512, 75, 'likes', 18, '喜欢本内容', '', 1331987410);
INSERT INTO `th_feeds` VALUES (513, 74, 'likes', 18, '喜欢本内容', '', 1331987412);
INSERT INTO `th_feeds` VALUES (514, 73, 'likes', 18, '喜欢本内容', '', 1331987415);
INSERT INTO `th_feeds` VALUES (515, 72, 'likes', 18, '喜欢本内容', '', 1331987417);
INSERT INTO `th_feeds` VALUES (516, 71, 'likes', 18, '喜欢本内容', '', 1331987419);
INSERT INTO `th_feeds` VALUES (517, 70, 'likes', 18, '喜欢本内容', '', 1331987422);
INSERT INTO `th_feeds` VALUES (518, 69, 'likes', 18, '喜欢本内容', '', 1331987429);
INSERT INTO `th_feeds` VALUES (519, 68, 'likes', 18, '喜欢本内容', '', 1331987431);
INSERT INTO `th_feeds` VALUES (520, 67, 'likes', 18, '喜欢本内容', '', 1331987432);
INSERT INTO `th_feeds` VALUES (521, 66, 'likes', 18, '喜欢本内容', '', 1331987434);
INSERT INTO `th_feeds` VALUES (522, 65, 'likes', 18, '喜欢本内容', '', 1331987439);
INSERT INTO `th_feeds` VALUES (523, 55, 'likes', 18, '喜欢本内容', '', 1331987442);
INSERT INTO `th_feeds` VALUES (524, 99, 'likes', 1, '喜欢本内容', '', 1331990935);
INSERT INTO `th_feeds` VALUES (525, 97, 'likes', 1, '喜欢本内容', '', 1331990941);
INSERT INTO `th_feeds` VALUES (526, 108, 'likes', 18, '喜欢本内容', '', 1331992925);
INSERT INTO `th_feeds` VALUES (527, 107, 'likes', 18, '喜欢本内容', '', 1331992930);
INSERT INTO `th_feeds` VALUES (528, 106, 'likes', 18, '喜欢本内容', '', 1331992935);
INSERT INTO `th_feeds` VALUES (529, 105, 'likes', 18, '喜欢本内容', '', 1331992940);
INSERT INTO `th_feeds` VALUES (530, 104, 'likes', 18, '喜欢本内容', '', 1331992943);
INSERT INTO `th_feeds` VALUES (531, 103, 'likes', 18, '喜欢本内容', '', 1331992950);
INSERT INTO `th_feeds` VALUES (532, 55, 'likes', 20, '喜欢本内容', '', 1331993166);
INSERT INTO `th_feeds` VALUES (533, 108, 'likes', 1, '喜欢本内容', '', 1331993874);
INSERT INTO `th_feeds` VALUES (534, 156, 'likes', 2, '喜欢本内容', '', 1332067084);
INSERT INTO `th_feeds` VALUES (535, 155, 'likes', 2, '喜欢本内容', '', 1332067085);
INSERT INTO `th_feeds` VALUES (536, 154, 'likes', 2, '喜欢本内容', '', 1332067088);
INSERT INTO `th_feeds` VALUES (537, 152, 'likes', 2, '喜欢本内容', '', 1332067093);
INSERT INTO `th_feeds` VALUES (538, 151, 'likes', 2, '喜欢本内容', '', 1332067095);
INSERT INTO `th_feeds` VALUES (539, 149, 'likes', 2, '喜欢本内容', '', 1332067098);
INSERT INTO `th_feeds` VALUES (540, 148, 'likes', 2, '喜欢本内容', '', 1332067101);
INSERT INTO `th_feeds` VALUES (541, 147, 'likes', 2, '喜欢本内容', '', 1332067105);
INSERT INTO `th_feeds` VALUES (542, 109, 'likes', 2, '喜欢本内容', '', 1332067110);
INSERT INTO `th_feeds` VALUES (543, 145, 'likes', 2, '喜欢本内容', '', 1332067117);
INSERT INTO `th_feeds` VALUES (544, 144, 'likes', 2, '喜欢本内容', '', 1332067118);
INSERT INTO `th_feeds` VALUES (545, 143, 'likes', 2, '喜欢本内容', '', 1332067120);
INSERT INTO `th_feeds` VALUES (546, 142, 'likes', 2, '喜欢本内容', '', 1332067121);
INSERT INTO `th_feeds` VALUES (547, 140, 'likes', 2, '喜欢本内容', '', 1332067125);
INSERT INTO `th_feeds` VALUES (548, 138, 'likes', 2, '喜欢本内容', '', 1332067128);
INSERT INTO `th_feeds` VALUES (549, 139, 'likes', 2, '喜欢本内容', '', 1332067129);
INSERT INTO `th_feeds` VALUES (550, 137, 'likes', 2, '喜欢本内容', '', 1332067133);
INSERT INTO `th_feeds` VALUES (551, 136, 'likes', 2, '喜欢本内容', '', 1332067135);
INSERT INTO `th_feeds` VALUES (552, 134, 'likes', 2, '喜欢本内容', '', 1332067139);
INSERT INTO `th_feeds` VALUES (553, 133, 'likes', 2, '喜欢本内容', '', 1332067142);
INSERT INTO `th_feeds` VALUES (554, 132, 'likes', 2, '喜欢本内容', '', 1332067144);
INSERT INTO `th_feeds` VALUES (555, 131, 'likes', 2, '喜欢本内容', '', 1332067147);
INSERT INTO `th_feeds` VALUES (556, 129, 'likes', 2, '喜欢本内容', '', 1332067149);
INSERT INTO `th_feeds` VALUES (557, 128, 'likes', 2, '喜欢本内容', '', 1332067151);
INSERT INTO `th_feeds` VALUES (558, 126, 'likes', 2, '喜欢本内容', '', 1332067164);
INSERT INTO `th_feeds` VALUES (559, 124, 'likes', 2, '喜欢本内容', '', 1332067165);
INSERT INTO `th_feeds` VALUES (560, 123, 'likes', 2, '喜欢本内容', '', 1332067170);
INSERT INTO `th_feeds` VALUES (561, 121, 'likes', 2, '喜欢本内容', '', 1332067171);
INSERT INTO `th_feeds` VALUES (562, 120, 'likes', 2, '喜欢本内容', '', 1332067172);
INSERT INTO `th_feeds` VALUES (563, 118, 'likes', 2, '喜欢本内容', '', 1332067176);
INSERT INTO `th_feeds` VALUES (564, 113, 'likes', 2, '喜欢本内容', '', 1332067192);
INSERT INTO `th_feeds` VALUES (565, 110, 'likes', 2, '喜欢本内容', '', 1332067196);
INSERT INTO `th_feeds` VALUES (566, 112, 'likes', 2, '喜欢本内容', '', 1332067196);
INSERT INTO `th_feeds` VALUES (567, 108, 'likes', 2, '喜欢本内容', '', 1332067199);
INSERT INTO `th_feeds` VALUES (568, 107, 'likes', 2, '喜欢本内容', '', 1332067201);
INSERT INTO `th_feeds` VALUES (569, 106, 'likes', 2, '喜欢本内容', '', 1332067204);
INSERT INTO `th_feeds` VALUES (570, 104, 'likes', 2, '喜欢本内容', '', 1332067206);
INSERT INTO `th_feeds` VALUES (571, 103, 'likes', 2, '喜欢本内容', '', 1332067208);
INSERT INTO `th_feeds` VALUES (572, 99, 'likes', 2, '喜欢本内容', '', 1332067210);
INSERT INTO `th_feeds` VALUES (573, 97, 'likes', 2, '喜欢本内容', '', 1332067213);
INSERT INTO `th_feeds` VALUES (574, 98, 'likes', 2, '喜欢本内容', '', 1332067217);
INSERT INTO `th_feeds` VALUES (575, 156, 'likes', 5, '喜欢本内容', '', 1332067249);
INSERT INTO `th_feeds` VALUES (576, 155, 'likes', 5, '喜欢本内容', '', 1332067251);
INSERT INTO `th_feeds` VALUES (577, 154, 'likes', 5, '喜欢本内容', '', 1332067255);
INSERT INTO `th_feeds` VALUES (578, 153, 'likes', 5, '喜欢本内容', '', 1332067257);
INSERT INTO `th_feeds` VALUES (579, 152, 'likes', 5, '喜欢本内容', '', 1332067258);
INSERT INTO `th_feeds` VALUES (580, 151, 'likes', 5, '喜欢本内容', '', 1332067260);
INSERT INTO `th_feeds` VALUES (581, 150, 'likes', 5, '喜欢本内容', '', 1332067262);
INSERT INTO `th_feeds` VALUES (582, 149, 'likes', 5, '喜欢本内容', '', 1332067263);
INSERT INTO `th_feeds` VALUES (583, 148, 'likes', 5, '喜欢本内容', '', 1332067266);
INSERT INTO `th_feeds` VALUES (584, 147, 'likes', 5, '喜欢本内容', '', 1332067269);
INSERT INTO `th_feeds` VALUES (585, 109, 'likes', 5, '喜欢本内容', '', 1332067275);
INSERT INTO `th_feeds` VALUES (586, 145, 'likes', 5, '喜欢本内容', '', 1332067279);
INSERT INTO `th_feeds` VALUES (587, 144, 'likes', 5, '喜欢本内容', '', 1332067281);
INSERT INTO `th_feeds` VALUES (588, 143, 'likes', 5, '喜欢本内容', '', 1332067282);
INSERT INTO `th_feeds` VALUES (589, 142, 'likes', 5, '喜欢本内容', '', 1332067284);
INSERT INTO `th_feeds` VALUES (590, 141, 'likes', 5, '喜欢本内容', '', 1332067287);
INSERT INTO `th_feeds` VALUES (591, 140, 'likes', 5, '喜欢本内容', '', 1332067294);
INSERT INTO `th_feeds` VALUES (592, 139, 'likes', 5, '喜欢本内容', '', 1332067295);
INSERT INTO `th_feeds` VALUES (593, 138, 'likes', 5, '喜欢本内容', '', 1332067296);
INSERT INTO `th_feeds` VALUES (594, 137, 'likes', 5, '喜欢本内容', '', 1332067300);
INSERT INTO `th_feeds` VALUES (595, 136, 'likes', 5, '喜欢本内容', '', 1332067302);
INSERT INTO `th_feeds` VALUES (596, 135, 'likes', 5, '喜欢本内容', '', 1332067304);
INSERT INTO `th_feeds` VALUES (597, 134, 'likes', 5, '喜欢本内容', '', 1332067306);
INSERT INTO `th_feeds` VALUES (598, 133, 'likes', 5, '喜欢本内容', '', 1332067307);
INSERT INTO `th_feeds` VALUES (599, 130, 'likes', 5, '喜欢本内容', '', 1332067310);
INSERT INTO `th_feeds` VALUES (600, 128, 'likes', 5, '喜欢本内容', '', 1332067313);
INSERT INTO `th_feeds` VALUES (601, 127, 'likes', 5, '喜欢本内容', '', 1332067321);
INSERT INTO `th_feeds` VALUES (602, 126, 'likes', 5, '喜欢本内容', '', 1332067325);
INSERT INTO `th_feeds` VALUES (603, 125, 'likes', 5, '喜欢本内容', '', 1332067332);
INSERT INTO `th_feeds` VALUES (604, 124, 'likes', 5, '喜欢本内容', '', 1332067333);
INSERT INTO `th_feeds` VALUES (605, 123, 'likes', 5, '喜欢本内容', '', 1332067336);
INSERT INTO `th_feeds` VALUES (606, 122, 'likes', 5, '喜欢本内容', '', 1332067337);
INSERT INTO `th_feeds` VALUES (607, 121, 'likes', 5, '喜欢本内容', '', 1332067340);
INSERT INTO `th_feeds` VALUES (608, 120, 'likes', 5, '喜欢本内容', '', 1332067341);
INSERT INTO `th_feeds` VALUES (609, 118, 'likes', 5, '喜欢本内容', '', 1332067346);
INSERT INTO `th_feeds` VALUES (610, 113, 'likes', 5, '喜欢本内容', '', 1332067356);
INSERT INTO `th_feeds` VALUES (611, 112, 'likes', 5, '喜欢本内容', '', 1332067358);
INSERT INTO `th_feeds` VALUES (612, 111, 'likes', 5, '喜欢本内容', '', 1332067361);
INSERT INTO `th_feeds` VALUES (613, 110, 'likes', 5, '喜欢本内容', '', 1332067364);
INSERT INTO `th_feeds` VALUES (614, 107, 'likes', 5, '喜欢本内容', '', 1332067367);
INSERT INTO `th_feeds` VALUES (615, 106, 'likes', 5, '喜欢本内容', '', 1332067371);
INSERT INTO `th_feeds` VALUES (616, 105, 'likes', 5, '喜欢本内容', '', 1332067372);
INSERT INTO `th_feeds` VALUES (617, 103, 'likes', 5, '喜欢本内容', '', 1332067375);
INSERT INTO `th_feeds` VALUES (618, 97, 'likes', 5, '喜欢本内容', '', 1332067378);
INSERT INTO `th_feeds` VALUES (619, 98, 'likes', 5, '喜欢本内容', '', 1332067382);
INSERT INTO `th_feeds` VALUES (620, 156, 'likes', 6, '喜欢本内容', '', 1332067403);
INSERT INTO `th_feeds` VALUES (621, 155, 'likes', 6, '喜欢本内容', '', 1332067404);
INSERT INTO `th_feeds` VALUES (622, 154, 'likes', 6, '喜欢本内容', '', 1332067409);
INSERT INTO `th_feeds` VALUES (623, 153, 'likes', 6, '喜欢本内容', '', 1332067413);
INSERT INTO `th_feeds` VALUES (624, 152, 'likes', 6, '喜欢本内容', '', 1332067414);
INSERT INTO `th_feeds` VALUES (625, 151, 'likes', 6, '喜欢本内容', '', 1332067415);
INSERT INTO `th_feeds` VALUES (626, 150, 'likes', 6, '喜欢本内容', '', 1332067419);
INSERT INTO `th_feeds` VALUES (627, 149, 'likes', 6, '喜欢本内容', '', 1332067424);
INSERT INTO `th_feeds` VALUES (628, 147, 'likes', 6, '喜欢本内容', '', 1332067429);
INSERT INTO `th_feeds` VALUES (629, 109, 'likes', 6, '喜欢本内容', '', 1332067436);
INSERT INTO `th_feeds` VALUES (630, 146, 'likes', 6, '喜欢本内容', '', 1332067440);
INSERT INTO `th_feeds` VALUES (631, 145, 'likes', 6, '喜欢本内容', '', 1332067442);
INSERT INTO `th_feeds` VALUES (632, 144, 'likes', 6, '喜欢本内容', '', 1332067444);
INSERT INTO `th_feeds` VALUES (633, 143, 'likes', 6, '喜欢本内容', '', 1332067445);
INSERT INTO `th_feeds` VALUES (634, 142, 'likes', 6, '喜欢本内容', '', 1332067446);
INSERT INTO `th_feeds` VALUES (635, 141, 'likes', 6, '喜欢本内容', '', 1332067448);
INSERT INTO `th_feeds` VALUES (636, 140, 'likes', 6, '喜欢本内容', '', 1332067452);
INSERT INTO `th_feeds` VALUES (637, 139, 'likes', 6, '喜欢本内容', '', 1332067453);
INSERT INTO `th_feeds` VALUES (638, 138, 'likes', 6, '喜欢本内容', '', 1332067455);
INSERT INTO `th_feeds` VALUES (639, 137, 'likes', 6, '喜欢本内容', '', 1332067458);
INSERT INTO `th_feeds` VALUES (640, 136, 'likes', 6, '喜欢本内容', '', 1332067460);
INSERT INTO `th_feeds` VALUES (641, 134, 'likes', 6, '喜欢本内容', '', 1332067463);
INSERT INTO `th_feeds` VALUES (642, 133, 'likes', 6, '喜欢本内容', '', 1332067464);
INSERT INTO `th_feeds` VALUES (643, 131, 'likes', 6, '喜欢本内容', '', 1332067468);
INSERT INTO `th_feeds` VALUES (644, 130, 'likes', 6, '喜欢本内容', '', 1332067470);
INSERT INTO `th_feeds` VALUES (645, 129, 'likes', 6, '喜欢本内容', '', 1332067471);
INSERT INTO `th_feeds` VALUES (646, 128, 'likes', 6, '喜欢本内容', '', 1332067473);
INSERT INTO `th_feeds` VALUES (647, 127, 'likes', 6, '喜欢本内容', '', 1332067478);
INSERT INTO `th_feeds` VALUES (648, 126, 'likes', 6, '喜欢本内容', '', 1332067481);
INSERT INTO `th_feeds` VALUES (649, 125, 'likes', 6, '喜欢本内容', '', 1332067485);
INSERT INTO `th_feeds` VALUES (650, 124, 'likes', 6, '喜欢本内容', '', 1332067486);
INSERT INTO `th_feeds` VALUES (651, 123, 'likes', 6, '喜欢本内容', '', 1332067487);
INSERT INTO `th_feeds` VALUES (652, 122, 'likes', 6, '喜欢本内容', '', 1332067489);
INSERT INTO `th_feeds` VALUES (653, 121, 'likes', 6, '喜欢本内容', '', 1332067491);
INSERT INTO `th_feeds` VALUES (654, 120, 'likes', 6, '喜欢本内容', '', 1332067493);
INSERT INTO `th_feeds` VALUES (655, 118, 'likes', 6, '喜欢本内容', '', 1332067496);
INSERT INTO `th_feeds` VALUES (656, 116, 'likes', 6, '喜欢本内容', '', 1332067503);
INSERT INTO `th_feeds` VALUES (657, 113, 'likes', 6, '喜欢本内容', '', 1332067507);
INSERT INTO `th_feeds` VALUES (658, 112, 'likes', 6, '喜欢本内容', '', 1332067509);
INSERT INTO `th_feeds` VALUES (659, 107, 'likes', 6, '喜欢本内容', '', 1332067514);
INSERT INTO `th_feeds` VALUES (660, 106, 'likes', 6, '喜欢本内容', '', 1332067518);
INSERT INTO `th_feeds` VALUES (661, 105, 'likes', 6, '喜欢本内容', '', 1332067521);
INSERT INTO `th_feeds` VALUES (662, 104, 'likes', 6, '喜欢本内容', '', 1332067523);
INSERT INTO `th_feeds` VALUES (663, 99, 'likes', 6, '喜欢本内容', '', 1332067526);
INSERT INTO `th_feeds` VALUES (664, 97, 'likes', 6, '喜欢本内容', '', 1332067527);
INSERT INTO `th_feeds` VALUES (665, 98, 'likes', 6, '喜欢本内容', '', 1332067532);
INSERT INTO `th_feeds` VALUES (666, 156, 'likes', 16, '喜欢本内容', '', 1332067566);
INSERT INTO `th_feeds` VALUES (667, 155, 'likes', 16, '喜欢本内容', '', 1332067569);
INSERT INTO `th_feeds` VALUES (668, 154, 'likes', 16, '喜欢本内容', '', 1332067572);
INSERT INTO `th_feeds` VALUES (669, 153, 'likes', 16, '喜欢本内容', '', 1332067574);
INSERT INTO `th_feeds` VALUES (670, 152, 'likes', 16, '喜欢本内容', '', 1332067575);
INSERT INTO `th_feeds` VALUES (671, 151, 'likes', 16, '喜欢本内容', '', 1332067577);
INSERT INTO `th_feeds` VALUES (672, 150, 'likes', 16, '喜欢本内容', '', 1332067578);
INSERT INTO `th_feeds` VALUES (673, 149, 'likes', 16, '喜欢本内容', '', 1332067580);
INSERT INTO `th_feeds` VALUES (674, 148, 'likes', 16, '喜欢本内容', '', 1332067583);
INSERT INTO `th_feeds` VALUES (675, 147, 'likes', 16, '喜欢本内容', '', 1332067586);
INSERT INTO `th_feeds` VALUES (676, 109, 'likes', 16, '喜欢本内容', '', 1332067591);
INSERT INTO `th_feeds` VALUES (677, 145, 'likes', 16, '喜欢本内容', '', 1332067595);
INSERT INTO `th_feeds` VALUES (678, 144, 'likes', 16, '喜欢本内容', '', 1332067598);
INSERT INTO `th_feeds` VALUES (679, 143, 'likes', 16, '喜欢本内容', '', 1332067599);
INSERT INTO `th_feeds` VALUES (680, 142, 'likes', 16, '喜欢本内容', '', 1332067601);
INSERT INTO `th_feeds` VALUES (681, 141, 'likes', 16, '喜欢本内容', '', 1332067602);
INSERT INTO `th_feeds` VALUES (682, 140, 'likes', 16, '喜欢本内容', '', 1332067607);
INSERT INTO `th_feeds` VALUES (683, 139, 'likes', 16, '喜欢本内容', '', 1332067608);
INSERT INTO `th_feeds` VALUES (684, 138, 'likes', 16, '喜欢本内容', '', 1332067610);
INSERT INTO `th_feeds` VALUES (685, 137, 'likes', 16, '喜欢本内容', '', 1332067613);
INSERT INTO `th_feeds` VALUES (686, 136, 'likes', 16, '喜欢本内容', '', 1332067615);
INSERT INTO `th_feeds` VALUES (687, 135, 'likes', 16, '喜欢本内容', '', 1332067616);
INSERT INTO `th_feeds` VALUES (688, 134, 'likes', 16, '喜欢本内容', '', 1332067619);
INSERT INTO `th_feeds` VALUES (689, 131, 'likes', 16, '喜欢本内容', '', 1332067623);
INSERT INTO `th_feeds` VALUES (690, 130, 'likes', 16, '喜欢本内容', '', 1332067625);
INSERT INTO `th_feeds` VALUES (691, 129, 'likes', 16, '喜欢本内容', '', 1332067626);
INSERT INTO `th_feeds` VALUES (692, 128, 'likes', 16, '喜欢本内容', '', 1332067629);
INSERT INTO `th_feeds` VALUES (693, 127, 'likes', 16, '喜欢本内容', '', 1332067641);
INSERT INTO `th_feeds` VALUES (694, 126, 'likes', 16, '喜欢本内容', '', 1332067645);
INSERT INTO `th_feeds` VALUES (695, 124, 'likes', 16, '喜欢本内容', '', 1332067651);
INSERT INTO `th_feeds` VALUES (696, 123, 'likes', 16, '喜欢本内容', '', 1332067652);
INSERT INTO `th_feeds` VALUES (697, 122, 'likes', 16, '喜欢本内容', '', 1332067654);
INSERT INTO `th_feeds` VALUES (698, 121, 'likes', 16, '喜欢本内容', '', 1332067656);
INSERT INTO `th_feeds` VALUES (699, 120, 'likes', 16, '喜欢本内容', '', 1332067658);
INSERT INTO `th_feeds` VALUES (700, 119, 'likes', 16, '喜欢本内容', '', 1332067662);
INSERT INTO `th_feeds` VALUES (701, 118, 'likes', 16, '喜欢本内容', '', 1332067664);
INSERT INTO `th_feeds` VALUES (702, 117, 'likes', 16, '喜欢本内容', '', 1332067667);
INSERT INTO `th_feeds` VALUES (703, 116, 'likes', 16, '喜欢本内容', '', 1332067668);
INSERT INTO `th_feeds` VALUES (704, 115, 'likes', 16, '喜欢本内容', '', 1332067671);
INSERT INTO `th_feeds` VALUES (705, 114, 'likes', 16, '喜欢本内容', '', 1332067674);
INSERT INTO `th_feeds` VALUES (706, 113, 'likes', 16, '喜欢本内容', '', 1332067676);
INSERT INTO `th_feeds` VALUES (707, 112, 'likes', 16, '喜欢本内容', '', 1332067679);
INSERT INTO `th_feeds` VALUES (708, 107, 'likes', 16, '喜欢本内容', '', 1332067685);
INSERT INTO `th_feeds` VALUES (709, 106, 'likes', 16, '喜欢本内容', '', 1332067689);
INSERT INTO `th_feeds` VALUES (710, 105, 'likes', 16, '喜欢本内容', '', 1332067691);
INSERT INTO `th_feeds` VALUES (711, 104, 'likes', 16, '喜欢本内容', '', 1332067692);
INSERT INTO `th_feeds` VALUES (712, 99, 'likes', 16, '喜欢本内容', '', 1332067697);
INSERT INTO `th_feeds` VALUES (713, 97, 'likes', 16, '喜欢本内容', '', 1332067698);
INSERT INTO `th_feeds` VALUES (714, 96, 'likes', 16, '喜欢本内容', '', 1332067702);
INSERT INTO `th_feeds` VALUES (715, 98, 'likes', 16, '喜欢本内容', '', 1332067704);
INSERT INTO `th_feeds` VALUES (716, 156, 'likes', 17, '喜欢本内容', '', 1332067723);
INSERT INTO `th_feeds` VALUES (717, 155, 'likes', 17, '喜欢本内容', '', 1332067725);
INSERT INTO `th_feeds` VALUES (718, 154, 'likes', 17, '喜欢本内容', '', 1332067730);
INSERT INTO `th_feeds` VALUES (719, 153, 'likes', 17, '喜欢本内容', '', 1332067731);
INSERT INTO `th_feeds` VALUES (720, 152, 'likes', 17, '喜欢本内容', '', 1332067734);
INSERT INTO `th_feeds` VALUES (721, 151, 'likes', 17, '喜欢本内容', '', 1332067735);
INSERT INTO `th_feeds` VALUES (722, 150, 'likes', 17, '喜欢本内容', '', 1332067738);
INSERT INTO `th_feeds` VALUES (723, 149, 'likes', 17, '喜欢本内容', '', 1332067740);
INSERT INTO `th_feeds` VALUES (724, 147, 'likes', 17, '喜欢本内容', '', 1332067745);
INSERT INTO `th_feeds` VALUES (725, 109, 'likes', 17, '喜欢本内容', '', 1332067748);
INSERT INTO `th_feeds` VALUES (726, 146, 'likes', 17, '喜欢本内容', '', 1332067752);
INSERT INTO `th_feeds` VALUES (727, 145, 'likes', 17, '喜欢本内容', '', 1332067754);
INSERT INTO `th_feeds` VALUES (728, 144, 'likes', 17, '喜欢本内容', '', 1332067756);
INSERT INTO `th_feeds` VALUES (729, 143, 'likes', 17, '喜欢本内容', '', 1332067758);
INSERT INTO `th_feeds` VALUES (730, 141, 'likes', 17, '喜欢本内容', '', 1332067759);
INSERT INTO `th_feeds` VALUES (731, 140, 'likes', 17, '喜欢本内容', '', 1332067762);
INSERT INTO `th_feeds` VALUES (732, 138, 'likes', 17, '喜欢本内容', '', 1332067764);
INSERT INTO `th_feeds` VALUES (733, 137, 'likes', 17, '喜欢本内容', '', 1332067768);
INSERT INTO `th_feeds` VALUES (734, 136, 'likes', 17, '喜欢本内容', '', 1332067769);
INSERT INTO `th_feeds` VALUES (735, 135, 'likes', 17, '喜欢本内容', '', 1332067771);
INSERT INTO `th_feeds` VALUES (736, 134, 'likes', 17, '喜欢本内容', '', 1332067774);
INSERT INTO `th_feeds` VALUES (737, 130, 'likes', 17, '喜欢本内容', '', 1332067779);
INSERT INTO `th_feeds` VALUES (738, 129, 'likes', 17, '喜欢本内容', '', 1332067781);
INSERT INTO `th_feeds` VALUES (739, 128, 'likes', 17, '喜欢本内容', '', 1332067783);
INSERT INTO `th_feeds` VALUES (740, 127, 'likes', 17, '喜欢本内容', '', 1332067789);
INSERT INTO `th_feeds` VALUES (741, 126, 'likes', 17, '喜欢本内容', '', 1332067793);
INSERT INTO `th_feeds` VALUES (742, 123, 'likes', 17, '喜欢本内容', '', 1332067800);
INSERT INTO `th_feeds` VALUES (743, 122, 'likes', 17, '喜欢本内容', '', 1332067802);
INSERT INTO `th_feeds` VALUES (744, 121, 'likes', 17, '喜欢本内容', '', 1332067804);
INSERT INTO `th_feeds` VALUES (745, 120, 'likes', 17, '喜欢本内容', '', 1332067806);
INSERT INTO `th_feeds` VALUES (746, 118, 'likes', 17, '喜欢本内容', '', 1332067812);
INSERT INTO `th_feeds` VALUES (747, 114, 'likes', 17, '喜欢本内容', '', 1332067818);
INSERT INTO `th_feeds` VALUES (748, 113, 'likes', 17, '喜欢本内容', '', 1332067820);
INSERT INTO `th_feeds` VALUES (749, 112, 'likes', 17, '喜欢本内容', '', 1332067823);
INSERT INTO `th_feeds` VALUES (750, 111, 'likes', 17, '喜欢本内容', '', 1332067824);
INSERT INTO `th_feeds` VALUES (751, 107, 'likes', 17, '喜欢本内容', '', 1332067830);
INSERT INTO `th_feeds` VALUES (752, 105, 'likes', 17, '喜欢本内容', '', 1332067849);
INSERT INTO `th_feeds` VALUES (753, 104, 'likes', 17, '喜欢本内容', '', 1332067851);
INSERT INTO `th_feeds` VALUES (754, 103, 'likes', 17, '喜欢本内容', '', 1332067855);
INSERT INTO `th_feeds` VALUES (755, 99, 'likes', 17, '喜欢本内容', '', 1332067857);
INSERT INTO `th_feeds` VALUES (756, 97, 'likes', 17, '喜欢本内容', '', 1332067858);
INSERT INTO `th_feeds` VALUES (757, 98, 'likes', 17, '喜欢本内容', '', 1332067862);
INSERT INTO `th_feeds` VALUES (758, 156, 'likes', 22, '喜欢本内容', '', 1332067921);
INSERT INTO `th_feeds` VALUES (759, 155, 'likes', 22, '喜欢本内容', '', 1332067922);
INSERT INTO `th_feeds` VALUES (760, 154, 'likes', 22, '喜欢本内容', '', 1332067926);
INSERT INTO `th_feeds` VALUES (761, 153, 'likes', 22, '喜欢本内容', '', 1332067928);
INSERT INTO `th_feeds` VALUES (762, 152, 'likes', 22, '喜欢本内容', '', 1332067931);
INSERT INTO `th_feeds` VALUES (763, 151, 'likes', 22, '喜欢本内容', '', 1332067932);
INSERT INTO `th_feeds` VALUES (764, 150, 'likes', 22, '喜欢本内容', '', 1332067937);
INSERT INTO `th_feeds` VALUES (765, 149, 'likes', 22, '喜欢本内容', '', 1332067938);
INSERT INTO `th_feeds` VALUES (766, 148, 'likes', 22, '喜欢本内容', '', 1332067942);
INSERT INTO `th_feeds` VALUES (767, 147, 'likes', 22, '喜欢本内容', '', 1332067947);
INSERT INTO `th_feeds` VALUES (768, 109, 'likes', 22, '喜欢本内容', '', 1332067951);
INSERT INTO `th_feeds` VALUES (769, 145, 'likes', 22, '喜欢本内容', '', 1332067955);
INSERT INTO `th_feeds` VALUES (770, 143, 'likes', 22, '喜欢本内容', '', 1332067958);
INSERT INTO `th_feeds` VALUES (771, 142, 'likes', 22, '喜欢本内容', '', 1332067960);
INSERT INTO `th_feeds` VALUES (772, 141, 'likes', 22, '喜欢本内容', '', 1332067962);
INSERT INTO `th_feeds` VALUES (773, 140, 'likes', 22, '喜欢本内容', '', 1332067966);
INSERT INTO `th_feeds` VALUES (774, 139, 'likes', 22, '喜欢本内容', '', 1332067967);
INSERT INTO `th_feeds` VALUES (775, 138, 'likes', 22, '喜欢本内容', '', 1332067968);
INSERT INTO `th_feeds` VALUES (776, 137, 'likes', 22, '喜欢本内容', '', 1332067973);
INSERT INTO `th_feeds` VALUES (777, 136, 'likes', 22, '喜欢本内容', '', 1332067974);
INSERT INTO `th_feeds` VALUES (778, 134, 'likes', 22, '喜欢本内容', '', 1332067976);
INSERT INTO `th_feeds` VALUES (779, 133, 'likes', 22, '喜欢本内容', '', 1332067977);
INSERT INTO `th_feeds` VALUES (780, 132, 'likes', 22, '喜欢本内容', '', 1332067979);
INSERT INTO `th_feeds` VALUES (781, 131, 'likes', 22, '喜欢本内容', '', 1332067980);
INSERT INTO `th_feeds` VALUES (782, 130, 'likes', 22, '喜欢本内容', '', 1332067982);
INSERT INTO `th_feeds` VALUES (783, 129, 'likes', 22, '喜欢本内容', '', 1332067983);
INSERT INTO `th_feeds` VALUES (784, 128, 'likes', 22, '喜欢本内容', '', 1332067985);
INSERT INTO `th_feeds` VALUES (785, 127, 'likes', 22, '喜欢本内容', '', 1332067988);
INSERT INTO `th_feeds` VALUES (786, 126, 'likes', 22, '喜欢本内容', '', 1332067992);
INSERT INTO `th_feeds` VALUES (787, 124, 'likes', 22, '喜欢本内容', '', 1332067996);
INSERT INTO `th_feeds` VALUES (788, 123, 'likes', 22, '喜欢本内容', '', 1332067997);
INSERT INTO `th_feeds` VALUES (789, 122, 'likes', 22, '喜欢本内容', '', 1332067998);
INSERT INTO `th_feeds` VALUES (790, 121, 'likes', 22, '喜欢本内容', '', 1332068000);
INSERT INTO `th_feeds` VALUES (791, 120, 'likes', 22, '喜欢本内容', '', 1332068002);
INSERT INTO `th_feeds` VALUES (792, 118, 'likes', 22, '喜欢本内容', '', 1332068006);
INSERT INTO `th_feeds` VALUES (793, 117, 'likes', 22, '喜欢本内容', '', 1332068011);
INSERT INTO `th_feeds` VALUES (794, 114, 'likes', 22, '喜欢本内容', '', 1332068014);
INSERT INTO `th_feeds` VALUES (795, 113, 'likes', 22, '喜欢本内容', '', 1332068016);
INSERT INTO `th_feeds` VALUES (796, 112, 'likes', 22, '喜欢本内容', '', 1332068018);
INSERT INTO `th_feeds` VALUES (797, 107, 'likes', 22, '喜欢本内容', '', 1332068023);
INSERT INTO `th_feeds` VALUES (798, 106, 'likes', 22, '喜欢本内容', '', 1332068026);
INSERT INTO `th_feeds` VALUES (799, 105, 'likes', 22, '喜欢本内容', '', 1332068027);
INSERT INTO `th_feeds` VALUES (800, 104, 'likes', 22, '喜欢本内容', '', 1332068029);
INSERT INTO `th_feeds` VALUES (801, 99, 'likes', 22, '喜欢本内容', '', 1332068033);
INSERT INTO `th_feeds` VALUES (802, 97, 'likes', 22, '喜欢本内容', '', 1332068035);
INSERT INTO `th_feeds` VALUES (803, 98, 'likes', 22, '喜欢本内容', '', 1332068040);
INSERT INTO `th_feeds` VALUES (804, 156, 'likes', 23, '喜欢本内容', '', 1332068085);
INSERT INTO `th_feeds` VALUES (805, 155, 'likes', 23, '喜欢本内容', '', 1332068087);
INSERT INTO `th_feeds` VALUES (806, 153, 'likes', 23, '喜欢本内容', '', 1332068092);
INSERT INTO `th_feeds` VALUES (807, 151, 'likes', 23, '喜欢本内容', '', 1332068097);
INSERT INTO `th_feeds` VALUES (808, 149, 'likes', 23, '喜欢本内容', '', 1332068103);
INSERT INTO `th_feeds` VALUES (809, 147, 'likes', 23, '喜欢本内容', '', 1332068114);
INSERT INTO `th_feeds` VALUES (810, 109, 'likes', 23, '喜欢本内容', '', 1332068124);
INSERT INTO `th_feeds` VALUES (811, 145, 'likes', 23, '喜欢本内容', '', 1332068128);
INSERT INTO `th_feeds` VALUES (812, 144, 'likes', 23, '喜欢本内容', '', 1332068130);
INSERT INTO `th_feeds` VALUES (813, 143, 'likes', 23, '喜欢本内容', '', 1332068131);
INSERT INTO `th_feeds` VALUES (814, 142, 'likes', 23, '喜欢本内容', '', 1332068132);
INSERT INTO `th_feeds` VALUES (815, 141, 'likes', 23, '喜欢本内容', '', 1332068134);
INSERT INTO `th_feeds` VALUES (816, 140, 'likes', 23, '喜欢本内容', '', 1332068138);
INSERT INTO `th_feeds` VALUES (817, 139, 'likes', 23, '喜欢本内容', '', 1332068140);
INSERT INTO `th_feeds` VALUES (818, 138, 'likes', 23, '喜欢本内容', '', 1332068141);
INSERT INTO `th_feeds` VALUES (819, 137, 'likes', 23, '喜欢本内容', '', 1332068145);
INSERT INTO `th_feeds` VALUES (820, 136, 'likes', 23, '喜欢本内容', '', 1332068147);
INSERT INTO `th_feeds` VALUES (821, 135, 'likes', 23, '喜欢本内容', '', 1332068149);
INSERT INTO `th_feeds` VALUES (822, 134, 'likes', 23, '喜欢本内容', '', 1332068151);
INSERT INTO `th_feeds` VALUES (823, 130, 'likes', 23, '喜欢本内容', '', 1332068154);
INSERT INTO `th_feeds` VALUES (824, 129, 'likes', 23, '喜欢本内容', '', 1332068155);
INSERT INTO `th_feeds` VALUES (825, 128, 'likes', 23, '喜欢本内容', '', 1332068157);
INSERT INTO `th_feeds` VALUES (826, 127, 'likes', 23, '喜欢本内容', '', 1332068160);
INSERT INTO `th_feeds` VALUES (827, 126, 'likes', 23, '喜欢本内容', '', 1332068164);
INSERT INTO `th_feeds` VALUES (828, 124, 'likes', 23, '喜欢本内容', '', 1332068168);
INSERT INTO `th_feeds` VALUES (829, 123, 'likes', 23, '喜欢本内容', '', 1332068169);
INSERT INTO `th_feeds` VALUES (830, 122, 'likes', 23, '喜欢本内容', '', 1332068171);
INSERT INTO `th_feeds` VALUES (831, 121, 'likes', 23, '喜欢本内容', '', 1332068173);
INSERT INTO `th_feeds` VALUES (832, 120, 'likes', 23, '喜欢本内容', '', 1332068175);
INSERT INTO `th_feeds` VALUES (833, 118, 'likes', 23, '喜欢本内容', '', 1332068179);
INSERT INTO `th_feeds` VALUES (834, 106, 'likes', 23, '喜欢本内容', '', 1332068182);
INSERT INTO `th_feeds` VALUES (835, 105, 'likes', 23, '喜欢本内容', '', 1332068185);
INSERT INTO `th_feeds` VALUES (836, 113, 'likes', 23, '喜欢本内容', '', 1332068201);
INSERT INTO `th_feeds` VALUES (837, 112, 'likes', 23, '喜欢本内容', '', 1332068204);
INSERT INTO `th_feeds` VALUES (838, 107, 'likes', 23, '喜欢本内容', '', 1332068208);
INSERT INTO `th_feeds` VALUES (839, 94, 'likes', 23, '喜欢本内容', '', 1332068223);
INSERT INTO `th_feeds` VALUES (840, 76, 'likes', 23, '喜欢本内容', '', 1332068224);
INSERT INTO `th_feeds` VALUES (841, 59, 'likes', 23, '喜欢本内容', '', 1332068250);
INSERT INTO `th_feeds` VALUES (842, 82, 'likes', 23, '喜欢本内容', '', 1332068254);
INSERT INTO `th_feeds` VALUES (843, 77, 'likes', 23, '喜欢本内容', '', 1332068255);
INSERT INTO `th_feeds` VALUES (844, 156, 'likes', 18, '喜欢本内容', '', 1332948529);
INSERT INTO `th_feeds` VALUES (845, 155, 'likes', 18, '喜欢本内容', '', 1332948534);
INSERT INTO `th_feeds` VALUES (846, 140, 'likes', 18, '喜欢本内容', '', 1333109538);
INSERT INTO `th_feeds` VALUES (847, 139, 'likes', 18, '喜欢本内容', '', 1333109541);
INSERT INTO `th_feeds` VALUES (848, 138, 'likes', 18, '喜欢本内容', '', 1333109543);
INSERT INTO `th_feeds` VALUES (849, 162, 'likes', 22, '喜欢本内容', '', 1333253644);
INSERT INTO `th_feeds` VALUES (850, 160, 'likes', 22, '喜欢本内容', '', 1333253648);
INSERT INTO `th_feeds` VALUES (851, 161, 'likes', 22, '喜欢本内容', '', 1333253650);
INSERT INTO `th_feeds` VALUES (852, 159, 'likes', 22, '喜欢本内容', '', 1333253653);
INSERT INTO `th_feeds` VALUES (853, 157, 'likes', 22, '喜欢本内容', '', 1333253657);
INSERT INTO `th_feeds` VALUES (854, 162, 'likes', 16, '喜欢本内容', '', 1333253735);
INSERT INTO `th_feeds` VALUES (855, 161, 'likes', 16, '喜欢本内容', '', 1333253736);
INSERT INTO `th_feeds` VALUES (856, 160, 'likes', 16, '喜欢本内容', '', 1333253738);
INSERT INTO `th_feeds` VALUES (857, 159, 'likes', 16, '喜欢本内容', '', 1333253739);
INSERT INTO `th_feeds` VALUES (858, 157, 'likes', 16, '喜欢本内容', '', 1333253741);
INSERT INTO `th_feeds` VALUES (859, 162, 'likes', 17, '喜欢本内容', '', 1333253801);
INSERT INTO `th_feeds` VALUES (860, 161, 'likes', 17, '喜欢本内容', '', 1333253804);
INSERT INTO `th_feeds` VALUES (861, 160, 'likes', 17, '喜欢本内容', '', 1333253805);
INSERT INTO `th_feeds` VALUES (862, 159, 'likes', 17, '喜欢本内容', '', 1333253807);
INSERT INTO `th_feeds` VALUES (863, 157, 'likes', 17, '喜欢本内容', '', 1333253808);
INSERT INTO `th_feeds` VALUES (864, 163, 'likes', 1, '喜欢本内容', '', 1333259214);
INSERT INTO `th_feeds` VALUES (865, 16, 'recomm', 1, '推荐本内容', '', 1333273879);
INSERT INTO `th_feeds` VALUES (866, 166, 'likes', 1, '喜欢本内容', '', 1333275233);
INSERT INTO `th_feeds` VALUES (867, 176, 'likes', 27, '喜欢本内容', '', 1336803813);
INSERT INTO `th_feeds` VALUES (868, 175, 'likes', 18, '喜欢本内容', '', 1336975773);
INSERT INTO `th_feeds` VALUES (869, 176, 'likes', 31, '喜欢本内容', '', 1339140795);
INSERT INTO `th_feeds` VALUES (870, 175, 'likes', 31, '喜欢本内容', '', 1339140800);
INSERT INTO `th_feeds` VALUES (871, 174, 'likes', 31, '喜欢本内容', '', 1339140809);
INSERT INTO `th_feeds` VALUES (872, 172, 'likes', 32, '喜欢本内容', '', 1339217045);

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
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

-- 
-- 导出表中的数据 `th_follow`
-- 

INSERT INTO `th_follow` VALUES (1, 6, 5, 0, 1331868806);
INSERT INTO `th_follow` VALUES (2, 6, 1, 0, 1331868807);
INSERT INTO `th_follow` VALUES (3, 6, 2, 0, 1331868808);
INSERT INTO `th_follow` VALUES (4, 6, 4, 0, 1331868810);
INSERT INTO `th_follow` VALUES (5, 6, 3, 0, 1331868812);
INSERT INTO `th_follow` VALUES (6, 1, 11, 0, 1331906466);
INSERT INTO `th_follow` VALUES (7, 1, 12, 0, 1331909373);
INSERT INTO `th_follow` VALUES (8, 1, 10, 0, 1331909378);
INSERT INTO `th_follow` VALUES (10, 1, 13, 0, 1331975968);
INSERT INTO `th_follow` VALUES (11, 7, 14, 0, 1331979514);
INSERT INTO `th_follow` VALUES (12, 7, 13, 0, 1331979514);
INSERT INTO `th_follow` VALUES (13, 1, 18, 1, 1331985210);
INSERT INTO `th_follow` VALUES (16, 18, 14, 0, 1331987954);
INSERT INTO `th_follow` VALUES (17, 18, 13, 0, 1331987958);
INSERT INTO `th_follow` VALUES (18, 18, 10, 0, 1331992902);
INSERT INTO `th_follow` VALUES (19, 18, 2, 0, 1331992904);
INSERT INTO `th_follow` VALUES (20, 18, 12, 0, 1331992906);
INSERT INTO `th_follow` VALUES (21, 18, 6, 0, 1331992908);
INSERT INTO `th_follow` VALUES (22, 18, 1, 1, 1331992912);

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
) ENGINE=MyISAM AUTO_INCREMENT=872 DEFAULT CHARSET=utf8 AUTO_INCREMENT=872 ;

-- 
-- 导出表中的数据 `th_likes`
-- 

INSERT INTO `th_likes` VALUES (1, 2, 16, 1331866136, 1);
INSERT INTO `th_likes` VALUES (2, 2, 15, 1331866137, 1);
INSERT INTO `th_likes` VALUES (3, 2, 14, 1331866139, 1);
INSERT INTO `th_likes` VALUES (193, 7, 94, 1331979523, 1);
INSERT INTO `th_likes` VALUES (5, 2, 12, 1331866142, 1);
INSERT INTO `th_likes` VALUES (6, 2, 11, 1331866143, 1);
INSERT INTO `th_likes` VALUES (7, 2, 10, 1331866145, 1);
INSERT INTO `th_likes` VALUES (8, 2, 9, 1331866145, 1);
INSERT INTO `th_likes` VALUES (9, 2, 8, 1331866148, 1);
INSERT INTO `th_likes` VALUES (10, 2, 7, 1331866150, 1);
INSERT INTO `th_likes` VALUES (11, 2, 6, 1331866154, 1);
INSERT INTO `th_likes` VALUES (12, 2, 5, 1331866156, 1);
INSERT INTO `th_likes` VALUES (13, 2, 4, 1331866158, 1);
INSERT INTO `th_likes` VALUES (14, 2, 3, 1331866159, 1);
INSERT INTO `th_likes` VALUES (15, 2, 1, 1331866160, 1);
INSERT INTO `th_likes` VALUES (16, 2, 2, 1331866161, 1);
INSERT INTO `th_likes` VALUES (17, 3, 31, 1331867413, 1);
INSERT INTO `th_likes` VALUES (18, 3, 30, 1331867418, 1);
INSERT INTO `th_likes` VALUES (19, 3, 29, 1331867421, 1);
INSERT INTO `th_likes` VALUES (20, 3, 28, 1331867422, 1);
INSERT INTO `th_likes` VALUES (21, 3, 27, 1331867424, 1);
INSERT INTO `th_likes` VALUES (22, 3, 26, 1331867426, 1);
INSERT INTO `th_likes` VALUES (23, 3, 24, 1331867429, 1);
INSERT INTO `th_likes` VALUES (24, 3, 25, 1331867431, 1);
INSERT INTO `th_likes` VALUES (25, 3, 22, 1331867431, 1);
INSERT INTO `th_likes` VALUES (26, 3, 20, 1331867437, 1);
INSERT INTO `th_likes` VALUES (27, 3, 21, 1331867437, 1);
INSERT INTO `th_likes` VALUES (28, 3, 19, 1331867439, 1);
INSERT INTO `th_likes` VALUES (29, 3, 18, 1331867442, 1);
INSERT INTO `th_likes` VALUES (30, 3, 17, 1331867443, 1);
INSERT INTO `th_likes` VALUES (31, 3, 16, 1331867444, 1);
INSERT INTO `th_likes` VALUES (32, 3, 15, 1331867447, 1);
INSERT INTO `th_likes` VALUES (33, 3, 14, 1331867449, 1);
INSERT INTO `th_likes` VALUES (192, 7, 95, 1331979522, 1);
INSERT INTO `th_likes` VALUES (35, 3, 12, 1331867453, 1);
INSERT INTO `th_likes` VALUES (36, 3, 11, 1331867461, 1);
INSERT INTO `th_likes` VALUES (37, 3, 9, 1331867462, 1);
INSERT INTO `th_likes` VALUES (38, 3, 10, 1331867464, 1);
INSERT INTO `th_likes` VALUES (39, 3, 8, 1331867464, 1);
INSERT INTO `th_likes` VALUES (40, 3, 7, 1331867466, 1);
INSERT INTO `th_likes` VALUES (41, 3, 6, 1331867467, 1);
INSERT INTO `th_likes` VALUES (42, 3, 4, 1331867471, 1);
INSERT INTO `th_likes` VALUES (43, 3, 3, 1331867473, 1);
INSERT INTO `th_likes` VALUES (44, 3, 2, 1331867475, 1);
INSERT INTO `th_likes` VALUES (45, 3, 1, 1331867483, 1);
INSERT INTO `th_likes` VALUES (46, 1, 33, 1331868030, 1);
INSERT INTO `th_likes` VALUES (47, 1, 32, 1331868032, 1);
INSERT INTO `th_likes` VALUES (48, 1, 31, 1331868036, 1);
INSERT INTO `th_likes` VALUES (49, 1, 30, 1331868041, 1);
INSERT INTO `th_likes` VALUES (50, 1, 29, 1331868044, 1);
INSERT INTO `th_likes` VALUES (51, 1, 28, 1331868045, 1);
INSERT INTO `th_likes` VALUES (52, 1, 27, 1331868046, 1);
INSERT INTO `th_likes` VALUES (53, 1, 26, 1331868049, 1);
INSERT INTO `th_likes` VALUES (54, 1, 25, 1331868050, 1);
INSERT INTO `th_likes` VALUES (55, 1, 24, 1331868051, 1);
INSERT INTO `th_likes` VALUES (56, 1, 23, 1331868055, 1);
INSERT INTO `th_likes` VALUES (57, 1, 22, 1331868057, 1);
INSERT INTO `th_likes` VALUES (58, 1, 21, 1331868058, 1);
INSERT INTO `th_likes` VALUES (59, 1, 20, 1331868058, 1);
INSERT INTO `th_likes` VALUES (60, 1, 18, 1331868063, 1);
INSERT INTO `th_likes` VALUES (61, 1, 19, 1331868063, 1);
INSERT INTO `th_likes` VALUES (62, 1, 17, 1331868065, 1);
INSERT INTO `th_likes` VALUES (63, 4, 33, 1331868137, 1);
INSERT INTO `th_likes` VALUES (64, 4, 32, 1331868140, 1);
INSERT INTO `th_likes` VALUES (65, 4, 31, 1331868141, 1);
INSERT INTO `th_likes` VALUES (66, 4, 30, 1331868144, 1);
INSERT INTO `th_likes` VALUES (67, 4, 29, 1331868146, 1);
INSERT INTO `th_likes` VALUES (68, 4, 28, 1331868147, 1);
INSERT INTO `th_likes` VALUES (69, 4, 27, 1331868149, 1);
INSERT INTO `th_likes` VALUES (70, 4, 26, 1331868152, 1);
INSERT INTO `th_likes` VALUES (71, 4, 25, 1331868155, 1);
INSERT INTO `th_likes` VALUES (72, 4, 24, 1331868156, 1);
INSERT INTO `th_likes` VALUES (73, 4, 23, 1331868159, 1);
INSERT INTO `th_likes` VALUES (74, 4, 22, 1331868160, 1);
INSERT INTO `th_likes` VALUES (75, 4, 21, 1331868162, 1);
INSERT INTO `th_likes` VALUES (76, 4, 19, 1331868165, 1);
INSERT INTO `th_likes` VALUES (77, 4, 20, 1331868167, 1);
INSERT INTO `th_likes` VALUES (78, 4, 18, 1331868169, 1);
INSERT INTO `th_likes` VALUES (79, 4, 16, 1331868171, 1);
INSERT INTO `th_likes` VALUES (80, 4, 15, 1331868173, 1);
INSERT INTO `th_likes` VALUES (81, 4, 14, 1331868173, 1);
INSERT INTO `th_likes` VALUES (191, 7, 96, 1331979520, 1);
INSERT INTO `th_likes` VALUES (83, 4, 12, 1331868182, 1);
INSERT INTO `th_likes` VALUES (84, 4, 11, 1331868183, 1);
INSERT INTO `th_likes` VALUES (85, 4, 10, 1331868184, 1);
INSERT INTO `th_likes` VALUES (86, 4, 8, 1331868186, 1);
INSERT INTO `th_likes` VALUES (87, 4, 9, 1331868186, 1);
INSERT INTO `th_likes` VALUES (88, 4, 7, 1331868188, 1);
INSERT INTO `th_likes` VALUES (89, 4, 6, 1331868189, 1);
INSERT INTO `th_likes` VALUES (90, 4, 5, 1331868191, 1);
INSERT INTO `th_likes` VALUES (91, 4, 4, 1331868193, 1);
INSERT INTO `th_likes` VALUES (92, 4, 3, 1331868196, 1);
INSERT INTO `th_likes` VALUES (93, 4, 2, 1331868199, 1);
INSERT INTO `th_likes` VALUES (94, 4, 1, 1331868203, 1);
INSERT INTO `th_likes` VALUES (95, 5, 36, 1331868552, 1);
INSERT INTO `th_likes` VALUES (96, 5, 35, 1331868554, 1);
INSERT INTO `th_likes` VALUES (97, 5, 34, 1331868555, 1);
INSERT INTO `th_likes` VALUES (98, 5, 33, 1331868557, 1);
INSERT INTO `th_likes` VALUES (99, 5, 32, 1331868560, 1);
INSERT INTO `th_likes` VALUES (100, 5, 31, 1331868561, 1);
INSERT INTO `th_likes` VALUES (101, 5, 30, 1331868563, 1);
INSERT INTO `th_likes` VALUES (102, 5, 29, 1331868564, 1);
INSERT INTO `th_likes` VALUES (103, 5, 28, 1331868566, 1);
INSERT INTO `th_likes` VALUES (104, 5, 27, 1331868568, 1);
INSERT INTO `th_likes` VALUES (105, 5, 26, 1331868573, 1);
INSERT INTO `th_likes` VALUES (106, 5, 24, 1331868575, 1);
INSERT INTO `th_likes` VALUES (107, 5, 25, 1331868575, 1);
INSERT INTO `th_likes` VALUES (108, 5, 22, 1331868578, 1);
INSERT INTO `th_likes` VALUES (109, 5, 20, 1331868579, 1);
INSERT INTO `th_likes` VALUES (110, 5, 19, 1331868580, 1);
INSERT INTO `th_likes` VALUES (111, 5, 18, 1331868581, 1);
INSERT INTO `th_likes` VALUES (112, 5, 17, 1331868583, 1);
INSERT INTO `th_likes` VALUES (113, 5, 16, 1331868588, 1);
INSERT INTO `th_likes` VALUES (114, 5, 15, 1331868588, 1);
INSERT INTO `th_likes` VALUES (115, 5, 14, 1331868590, 1);
INSERT INTO `th_likes` VALUES (190, 12, 25, 1331909711, 1);
INSERT INTO `th_likes` VALUES (117, 5, 12, 1331868596, 1);
INSERT INTO `th_likes` VALUES (118, 5, 11, 1331868597, 1);
INSERT INTO `th_likes` VALUES (119, 5, 9, 1331868598, 1);
INSERT INTO `th_likes` VALUES (120, 5, 10, 1331868600, 1);
INSERT INTO `th_likes` VALUES (121, 5, 8, 1331868600, 1);
INSERT INTO `th_likes` VALUES (122, 5, 7, 1331868602, 1);
INSERT INTO `th_likes` VALUES (123, 5, 6, 1331868604, 1);
INSERT INTO `th_likes` VALUES (124, 5, 5, 1331868607, 1);
INSERT INTO `th_likes` VALUES (125, 5, 4, 1331868608, 1);
INSERT INTO `th_likes` VALUES (126, 5, 2, 1331868612, 1);
INSERT INTO `th_likes` VALUES (127, 5, 3, 1331868613, 1);
INSERT INTO `th_likes` VALUES (128, 5, 1, 1331868614, 1);
INSERT INTO `th_likes` VALUES (129, 6, 36, 1331868684, 1);
INSERT INTO `th_likes` VALUES (130, 6, 35, 1331868687, 1);
INSERT INTO `th_likes` VALUES (131, 6, 34, 1331868688, 1);
INSERT INTO `th_likes` VALUES (132, 6, 33, 1331868691, 1);
INSERT INTO `th_likes` VALUES (133, 6, 32, 1331868695, 1);
INSERT INTO `th_likes` VALUES (134, 6, 31, 1331868697, 1);
INSERT INTO `th_likes` VALUES (135, 6, 30, 1331868697, 1);
INSERT INTO `th_likes` VALUES (136, 6, 29, 1331868697, 1);
INSERT INTO `th_likes` VALUES (137, 6, 28, 1331868699, 1);
INSERT INTO `th_likes` VALUES (138, 6, 27, 1331868700, 1);
INSERT INTO `th_likes` VALUES (139, 6, 26, 1331868707, 1);
INSERT INTO `th_likes` VALUES (140, 6, 25, 1331868711, 1);
INSERT INTO `th_likes` VALUES (141, 6, 24, 1331868712, 1);
INSERT INTO `th_likes` VALUES (142, 6, 23, 1331868714, 1);
INSERT INTO `th_likes` VALUES (143, 6, 22, 1331868717, 1);
INSERT INTO `th_likes` VALUES (144, 6, 20, 1331868719, 1);
INSERT INTO `th_likes` VALUES (145, 6, 21, 1331868721, 1);
INSERT INTO `th_likes` VALUES (146, 6, 19, 1331868721, 1);
INSERT INTO `th_likes` VALUES (147, 6, 18, 1331868722, 1);
INSERT INTO `th_likes` VALUES (148, 6, 17, 1331868722, 1);
INSERT INTO `th_likes` VALUES (149, 6, 16, 1331868727, 1);
INSERT INTO `th_likes` VALUES (150, 6, 15, 1331868730, 1);
INSERT INTO `th_likes` VALUES (151, 6, 14, 1331868732, 1);
INSERT INTO `th_likes` VALUES (189, 10, 38, 1331902526, 1);
INSERT INTO `th_likes` VALUES (153, 6, 11, 1331868736, 1);
INSERT INTO `th_likes` VALUES (154, 6, 12, 1331868738, 1);
INSERT INTO `th_likes` VALUES (155, 6, 10, 1331868739, 1);
INSERT INTO `th_likes` VALUES (156, 6, 9, 1331868739, 1);
INSERT INTO `th_likes` VALUES (157, 6, 8, 1331868739, 1);
INSERT INTO `th_likes` VALUES (158, 6, 7, 1331868745, 1);
INSERT INTO `th_likes` VALUES (159, 6, 6, 1331868752, 1);
INSERT INTO `th_likes` VALUES (160, 6, 5, 1331868753, 1);
INSERT INTO `th_likes` VALUES (161, 6, 4, 1331868755, 1);
INSERT INTO `th_likes` VALUES (162, 6, 3, 1331868756, 1);
INSERT INTO `th_likes` VALUES (163, 6, 1, 1331868758, 1);
INSERT INTO `th_likes` VALUES (164, 7, 42, 1331876663, 1);
INSERT INTO `th_likes` VALUES (165, 7, 41, 1331876667, 1);
INSERT INTO `th_likes` VALUES (166, 7, 40, 1331876668, 1);
INSERT INTO `th_likes` VALUES (167, 7, 38, 1331876671, 1);
INSERT INTO `th_likes` VALUES (168, 7, 37, 1331876672, 1);
INSERT INTO `th_likes` VALUES (169, 7, 36, 1331876674, 1);
INSERT INTO `th_likes` VALUES (170, 7, 35, 1331876676, 1);
INSERT INTO `th_likes` VALUES (171, 7, 34, 1331876679, 1);
INSERT INTO `th_likes` VALUES (172, 7, 33, 1331876681, 1);
INSERT INTO `th_likes` VALUES (173, 7, 32, 1331876690, 1);
INSERT INTO `th_likes` VALUES (174, 7, 31, 1331876692, 1);
INSERT INTO `th_likes` VALUES (175, 7, 30, 1331876697, 1);
INSERT INTO `th_likes` VALUES (176, 7, 29, 1331876702, 1);
INSERT INTO `th_likes` VALUES (177, 7, 28, 1331876704, 1);
INSERT INTO `th_likes` VALUES (178, 7, 27, 1331876707, 1);
INSERT INTO `th_likes` VALUES (179, 7, 25, 1331876717, 1);
INSERT INTO `th_likes` VALUES (180, 7, 23, 1331876720, 1);
INSERT INTO `th_likes` VALUES (181, 7, 22, 1331876724, 1);
INSERT INTO `th_likes` VALUES (182, 7, 21, 1331876726, 1);
INSERT INTO `th_likes` VALUES (183, 7, 20, 1331876728, 1);
INSERT INTO `th_likes` VALUES (184, 7, 19, 1331876729, 1);
INSERT INTO `th_likes` VALUES (185, 7, 18, 1331876731, 1);
INSERT INTO `th_likes` VALUES (186, 7, 17, 1331876733, 1);
INSERT INTO `th_likes` VALUES (188, 10, 42, 1331902498, 1);
INSERT INTO `th_likes` VALUES (194, 7, 93, 1331979524, 1);
INSERT INTO `th_likes` VALUES (195, 7, 92, 1331979526, 1);
INSERT INTO `th_likes` VALUES (196, 7, 91, 1331979528, 1);
INSERT INTO `th_likes` VALUES (197, 7, 90, 1331979530, 1);
INSERT INTO `th_likes` VALUES (198, 7, 89, 1331979531, 1);
INSERT INTO `th_likes` VALUES (199, 7, 87, 1331979534, 1);
INSERT INTO `th_likes` VALUES (200, 7, 86, 1331979538, 1);
INSERT INTO `th_likes` VALUES (201, 7, 85, 1331979540, 1);
INSERT INTO `th_likes` VALUES (202, 7, 84, 1331979543, 1);
INSERT INTO `th_likes` VALUES (203, 7, 83, 1331979544, 1);
INSERT INTO `th_likes` VALUES (204, 7, 82, 1331979546, 1);
INSERT INTO `th_likes` VALUES (205, 7, 80, 1331979548, 1);
INSERT INTO `th_likes` VALUES (206, 7, 79, 1331979549, 1);
INSERT INTO `th_likes` VALUES (207, 7, 78, 1331979550, 1);
INSERT INTO `th_likes` VALUES (208, 7, 77, 1331979552, 1);
INSERT INTO `th_likes` VALUES (209, 7, 76, 1331979553, 1);
INSERT INTO `th_likes` VALUES (210, 7, 75, 1331979558, 1);
INSERT INTO `th_likes` VALUES (211, 7, 74, 1331979559, 1);
INSERT INTO `th_likes` VALUES (212, 7, 73, 1331979560, 1);
INSERT INTO `th_likes` VALUES (213, 7, 72, 1331979561, 1);
INSERT INTO `th_likes` VALUES (214, 7, 71, 1331979563, 1);
INSERT INTO `th_likes` VALUES (215, 7, 70, 1331979565, 1);
INSERT INTO `th_likes` VALUES (216, 7, 69, 1331979566, 1);
INSERT INTO `th_likes` VALUES (217, 7, 67, 1331979569, 1);
INSERT INTO `th_likes` VALUES (218, 7, 66, 1331979571, 1);
INSERT INTO `th_likes` VALUES (219, 7, 65, 1331979577, 1);
INSERT INTO `th_likes` VALUES (542, 2, 109, 1332067110, 1);
INSERT INTO `th_likes` VALUES (221, 7, 64, 1331979581, 1);
INSERT INTO `th_likes` VALUES (222, 7, 63, 1331979583, 1);
INSERT INTO `th_likes` VALUES (223, 7, 62, 1331979584, 1);
INSERT INTO `th_likes` VALUES (224, 7, 61, 1331979586, 1);
INSERT INTO `th_likes` VALUES (225, 7, 60, 1331979587, 1);
INSERT INTO `th_likes` VALUES (226, 7, 59, 1331979589, 1);
INSERT INTO `th_likes` VALUES (227, 7, 58, 1331979590, 1);
INSERT INTO `th_likes` VALUES (228, 7, 57, 1331979591, 1);
INSERT INTO `th_likes` VALUES (229, 7, 56, 1331979594, 1);
INSERT INTO `th_likes` VALUES (230, 7, 54, 1331979596, 1);
INSERT INTO `th_likes` VALUES (231, 7, 53, 1331979598, 1);
INSERT INTO `th_likes` VALUES (232, 7, 52, 1331979599, 1);
INSERT INTO `th_likes` VALUES (233, 7, 51, 1331979601, 1);
INSERT INTO `th_likes` VALUES (234, 7, 50, 1331979603, 1);
INSERT INTO `th_likes` VALUES (235, 7, 49, 1331979604, 1);
INSERT INTO `th_likes` VALUES (236, 7, 48, 1331979605, 1);
INSERT INTO `th_likes` VALUES (237, 7, 47, 1331979607, 1);
INSERT INTO `th_likes` VALUES (238, 7, 45, 1331979608, 1);
INSERT INTO `th_likes` VALUES (239, 7, 44, 1331979611, 1);
INSERT INTO `th_likes` VALUES (240, 7, 43, 1331979613, 1);
INSERT INTO `th_likes` VALUES (241, 15, 96, 1331979692, 1);
INSERT INTO `th_likes` VALUES (242, 15, 95, 1331979693, 1);
INSERT INTO `th_likes` VALUES (243, 15, 94, 1331979694, 1);
INSERT INTO `th_likes` VALUES (244, 15, 93, 1331979695, 1);
INSERT INTO `th_likes` VALUES (245, 15, 92, 1331979697, 1);
INSERT INTO `th_likes` VALUES (246, 15, 91, 1331979698, 1);
INSERT INTO `th_likes` VALUES (247, 15, 90, 1331979700, 1);
INSERT INTO `th_likes` VALUES (248, 15, 89, 1331979701, 1);
INSERT INTO `th_likes` VALUES (249, 15, 88, 1331979703, 1);
INSERT INTO `th_likes` VALUES (250, 15, 87, 1331979704, 1);
INSERT INTO `th_likes` VALUES (251, 15, 86, 1331979708, 1);
INSERT INTO `th_likes` VALUES (252, 15, 85, 1331979709, 1);
INSERT INTO `th_likes` VALUES (253, 15, 84, 1331979711, 1);
INSERT INTO `th_likes` VALUES (254, 15, 82, 1331979712, 1);
INSERT INTO `th_likes` VALUES (255, 15, 83, 1331979714, 1);
INSERT INTO `th_likes` VALUES (256, 15, 80, 1331979716, 1);
INSERT INTO `th_likes` VALUES (257, 15, 79, 1331979718, 1);
INSERT INTO `th_likes` VALUES (258, 15, 77, 1331979719, 1);
INSERT INTO `th_likes` VALUES (259, 15, 76, 1331979720, 1);
INSERT INTO `th_likes` VALUES (260, 15, 75, 1331979723, 1);
INSERT INTO `th_likes` VALUES (261, 15, 74, 1331979724, 1);
INSERT INTO `th_likes` VALUES (262, 15, 73, 1331979726, 1);
INSERT INTO `th_likes` VALUES (263, 15, 72, 1331979727, 1);
INSERT INTO `th_likes` VALUES (264, 15, 71, 1331979728, 1);
INSERT INTO `th_likes` VALUES (265, 15, 70, 1331979729, 1);
INSERT INTO `th_likes` VALUES (266, 15, 69, 1331979730, 1);
INSERT INTO `th_likes` VALUES (267, 15, 67, 1331979733, 1);
INSERT INTO `th_likes` VALUES (268, 15, 66, 1331979734, 1);
INSERT INTO `th_likes` VALUES (541, 2, 147, 1332067105, 1);
INSERT INTO `th_likes` VALUES (270, 15, 64, 1331979741, 1);
INSERT INTO `th_likes` VALUES (271, 15, 63, 1331979743, 1);
INSERT INTO `th_likes` VALUES (272, 15, 62, 1331979745, 1);
INSERT INTO `th_likes` VALUES (273, 15, 61, 1331979746, 1);
INSERT INTO `th_likes` VALUES (274, 15, 60, 1331979749, 1);
INSERT INTO `th_likes` VALUES (275, 15, 59, 1331979750, 1);
INSERT INTO `th_likes` VALUES (276, 15, 58, 1331979752, 1);
INSERT INTO `th_likes` VALUES (277, 15, 57, 1331979753, 1);
INSERT INTO `th_likes` VALUES (278, 15, 56, 1331979756, 1);
INSERT INTO `th_likes` VALUES (279, 15, 54, 1331979757, 1);
INSERT INTO `th_likes` VALUES (280, 15, 53, 1331979758, 1);
INSERT INTO `th_likes` VALUES (281, 15, 52, 1331979760, 1);
INSERT INTO `th_likes` VALUES (282, 15, 51, 1331979762, 1);
INSERT INTO `th_likes` VALUES (283, 15, 49, 1331979765, 1);
INSERT INTO `th_likes` VALUES (284, 15, 48, 1331979767, 1);
INSERT INTO `th_likes` VALUES (285, 15, 47, 1331979769, 1);
INSERT INTO `th_likes` VALUES (286, 15, 45, 1331979770, 1);
INSERT INTO `th_likes` VALUES (287, 15, 44, 1331979774, 1);
INSERT INTO `th_likes` VALUES (288, 15, 43, 1331979775, 1);
INSERT INTO `th_likes` VALUES (289, 15, 42, 1331979777, 1);
INSERT INTO `th_likes` VALUES (290, 15, 41, 1331979779, 1);
INSERT INTO `th_likes` VALUES (291, 15, 40, 1331979780, 1);
INSERT INTO `th_likes` VALUES (292, 15, 39, 1331979781, 1);
INSERT INTO `th_likes` VALUES (293, 15, 38, 1331979783, 1);
INSERT INTO `th_likes` VALUES (294, 15, 37, 1331979784, 1);
INSERT INTO `th_likes` VALUES (295, 15, 36, 1331979788, 1);
INSERT INTO `th_likes` VALUES (296, 15, 35, 1331979789, 1);
INSERT INTO `th_likes` VALUES (297, 15, 34, 1331979793, 1);
INSERT INTO `th_likes` VALUES (298, 15, 33, 1331979794, 1);
INSERT INTO `th_likes` VALUES (299, 15, 32, 1331979797, 2);
INSERT INTO `th_likes` VALUES (300, 15, 31, 1331979801, 2);
INSERT INTO `th_likes` VALUES (301, 15, 30, 1331979804, 1);
INSERT INTO `th_likes` VALUES (302, 2, 96, 1331979831, 1);
INSERT INTO `th_likes` VALUES (303, 2, 95, 1331979834, 1);
INSERT INTO `th_likes` VALUES (304, 2, 94, 1331979834, 1);
INSERT INTO `th_likes` VALUES (305, 2, 93, 1331979835, 1);
INSERT INTO `th_likes` VALUES (306, 2, 92, 1331979836, 1);
INSERT INTO `th_likes` VALUES (307, 2, 91, 1331979838, 1);
INSERT INTO `th_likes` VALUES (308, 2, 90, 1331979839, 1);
INSERT INTO `th_likes` VALUES (309, 2, 89, 1331979841, 1);
INSERT INTO `th_likes` VALUES (310, 2, 88, 1331979843, 1);
INSERT INTO `th_likes` VALUES (311, 2, 87, 1331979844, 1);
INSERT INTO `th_likes` VALUES (312, 2, 86, 1331979847, 1);
INSERT INTO `th_likes` VALUES (313, 2, 84, 1331979850, 1);
INSERT INTO `th_likes` VALUES (314, 2, 83, 1331979851, 1);
INSERT INTO `th_likes` VALUES (315, 2, 82, 1331979853, 1);
INSERT INTO `th_likes` VALUES (316, 2, 80, 1331979854, 1);
INSERT INTO `th_likes` VALUES (317, 2, 79, 1331979855, 1);
INSERT INTO `th_likes` VALUES (318, 2, 78, 1331979856, 1);
INSERT INTO `th_likes` VALUES (319, 2, 77, 1331979857, 1);
INSERT INTO `th_likes` VALUES (320, 2, 76, 1331979860, 1);
INSERT INTO `th_likes` VALUES (321, 2, 75, 1331979864, 1);
INSERT INTO `th_likes` VALUES (322, 2, 74, 1331979865, 1);
INSERT INTO `th_likes` VALUES (323, 2, 73, 1331979867, 1);
INSERT INTO `th_likes` VALUES (324, 2, 72, 1331979868, 1);
INSERT INTO `th_likes` VALUES (325, 2, 71, 1331979870, 1);
INSERT INTO `th_likes` VALUES (326, 2, 70, 1331979871, 1);
INSERT INTO `th_likes` VALUES (327, 2, 69, 1331979873, 1);
INSERT INTO `th_likes` VALUES (328, 2, 68, 1331979874, 1);
INSERT INTO `th_likes` VALUES (329, 2, 67, 1331979876, 1);
INSERT INTO `th_likes` VALUES (330, 2, 66, 1331979877, 1);
INSERT INTO `th_likes` VALUES (540, 2, 148, 1332067101, 1);
INSERT INTO `th_likes` VALUES (332, 2, 64, 1331979885, 1);
INSERT INTO `th_likes` VALUES (333, 2, 63, 1331979886, 1);
INSERT INTO `th_likes` VALUES (334, 2, 62, 1331979887, 1);
INSERT INTO `th_likes` VALUES (335, 2, 61, 1331979889, 1);
INSERT INTO `th_likes` VALUES (336, 2, 60, 1331979891, 1);
INSERT INTO `th_likes` VALUES (337, 2, 59, 1331979892, 1);
INSERT INTO `th_likes` VALUES (338, 2, 58, 1331979893, 1);
INSERT INTO `th_likes` VALUES (339, 2, 57, 1331979895, 1);
INSERT INTO `th_likes` VALUES (340, 2, 54, 1331979899, 1);
INSERT INTO `th_likes` VALUES (341, 2, 56, 1331979900, 1);
INSERT INTO `th_likes` VALUES (342, 2, 53, 1331979902, 1);
INSERT INTO `th_likes` VALUES (343, 2, 52, 1331979903, 1);
INSERT INTO `th_likes` VALUES (344, 2, 51, 1331979905, 1);
INSERT INTO `th_likes` VALUES (345, 2, 50, 1331979907, 1);
INSERT INTO `th_likes` VALUES (346, 2, 49, 1331979907, 1);
INSERT INTO `th_likes` VALUES (347, 2, 48, 1331979910, 1);
INSERT INTO `th_likes` VALUES (348, 2, 47, 1331979911, 1);
INSERT INTO `th_likes` VALUES (349, 2, 45, 1331979911, 1);
INSERT INTO `th_likes` VALUES (350, 2, 44, 1331979916, 1);
INSERT INTO `th_likes` VALUES (351, 2, 43, 1331979917, 1);
INSERT INTO `th_likes` VALUES (352, 2, 42, 1331979918, 1);
INSERT INTO `th_likes` VALUES (353, 2, 41, 1331979920, 1);
INSERT INTO `th_likes` VALUES (354, 2, 40, 1331979921, 1);
INSERT INTO `th_likes` VALUES (355, 2, 39, 1331979922, 1);
INSERT INTO `th_likes` VALUES (356, 2, 38, 1331979924, 1);
INSERT INTO `th_likes` VALUES (357, 2, 37, 1331979926, 1);
INSERT INTO `th_likes` VALUES (358, 2, 36, 1331979927, 1);
INSERT INTO `th_likes` VALUES (359, 2, 35, 1331979928, 1);
INSERT INTO `th_likes` VALUES (360, 2, 34, 1331979931, 1);
INSERT INTO `th_likes` VALUES (361, 2, 33, 1331979933, 1);
INSERT INTO `th_likes` VALUES (362, 5, 96, 1331980005, 1);
INSERT INTO `th_likes` VALUES (363, 5, 95, 1331980005, 1);
INSERT INTO `th_likes` VALUES (364, 5, 94, 1331980008, 1);
INSERT INTO `th_likes` VALUES (365, 5, 93, 1331980009, 1);
INSERT INTO `th_likes` VALUES (366, 5, 92, 1331980010, 1);
INSERT INTO `th_likes` VALUES (367, 5, 91, 1331980012, 1);
INSERT INTO `th_likes` VALUES (368, 5, 90, 1331980013, 1);
INSERT INTO `th_likes` VALUES (369, 5, 89, 1331980016, 1);
INSERT INTO `th_likes` VALUES (370, 5, 88, 1331980018, 1);
INSERT INTO `th_likes` VALUES (371, 5, 87, 1331980020, 1);
INSERT INTO `th_likes` VALUES (372, 5, 86, 1331980024, 1);
INSERT INTO `th_likes` VALUES (373, 5, 85, 1331980024, 1);
INSERT INTO `th_likes` VALUES (374, 5, 84, 1331980027, 1);
INSERT INTO `th_likes` VALUES (375, 5, 82, 1331980029, 1);
INSERT INTO `th_likes` VALUES (376, 5, 83, 1331980030, 1);
INSERT INTO `th_likes` VALUES (377, 5, 80, 1331980032, 1);
INSERT INTO `th_likes` VALUES (378, 5, 79, 1331980034, 1);
INSERT INTO `th_likes` VALUES (379, 5, 78, 1331980035, 1);
INSERT INTO `th_likes` VALUES (380, 5, 77, 1331980039, 1);
INSERT INTO `th_likes` VALUES (381, 5, 76, 1331980039, 1);
INSERT INTO `th_likes` VALUES (382, 5, 75, 1331980050, 1);
INSERT INTO `th_likes` VALUES (383, 5, 74, 1331980051, 1);
INSERT INTO `th_likes` VALUES (384, 5, 73, 1331980053, 1);
INSERT INTO `th_likes` VALUES (385, 5, 72, 1331980055, 1);
INSERT INTO `th_likes` VALUES (386, 5, 71, 1331980056, 1);
INSERT INTO `th_likes` VALUES (387, 5, 70, 1331980058, 1);
INSERT INTO `th_likes` VALUES (388, 5, 69, 1331980059, 1);
INSERT INTO `th_likes` VALUES (389, 5, 67, 1331980062, 1);
INSERT INTO `th_likes` VALUES (390, 5, 66, 1331980064, 1);
INSERT INTO `th_likes` VALUES (539, 2, 149, 1332067098, 1);
INSERT INTO `th_likes` VALUES (392, 5, 64, 1331980070, 1);
INSERT INTO `th_likes` VALUES (393, 5, 63, 1331980071, 1);
INSERT INTO `th_likes` VALUES (394, 5, 62, 1331980073, 1);
INSERT INTO `th_likes` VALUES (395, 5, 61, 1331980074, 1);
INSERT INTO `th_likes` VALUES (396, 5, 60, 1331980076, 1);
INSERT INTO `th_likes` VALUES (397, 5, 59, 1331980077, 1);
INSERT INTO `th_likes` VALUES (398, 5, 58, 1331980078, 1);
INSERT INTO `th_likes` VALUES (399, 5, 57, 1331980079, 1);
INSERT INTO `th_likes` VALUES (400, 5, 54, 1331980083, 1);
INSERT INTO `th_likes` VALUES (401, 5, 56, 1331980085, 1);
INSERT INTO `th_likes` VALUES (402, 5, 49, 1331980088, 1);
INSERT INTO `th_likes` VALUES (403, 5, 48, 1331980090, 1);
INSERT INTO `th_likes` VALUES (404, 5, 47, 1331980091, 1);
INSERT INTO `th_likes` VALUES (405, 5, 45, 1331980093, 1);
INSERT INTO `th_likes` VALUES (406, 5, 44, 1331980096, 1);
INSERT INTO `th_likes` VALUES (407, 5, 43, 1331980098, 1);
INSERT INTO `th_likes` VALUES (408, 5, 42, 1331980102, 1);
INSERT INTO `th_likes` VALUES (409, 5, 41, 1331980104, 1);
INSERT INTO `th_likes` VALUES (410, 5, 40, 1331980105, 1);
INSERT INTO `th_likes` VALUES (411, 5, 39, 1331980107, 1);
INSERT INTO `th_likes` VALUES (412, 5, 38, 1331980108, 1);
INSERT INTO `th_likes` VALUES (413, 6, 96, 1331980141, 1);
INSERT INTO `th_likes` VALUES (414, 6, 95, 1331980144, 1);
INSERT INTO `th_likes` VALUES (415, 6, 94, 1331980144, 1);
INSERT INTO `th_likes` VALUES (416, 6, 92, 1331980147, 1);
INSERT INTO `th_likes` VALUES (417, 6, 93, 1331980147, 1);
INSERT INTO `th_likes` VALUES (418, 6, 91, 1331980151, 1);
INSERT INTO `th_likes` VALUES (419, 6, 89, 1331980151, 1);
INSERT INTO `th_likes` VALUES (420, 6, 90, 1331980151, 1);
INSERT INTO `th_likes` VALUES (421, 6, 88, 1331980153, 1);
INSERT INTO `th_likes` VALUES (422, 6, 87, 1331980154, 1);
INSERT INTO `th_likes` VALUES (423, 6, 86, 1331980164, 1);
INSERT INTO `th_likes` VALUES (424, 6, 85, 1331980166, 1);
INSERT INTO `th_likes` VALUES (425, 6, 84, 1331980167, 1);
INSERT INTO `th_likes` VALUES (426, 6, 83, 1331980167, 1);
INSERT INTO `th_likes` VALUES (427, 6, 82, 1331980170, 1);
INSERT INTO `th_likes` VALUES (428, 6, 79, 1331980173, 1);
INSERT INTO `th_likes` VALUES (429, 6, 80, 1331980173, 1);
INSERT INTO `th_likes` VALUES (430, 6, 78, 1331980174, 1);
INSERT INTO `th_likes` VALUES (431, 6, 77, 1331980176, 1);
INSERT INTO `th_likes` VALUES (432, 6, 76, 1331980177, 1);
INSERT INTO `th_likes` VALUES (433, 6, 75, 1331980181, 1);
INSERT INTO `th_likes` VALUES (434, 6, 74, 1331980182, 1);
INSERT INTO `th_likes` VALUES (435, 6, 73, 1331980187, 1);
INSERT INTO `th_likes` VALUES (436, 6, 72, 1331980187, 1);
INSERT INTO `th_likes` VALUES (437, 6, 71, 1331980188, 1);
INSERT INTO `th_likes` VALUES (438, 6, 70, 1331980191, 1);
INSERT INTO `th_likes` VALUES (439, 6, 69, 1331980193, 1);
INSERT INTO `th_likes` VALUES (440, 6, 68, 1331980193, 1);
INSERT INTO `th_likes` VALUES (441, 6, 67, 1331980197, 1);
INSERT INTO `th_likes` VALUES (442, 6, 66, 1331980197, 1);
INSERT INTO `th_likes` VALUES (538, 2, 151, 1332067095, 1);
INSERT INTO `th_likes` VALUES (444, 6, 64, 1331980209, 1);
INSERT INTO `th_likes` VALUES (445, 6, 63, 1331980209, 1);
INSERT INTO `th_likes` VALUES (446, 6, 62, 1331980210, 1);
INSERT INTO `th_likes` VALUES (447, 6, 61, 1331980215, 1);
INSERT INTO `th_likes` VALUES (448, 6, 60, 1331980215, 1);
INSERT INTO `th_likes` VALUES (449, 6, 59, 1331980216, 1);
INSERT INTO `th_likes` VALUES (450, 6, 58, 1331980222, 1);
INSERT INTO `th_likes` VALUES (451, 6, 57, 1331980222, 1);
INSERT INTO `th_likes` VALUES (452, 6, 56, 1331980229, 1);
INSERT INTO `th_likes` VALUES (453, 6, 54, 1331980229, 1);
INSERT INTO `th_likes` VALUES (454, 6, 53, 1331980229, 1);
INSERT INTO `th_likes` VALUES (455, 6, 52, 1331980231, 1);
INSERT INTO `th_likes` VALUES (456, 6, 51, 1331980232, 1);
INSERT INTO `th_likes` VALUES (457, 6, 49, 1331980235, 1);
INSERT INTO `th_likes` VALUES (458, 6, 48, 1331980235, 1);
INSERT INTO `th_likes` VALUES (459, 6, 47, 1331980237, 1);
INSERT INTO `th_likes` VALUES (460, 6, 45, 1331980238, 1);
INSERT INTO `th_likes` VALUES (461, 6, 44, 1331980242, 1);
INSERT INTO `th_likes` VALUES (462, 6, 43, 1331980243, 1);
INSERT INTO `th_likes` VALUES (463, 16, 94, 1331980338, 1);
INSERT INTO `th_likes` VALUES (464, 16, 87, 1331980346, 1);
INSERT INTO `th_likes` VALUES (465, 16, 86, 1331980350, 1);
INSERT INTO `th_likes` VALUES (466, 16, 85, 1331980352, 1);
INSERT INTO `th_likes` VALUES (467, 16, 84, 1331980355, 1);
INSERT INTO `th_likes` VALUES (468, 16, 83, 1331980356, 1);
INSERT INTO `th_likes` VALUES (469, 16, 82, 1331980360, 1);
INSERT INTO `th_likes` VALUES (470, 16, 79, 1331980363, 1);
INSERT INTO `th_likes` VALUES (471, 16, 78, 1331980365, 1);
INSERT INTO `th_likes` VALUES (472, 16, 77, 1331980366, 1);
INSERT INTO `th_likes` VALUES (473, 16, 76, 1331980368, 1);
INSERT INTO `th_likes` VALUES (537, 2, 152, 1332067093, 1);
INSERT INTO `th_likes` VALUES (475, 16, 62, 1331980398, 1);
INSERT INTO `th_likes` VALUES (476, 16, 59, 1331980402, 1);
INSERT INTO `th_likes` VALUES (477, 16, 57, 1331980405, 1);
INSERT INTO `th_likes` VALUES (478, 16, 53, 1331980411, 1);
INSERT INTO `th_likes` VALUES (479, 16, 44, 1331980422, 1);
INSERT INTO `th_likes` VALUES (480, 16, 43, 1331980424, 1);
INSERT INTO `th_likes` VALUES (481, 16, 41, 1331980427, 1);
INSERT INTO `th_likes` VALUES (482, 16, 40, 1331980432, 1);
INSERT INTO `th_likes` VALUES (483, 16, 39, 1331980434, 1);
INSERT INTO `th_likes` VALUES (484, 16, 36, 1331980439, 1);
INSERT INTO `th_likes` VALUES (485, 16, 35, 1331980441, 1);
INSERT INTO `th_likes` VALUES (486, 17, 95, 1331980485, 1);
INSERT INTO `th_likes` VALUES (487, 17, 94, 1331980487, 1);
INSERT INTO `th_likes` VALUES (488, 17, 88, 1331980494, 1);
INSERT INTO `th_likes` VALUES (489, 17, 89, 1331980498, 1);
INSERT INTO `th_likes` VALUES (490, 17, 82, 1331980517, 1);
INSERT INTO `th_likes` VALUES (491, 17, 76, 1331980522, 1);
INSERT INTO `th_likes` VALUES (536, 2, 154, 1332067088, 1);
INSERT INTO `th_likes` VALUES (493, 17, 61, 1331980540, 1);
INSERT INTO `th_likes` VALUES (494, 17, 59, 1331980542, 1);
INSERT INTO `th_likes` VALUES (495, 17, 57, 1331980544, 1);
INSERT INTO `th_likes` VALUES (496, 17, 43, 1331980559, 1);
INSERT INTO `th_likes` VALUES (497, 17, 39, 1331980566, 1);
INSERT INTO `th_likes` VALUES (498, 17, 40, 1331980568, 1);
INSERT INTO `th_likes` VALUES (499, 17, 33, 1331980580, 2);
INSERT INTO `th_likes` VALUES (500, 17, 30, 1331980581, 2);
INSERT INTO `th_likes` VALUES (501, 17, 25, 1331980584, 2);
INSERT INTO `th_likes` VALUES (502, 14, 2, 1331982350, 1);
INSERT INTO `th_likes` VALUES (503, 18, 96, 1331985226, 1);
INSERT INTO `th_likes` VALUES (504, 18, 95, 1331985229, 1);
INSERT INTO `th_likes` VALUES (505, 18, 94, 1331985231, 1);
INSERT INTO `th_likes` VALUES (506, 18, 93, 1331985234, 1);
INSERT INTO `th_likes` VALUES (507, 18, 92, 1331985237, 1);
INSERT INTO `th_likes` VALUES (508, 18, 98, 1331986805, 1);
INSERT INTO `th_likes` VALUES (509, 18, 78, 1331987404, 1);
INSERT INTO `th_likes` VALUES (510, 18, 77, 1331987407, 1);
INSERT INTO `th_likes` VALUES (511, 18, 76, 1331987408, 1);
INSERT INTO `th_likes` VALUES (512, 18, 75, 1331987410, 1);
INSERT INTO `th_likes` VALUES (513, 18, 74, 1331987412, 1);
INSERT INTO `th_likes` VALUES (514, 18, 73, 1331987415, 1);
INSERT INTO `th_likes` VALUES (515, 18, 72, 1331987417, 1);
INSERT INTO `th_likes` VALUES (516, 18, 71, 1331987419, 1);
INSERT INTO `th_likes` VALUES (517, 18, 70, 1331987422, 1);
INSERT INTO `th_likes` VALUES (518, 18, 69, 1331987429, 1);
INSERT INTO `th_likes` VALUES (519, 18, 68, 1331987431, 1);
INSERT INTO `th_likes` VALUES (520, 18, 67, 1331987432, 1);
INSERT INTO `th_likes` VALUES (521, 18, 66, 1331987434, 1);
INSERT INTO `th_likes` VALUES (522, 18, 65, 1331987439, 1);
INSERT INTO `th_likes` VALUES (535, 2, 155, 1332067084, 1);
INSERT INTO `th_likes` VALUES (524, 1, 99, 1331990935, 1);
INSERT INTO `th_likes` VALUES (525, 1, 97, 1331990941, 1);
INSERT INTO `th_likes` VALUES (526, 18, 108, 1331992925, 1);
INSERT INTO `th_likes` VALUES (527, 18, 107, 1331992930, 1);
INSERT INTO `th_likes` VALUES (528, 18, 106, 1331992935, 1);
INSERT INTO `th_likes` VALUES (529, 18, 105, 1331992940, 1);
INSERT INTO `th_likes` VALUES (530, 18, 104, 1331992943, 2);
INSERT INTO `th_likes` VALUES (531, 18, 103, 1331992950, 2);
INSERT INTO `th_likes` VALUES (534, 2, 156, 1332067083, 1);
INSERT INTO `th_likes` VALUES (533, 1, 108, 1331993874, 1);
INSERT INTO `th_likes` VALUES (543, 2, 145, 1332067117, 1);
INSERT INTO `th_likes` VALUES (544, 2, 144, 1332067118, 1);
INSERT INTO `th_likes` VALUES (545, 2, 143, 1332067120, 1);
INSERT INTO `th_likes` VALUES (546, 2, 142, 1332067121, 1);
INSERT INTO `th_likes` VALUES (547, 2, 140, 1332067125, 1);
INSERT INTO `th_likes` VALUES (548, 2, 138, 1332067128, 1);
INSERT INTO `th_likes` VALUES (549, 2, 139, 1332067129, 1);
INSERT INTO `th_likes` VALUES (550, 2, 137, 1332067133, 1);
INSERT INTO `th_likes` VALUES (551, 2, 136, 1332067135, 1);
INSERT INTO `th_likes` VALUES (552, 2, 134, 1332067139, 1);
INSERT INTO `th_likes` VALUES (553, 2, 133, 1332067142, 1);
INSERT INTO `th_likes` VALUES (554, 2, 132, 1332067144, 1);
INSERT INTO `th_likes` VALUES (555, 2, 131, 1332067146, 1);
INSERT INTO `th_likes` VALUES (556, 2, 129, 1332067149, 1);
INSERT INTO `th_likes` VALUES (557, 2, 128, 1332067151, 1);
INSERT INTO `th_likes` VALUES (558, 2, 126, 1332067164, 1);
INSERT INTO `th_likes` VALUES (559, 2, 124, 1332067165, 1);
INSERT INTO `th_likes` VALUES (560, 2, 123, 1332067170, 1);
INSERT INTO `th_likes` VALUES (561, 2, 121, 1332067171, 1);
INSERT INTO `th_likes` VALUES (562, 2, 120, 1332067172, 1);
INSERT INTO `th_likes` VALUES (563, 2, 118, 1332067176, 1);
INSERT INTO `th_likes` VALUES (564, 2, 113, 1332067192, 1);
INSERT INTO `th_likes` VALUES (565, 2, 110, 1332067196, 1);
INSERT INTO `th_likes` VALUES (566, 2, 112, 1332067196, 1);
INSERT INTO `th_likes` VALUES (567, 2, 108, 1332067199, 1);
INSERT INTO `th_likes` VALUES (568, 2, 107, 1332067201, 1);
INSERT INTO `th_likes` VALUES (569, 2, 106, 1332067204, 1);
INSERT INTO `th_likes` VALUES (570, 2, 104, 1332067206, 1);
INSERT INTO `th_likes` VALUES (571, 2, 103, 1332067208, 1);
INSERT INTO `th_likes` VALUES (572, 2, 99, 1332067210, 1);
INSERT INTO `th_likes` VALUES (573, 2, 97, 1332067213, 1);
INSERT INTO `th_likes` VALUES (574, 2, 98, 1332067217, 1);
INSERT INTO `th_likes` VALUES (575, 5, 156, 1332067249, 1);
INSERT INTO `th_likes` VALUES (576, 5, 155, 1332067251, 1);
INSERT INTO `th_likes` VALUES (577, 5, 154, 1332067255, 1);
INSERT INTO `th_likes` VALUES (578, 5, 153, 1332067257, 1);
INSERT INTO `th_likes` VALUES (579, 5, 152, 1332067258, 1);
INSERT INTO `th_likes` VALUES (580, 5, 151, 1332067260, 1);
INSERT INTO `th_likes` VALUES (581, 5, 150, 1332067262, 1);
INSERT INTO `th_likes` VALUES (582, 5, 149, 1332067263, 1);
INSERT INTO `th_likes` VALUES (583, 5, 148, 1332067266, 1);
INSERT INTO `th_likes` VALUES (584, 5, 147, 1332067269, 1);
INSERT INTO `th_likes` VALUES (585, 5, 109, 1332067275, 1);
INSERT INTO `th_likes` VALUES (586, 5, 145, 1332067279, 1);
INSERT INTO `th_likes` VALUES (587, 5, 144, 1332067281, 1);
INSERT INTO `th_likes` VALUES (588, 5, 143, 1332067282, 1);
INSERT INTO `th_likes` VALUES (589, 5, 142, 1332067284, 1);
INSERT INTO `th_likes` VALUES (590, 5, 141, 1332067287, 1);
INSERT INTO `th_likes` VALUES (591, 5, 140, 1332067294, 1);
INSERT INTO `th_likes` VALUES (592, 5, 139, 1332067295, 1);
INSERT INTO `th_likes` VALUES (593, 5, 138, 1332067296, 1);
INSERT INTO `th_likes` VALUES (594, 5, 137, 1332067300, 1);
INSERT INTO `th_likes` VALUES (595, 5, 136, 1332067302, 1);
INSERT INTO `th_likes` VALUES (596, 5, 135, 1332067304, 1);
INSERT INTO `th_likes` VALUES (597, 5, 134, 1332067306, 1);
INSERT INTO `th_likes` VALUES (598, 5, 133, 1332067307, 1);
INSERT INTO `th_likes` VALUES (599, 5, 130, 1332067310, 1);
INSERT INTO `th_likes` VALUES (600, 5, 128, 1332067313, 1);
INSERT INTO `th_likes` VALUES (601, 5, 127, 1332067321, 1);
INSERT INTO `th_likes` VALUES (602, 5, 126, 1332067325, 1);
INSERT INTO `th_likes` VALUES (603, 5, 125, 1332067332, 1);
INSERT INTO `th_likes` VALUES (604, 5, 124, 1332067333, 1);
INSERT INTO `th_likes` VALUES (605, 5, 123, 1332067336, 1);
INSERT INTO `th_likes` VALUES (606, 5, 122, 1332067337, 1);
INSERT INTO `th_likes` VALUES (607, 5, 121, 1332067340, 1);
INSERT INTO `th_likes` VALUES (608, 5, 120, 1332067341, 1);
INSERT INTO `th_likes` VALUES (609, 5, 118, 1332067346, 1);
INSERT INTO `th_likes` VALUES (610, 5, 113, 1332067356, 1);
INSERT INTO `th_likes` VALUES (611, 5, 112, 1332067358, 1);
INSERT INTO `th_likes` VALUES (612, 5, 111, 1332067361, 1);
INSERT INTO `th_likes` VALUES (613, 5, 110, 1332067364, 1);
INSERT INTO `th_likes` VALUES (614, 5, 107, 1332067367, 1);
INSERT INTO `th_likes` VALUES (615, 5, 106, 1332067371, 1);
INSERT INTO `th_likes` VALUES (616, 5, 105, 1332067372, 1);
INSERT INTO `th_likes` VALUES (617, 5, 103, 1332067375, 1);
INSERT INTO `th_likes` VALUES (618, 5, 97, 1332067378, 1);
INSERT INTO `th_likes` VALUES (619, 5, 98, 1332067382, 1);
INSERT INTO `th_likes` VALUES (620, 6, 156, 1332067403, 1);
INSERT INTO `th_likes` VALUES (621, 6, 155, 1332067404, 1);
INSERT INTO `th_likes` VALUES (622, 6, 154, 1332067409, 1);
INSERT INTO `th_likes` VALUES (623, 6, 153, 1332067413, 1);
INSERT INTO `th_likes` VALUES (624, 6, 152, 1332067414, 1);
INSERT INTO `th_likes` VALUES (625, 6, 151, 1332067415, 2);
INSERT INTO `th_likes` VALUES (626, 6, 150, 1332067419, 1);
INSERT INTO `th_likes` VALUES (627, 6, 149, 1332067424, 1);
INSERT INTO `th_likes` VALUES (628, 6, 147, 1332067429, 1);
INSERT INTO `th_likes` VALUES (629, 6, 109, 1332067436, 1);
INSERT INTO `th_likes` VALUES (630, 6, 146, 1332067440, 1);
INSERT INTO `th_likes` VALUES (631, 6, 145, 1332067442, 1);
INSERT INTO `th_likes` VALUES (632, 6, 144, 1332067444, 1);
INSERT INTO `th_likes` VALUES (633, 6, 143, 1332067445, 1);
INSERT INTO `th_likes` VALUES (634, 6, 142, 1332067446, 1);
INSERT INTO `th_likes` VALUES (635, 6, 141, 1332067448, 1);
INSERT INTO `th_likes` VALUES (636, 6, 140, 1332067452, 1);
INSERT INTO `th_likes` VALUES (637, 6, 139, 1332067453, 1);
INSERT INTO `th_likes` VALUES (638, 6, 138, 1332067455, 1);
INSERT INTO `th_likes` VALUES (639, 6, 137, 1332067458, 1);
INSERT INTO `th_likes` VALUES (640, 6, 136, 1332067460, 1);
INSERT INTO `th_likes` VALUES (641, 6, 134, 1332067463, 1);
INSERT INTO `th_likes` VALUES (642, 6, 133, 1332067464, 1);
INSERT INTO `th_likes` VALUES (643, 6, 131, 1332067468, 1);
INSERT INTO `th_likes` VALUES (644, 6, 130, 1332067470, 1);
INSERT INTO `th_likes` VALUES (645, 6, 129, 1332067471, 1);
INSERT INTO `th_likes` VALUES (646, 6, 128, 1332067473, 1);
INSERT INTO `th_likes` VALUES (647, 6, 127, 1332067478, 1);
INSERT INTO `th_likes` VALUES (648, 6, 126, 1332067481, 1);
INSERT INTO `th_likes` VALUES (649, 6, 125, 1332067485, 1);
INSERT INTO `th_likes` VALUES (650, 6, 124, 1332067486, 1);
INSERT INTO `th_likes` VALUES (651, 6, 123, 1332067487, 1);
INSERT INTO `th_likes` VALUES (652, 6, 122, 1332067489, 1);
INSERT INTO `th_likes` VALUES (653, 6, 121, 1332067491, 1);
INSERT INTO `th_likes` VALUES (654, 6, 120, 1332067493, 1);
INSERT INTO `th_likes` VALUES (655, 6, 118, 1332067496, 1);
INSERT INTO `th_likes` VALUES (656, 6, 116, 1332067503, 1);
INSERT INTO `th_likes` VALUES (657, 6, 113, 1332067507, 1);
INSERT INTO `th_likes` VALUES (658, 6, 112, 1332067509, 1);
INSERT INTO `th_likes` VALUES (659, 6, 107, 1332067514, 1);
INSERT INTO `th_likes` VALUES (660, 6, 106, 1332067518, 1);
INSERT INTO `th_likes` VALUES (661, 6, 105, 1332067521, 1);
INSERT INTO `th_likes` VALUES (662, 6, 104, 1332067523, 1);
INSERT INTO `th_likes` VALUES (663, 6, 99, 1332067526, 1);
INSERT INTO `th_likes` VALUES (664, 6, 97, 1332067527, 1);
INSERT INTO `th_likes` VALUES (665, 6, 98, 1332067532, 1);
INSERT INTO `th_likes` VALUES (666, 16, 156, 1332067566, 1);
INSERT INTO `th_likes` VALUES (667, 16, 155, 1332067569, 1);
INSERT INTO `th_likes` VALUES (668, 16, 154, 1332067572, 1);
INSERT INTO `th_likes` VALUES (669, 16, 153, 1332067574, 1);
INSERT INTO `th_likes` VALUES (670, 16, 152, 1332067575, 1);
INSERT INTO `th_likes` VALUES (671, 16, 151, 1332067577, 1);
INSERT INTO `th_likes` VALUES (672, 16, 150, 1332067578, 1);
INSERT INTO `th_likes` VALUES (673, 16, 149, 1332067580, 1);
INSERT INTO `th_likes` VALUES (674, 16, 148, 1332067583, 1);
INSERT INTO `th_likes` VALUES (675, 16, 147, 1332067586, 1);
INSERT INTO `th_likes` VALUES (676, 16, 109, 1332067591, 1);
INSERT INTO `th_likes` VALUES (677, 16, 145, 1332067595, 1);
INSERT INTO `th_likes` VALUES (678, 16, 144, 1332067598, 1);
INSERT INTO `th_likes` VALUES (679, 16, 143, 1332067599, 1);
INSERT INTO `th_likes` VALUES (680, 16, 142, 1332067601, 1);
INSERT INTO `th_likes` VALUES (681, 16, 141, 1332067602, 1);
INSERT INTO `th_likes` VALUES (682, 16, 140, 1332067607, 1);
INSERT INTO `th_likes` VALUES (683, 16, 139, 1332067608, 1);
INSERT INTO `th_likes` VALUES (684, 16, 138, 1332067610, 1);
INSERT INTO `th_likes` VALUES (685, 16, 137, 1332067613, 1);
INSERT INTO `th_likes` VALUES (686, 16, 136, 1332067615, 1);
INSERT INTO `th_likes` VALUES (687, 16, 135, 1332067616, 1);
INSERT INTO `th_likes` VALUES (688, 16, 134, 1332067619, 1);
INSERT INTO `th_likes` VALUES (689, 16, 131, 1332067623, 1);
INSERT INTO `th_likes` VALUES (690, 16, 130, 1332067625, 1);
INSERT INTO `th_likes` VALUES (691, 16, 129, 1332067626, 1);
INSERT INTO `th_likes` VALUES (692, 16, 128, 1332067629, 1);
INSERT INTO `th_likes` VALUES (693, 16, 127, 1332067641, 1);
INSERT INTO `th_likes` VALUES (694, 16, 126, 1332067645, 1);
INSERT INTO `th_likes` VALUES (695, 16, 124, 1332067651, 1);
INSERT INTO `th_likes` VALUES (696, 16, 123, 1332067652, 1);
INSERT INTO `th_likes` VALUES (697, 16, 122, 1332067654, 1);
INSERT INTO `th_likes` VALUES (698, 16, 121, 1332067656, 1);
INSERT INTO `th_likes` VALUES (699, 16, 120, 1332067658, 1);
INSERT INTO `th_likes` VALUES (700, 16, 119, 1332067662, 1);
INSERT INTO `th_likes` VALUES (701, 16, 118, 1332067664, 1);
INSERT INTO `th_likes` VALUES (702, 16, 117, 1332067667, 1);
INSERT INTO `th_likes` VALUES (703, 16, 116, 1332067668, 1);
INSERT INTO `th_likes` VALUES (704, 16, 115, 1332067671, 1);
INSERT INTO `th_likes` VALUES (705, 16, 114, 1332067674, 1);
INSERT INTO `th_likes` VALUES (706, 16, 113, 1332067676, 1);
INSERT INTO `th_likes` VALUES (707, 16, 112, 1332067679, 1);
INSERT INTO `th_likes` VALUES (708, 16, 107, 1332067685, 1);
INSERT INTO `th_likes` VALUES (709, 16, 106, 1332067689, 1);
INSERT INTO `th_likes` VALUES (710, 16, 105, 1332067691, 1);
INSERT INTO `th_likes` VALUES (711, 16, 104, 1332067692, 1);
INSERT INTO `th_likes` VALUES (712, 16, 99, 1332067697, 1);
INSERT INTO `th_likes` VALUES (713, 16, 97, 1332067698, 1);
INSERT INTO `th_likes` VALUES (714, 16, 96, 1332067702, 1);
INSERT INTO `th_likes` VALUES (715, 16, 98, 1332067704, 1);
INSERT INTO `th_likes` VALUES (716, 17, 156, 1332067723, 1);
INSERT INTO `th_likes` VALUES (717, 17, 155, 1332067725, 1);
INSERT INTO `th_likes` VALUES (718, 17, 154, 1332067730, 1);
INSERT INTO `th_likes` VALUES (719, 17, 153, 1332067731, 1);
INSERT INTO `th_likes` VALUES (720, 17, 152, 1332067734, 1);
INSERT INTO `th_likes` VALUES (721, 17, 151, 1332067735, 1);
INSERT INTO `th_likes` VALUES (722, 17, 150, 1332067738, 1);
INSERT INTO `th_likes` VALUES (723, 17, 149, 1332067740, 1);
INSERT INTO `th_likes` VALUES (724, 17, 147, 1332067745, 1);
INSERT INTO `th_likes` VALUES (725, 17, 109, 1332067748, 1);
INSERT INTO `th_likes` VALUES (726, 17, 146, 1332067752, 1);
INSERT INTO `th_likes` VALUES (727, 17, 145, 1332067754, 1);
INSERT INTO `th_likes` VALUES (728, 17, 144, 1332067756, 1);
INSERT INTO `th_likes` VALUES (729, 17, 143, 1332067758, 1);
INSERT INTO `th_likes` VALUES (730, 17, 141, 1332067759, 1);
INSERT INTO `th_likes` VALUES (731, 17, 140, 1332067762, 1);
INSERT INTO `th_likes` VALUES (732, 17, 138, 1332067764, 1);
INSERT INTO `th_likes` VALUES (733, 17, 137, 1332067768, 1);
INSERT INTO `th_likes` VALUES (734, 17, 136, 1332067769, 1);
INSERT INTO `th_likes` VALUES (735, 17, 135, 1332067771, 1);
INSERT INTO `th_likes` VALUES (736, 17, 134, 1332067774, 1);
INSERT INTO `th_likes` VALUES (737, 17, 130, 1332067779, 1);
INSERT INTO `th_likes` VALUES (738, 17, 129, 1332067781, 1);
INSERT INTO `th_likes` VALUES (739, 17, 128, 1332067783, 1);
INSERT INTO `th_likes` VALUES (740, 17, 127, 1332067789, 1);
INSERT INTO `th_likes` VALUES (741, 17, 126, 1332067793, 1);
INSERT INTO `th_likes` VALUES (742, 17, 123, 1332067800, 1);
INSERT INTO `th_likes` VALUES (743, 17, 122, 1332067802, 1);
INSERT INTO `th_likes` VALUES (744, 17, 121, 1332067804, 1);
INSERT INTO `th_likes` VALUES (745, 17, 120, 1332067806, 1);
INSERT INTO `th_likes` VALUES (746, 17, 118, 1332067812, 1);
INSERT INTO `th_likes` VALUES (747, 17, 114, 1332067818, 1);
INSERT INTO `th_likes` VALUES (748, 17, 113, 1332067820, 1);
INSERT INTO `th_likes` VALUES (749, 17, 112, 1332067823, 1);
INSERT INTO `th_likes` VALUES (750, 17, 111, 1332067824, 1);
INSERT INTO `th_likes` VALUES (751, 17, 107, 1332067830, 1);
INSERT INTO `th_likes` VALUES (752, 17, 105, 1332067849, 1);
INSERT INTO `th_likes` VALUES (753, 17, 104, 1332067851, 1);
INSERT INTO `th_likes` VALUES (754, 17, 103, 1332067855, 1);
INSERT INTO `th_likes` VALUES (755, 17, 99, 1332067857, 1);
INSERT INTO `th_likes` VALUES (756, 17, 97, 1332067858, 1);
INSERT INTO `th_likes` VALUES (757, 17, 98, 1332067862, 1);
INSERT INTO `th_likes` VALUES (758, 22, 156, 1332067921, 1);
INSERT INTO `th_likes` VALUES (759, 22, 155, 1332067922, 1);
INSERT INTO `th_likes` VALUES (760, 22, 154, 1332067926, 1);
INSERT INTO `th_likes` VALUES (761, 22, 153, 1332067928, 1);
INSERT INTO `th_likes` VALUES (762, 22, 152, 1332067931, 1);
INSERT INTO `th_likes` VALUES (763, 22, 151, 1332067932, 1);
INSERT INTO `th_likes` VALUES (764, 22, 150, 1332067937, 1);
INSERT INTO `th_likes` VALUES (765, 22, 149, 1332067938, 1);
INSERT INTO `th_likes` VALUES (766, 22, 148, 1332067942, 1);
INSERT INTO `th_likes` VALUES (767, 22, 147, 1332067947, 1);
INSERT INTO `th_likes` VALUES (768, 22, 109, 1332067951, 1);
INSERT INTO `th_likes` VALUES (769, 22, 145, 1332067955, 1);
INSERT INTO `th_likes` VALUES (770, 22, 143, 1332067958, 1);
INSERT INTO `th_likes` VALUES (771, 22, 142, 1332067960, 1);
INSERT INTO `th_likes` VALUES (772, 22, 141, 1332067962, 1);
INSERT INTO `th_likes` VALUES (773, 22, 140, 1332067966, 1);
INSERT INTO `th_likes` VALUES (774, 22, 139, 1332067967, 1);
INSERT INTO `th_likes` VALUES (775, 22, 138, 1332067968, 1);
INSERT INTO `th_likes` VALUES (776, 22, 137, 1332067973, 1);
INSERT INTO `th_likes` VALUES (777, 22, 136, 1332067974, 1);
INSERT INTO `th_likes` VALUES (778, 22, 134, 1332067976, 1);
INSERT INTO `th_likes` VALUES (779, 22, 133, 1332067977, 1);
INSERT INTO `th_likes` VALUES (780, 22, 132, 1332067979, 1);
INSERT INTO `th_likes` VALUES (781, 22, 131, 1332067980, 1);
INSERT INTO `th_likes` VALUES (782, 22, 130, 1332067982, 1);
INSERT INTO `th_likes` VALUES (783, 22, 129, 1332067983, 1);
INSERT INTO `th_likes` VALUES (784, 22, 128, 1332067985, 1);
INSERT INTO `th_likes` VALUES (785, 22, 127, 1332067988, 1);
INSERT INTO `th_likes` VALUES (786, 22, 126, 1332067992, 1);
INSERT INTO `th_likes` VALUES (787, 22, 124, 1332067996, 1);
INSERT INTO `th_likes` VALUES (788, 22, 123, 1332067997, 1);
INSERT INTO `th_likes` VALUES (789, 22, 122, 1332067998, 1);
INSERT INTO `th_likes` VALUES (790, 22, 121, 1332068000, 1);
INSERT INTO `th_likes` VALUES (791, 22, 120, 1332068002, 1);
INSERT INTO `th_likes` VALUES (792, 22, 118, 1332068006, 1);
INSERT INTO `th_likes` VALUES (793, 22, 117, 1332068011, 1);
INSERT INTO `th_likes` VALUES (794, 22, 114, 1332068014, 1);
INSERT INTO `th_likes` VALUES (795, 22, 113, 1332068016, 1);
INSERT INTO `th_likes` VALUES (796, 22, 112, 1332068018, 1);
INSERT INTO `th_likes` VALUES (797, 22, 107, 1332068023, 1);
INSERT INTO `th_likes` VALUES (798, 22, 106, 1332068026, 1);
INSERT INTO `th_likes` VALUES (799, 22, 105, 1332068027, 1);
INSERT INTO `th_likes` VALUES (800, 22, 104, 1332068029, 1);
INSERT INTO `th_likes` VALUES (801, 22, 99, 1332068033, 1);
INSERT INTO `th_likes` VALUES (802, 22, 97, 1332068035, 1);
INSERT INTO `th_likes` VALUES (803, 22, 98, 1332068040, 1);
INSERT INTO `th_likes` VALUES (804, 23, 156, 1332068085, 1);
INSERT INTO `th_likes` VALUES (805, 23, 155, 1332068087, 1);
INSERT INTO `th_likes` VALUES (806, 23, 153, 1332068092, 1);
INSERT INTO `th_likes` VALUES (807, 23, 151, 1332068097, 1);
INSERT INTO `th_likes` VALUES (808, 23, 149, 1332068103, 1);
INSERT INTO `th_likes` VALUES (809, 23, 147, 1332068114, 1);
INSERT INTO `th_likes` VALUES (810, 23, 109, 1332068124, 1);
INSERT INTO `th_likes` VALUES (811, 23, 145, 1332068128, 1);
INSERT INTO `th_likes` VALUES (812, 23, 144, 1332068130, 1);
INSERT INTO `th_likes` VALUES (813, 23, 143, 1332068131, 1);
INSERT INTO `th_likes` VALUES (814, 23, 142, 1332068132, 1);
INSERT INTO `th_likes` VALUES (815, 23, 141, 1332068134, 1);
INSERT INTO `th_likes` VALUES (816, 23, 140, 1332068138, 1);
INSERT INTO `th_likes` VALUES (817, 23, 139, 1332068140, 1);
INSERT INTO `th_likes` VALUES (818, 23, 138, 1332068141, 1);
INSERT INTO `th_likes` VALUES (819, 23, 137, 1332068145, 1);
INSERT INTO `th_likes` VALUES (820, 23, 136, 1332068147, 1);
INSERT INTO `th_likes` VALUES (821, 23, 135, 1332068149, 1);
INSERT INTO `th_likes` VALUES (822, 23, 134, 1332068151, 1);
INSERT INTO `th_likes` VALUES (823, 23, 130, 1332068154, 1);
INSERT INTO `th_likes` VALUES (824, 23, 129, 1332068155, 1);
INSERT INTO `th_likes` VALUES (825, 23, 128, 1332068157, 1);
INSERT INTO `th_likes` VALUES (826, 23, 127, 1332068160, 1);
INSERT INTO `th_likes` VALUES (827, 23, 126, 1332068164, 1);
INSERT INTO `th_likes` VALUES (828, 23, 124, 1332068168, 1);
INSERT INTO `th_likes` VALUES (829, 23, 123, 1332068169, 1);
INSERT INTO `th_likes` VALUES (830, 23, 122, 1332068171, 1);
INSERT INTO `th_likes` VALUES (831, 23, 121, 1332068173, 1);
INSERT INTO `th_likes` VALUES (832, 23, 120, 1332068175, 1);
INSERT INTO `th_likes` VALUES (833, 23, 118, 1332068179, 1);
INSERT INTO `th_likes` VALUES (834, 23, 106, 1332068182, 1);
INSERT INTO `th_likes` VALUES (835, 23, 105, 1332068185, 1);
INSERT INTO `th_likes` VALUES (836, 23, 113, 1332068201, 1);
INSERT INTO `th_likes` VALUES (837, 23, 112, 1332068204, 1);
INSERT INTO `th_likes` VALUES (838, 23, 107, 1332068208, 1);
INSERT INTO `th_likes` VALUES (839, 23, 94, 1332068223, 2);
INSERT INTO `th_likes` VALUES (840, 23, 76, 1332068224, 2);
INSERT INTO `th_likes` VALUES (841, 23, 59, 1332068249, 2);
INSERT INTO `th_likes` VALUES (842, 23, 82, 1332068254, 2);
INSERT INTO `th_likes` VALUES (843, 23, 77, 1332068255, 2);
INSERT INTO `th_likes` VALUES (844, 18, 156, 1332948528, 1);
INSERT INTO `th_likes` VALUES (845, 18, 155, 1332948534, 1);
INSERT INTO `th_likes` VALUES (846, 18, 140, 1333109537, 1);
INSERT INTO `th_likes` VALUES (847, 18, 139, 1333109541, 1);
INSERT INTO `th_likes` VALUES (848, 18, 138, 1333109543, 1);
INSERT INTO `th_likes` VALUES (849, 22, 162, 1333253644, 1);
INSERT INTO `th_likes` VALUES (850, 22, 160, 1333253648, 1);
INSERT INTO `th_likes` VALUES (851, 22, 161, 1333253650, 1);
INSERT INTO `th_likes` VALUES (852, 22, 159, 1333253653, 1);
INSERT INTO `th_likes` VALUES (853, 22, 157, 1333253657, 1);
INSERT INTO `th_likes` VALUES (854, 16, 162, 1333253735, 1);
INSERT INTO `th_likes` VALUES (855, 16, 161, 1333253736, 1);
INSERT INTO `th_likes` VALUES (856, 16, 160, 1333253738, 1);
INSERT INTO `th_likes` VALUES (857, 16, 159, 1333253739, 1);
INSERT INTO `th_likes` VALUES (858, 16, 157, 1333253741, 1);
INSERT INTO `th_likes` VALUES (859, 17, 162, 1333253801, 1);
INSERT INTO `th_likes` VALUES (860, 17, 161, 1333253804, 1);
INSERT INTO `th_likes` VALUES (861, 17, 160, 1333253805, 1);
INSERT INTO `th_likes` VALUES (862, 17, 159, 1333253807, 1);
INSERT INTO `th_likes` VALUES (863, 17, 157, 1333253808, 1);
INSERT INTO `th_likes` VALUES (864, 1, 163, 1333259214, 1);
INSERT INTO `th_likes` VALUES (865, 1, 166, 1333275233, 0);
INSERT INTO `th_likes` VALUES (866, 27, 176, 1336803813, 1);
INSERT INTO `th_likes` VALUES (867, 18, 175, 1336975773, 1);
INSERT INTO `th_likes` VALUES (868, 31, 176, 1339140795, 1);
INSERT INTO `th_likes` VALUES (869, 31, 175, 1339140800, 1);
INSERT INTO `th_likes` VALUES (870, 31, 174, 1339140809, 2);
INSERT INTO `th_likes` VALUES (871, 32, 172, 1339217045, 1);

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
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

-- 
-- 导出表中的数据 `th_member`
-- 

INSERT INTO `th_member` VALUES (1, 1, 1, 'birthday10241120@qq.com', '07f15b5c8651b6c22ac3dfdb86773f0b', 'W7HRHh', 'wilee', 'wilee', '火星', 'wilee', '<p>知而获智，智达高远</p>', 139, 5, 22, '', 1331864207, 1352968160, '124.118.204.196', '61.135.169.80', 1, 1, 1);
INSERT INTO `th_member` VALUES (2, 0, 1, '373071372@qq.com', '04140d947dd4219541188fa9732da49d', 'sl6koe', 'xiongwilee', 'xiongwilee', '火星', 'xiongwilee', '知而获智，智达高远', 15, 0, 117, '', 1331866118, 1332067078, '124.118.204.196', '124.118.204.196', 1, 1, 1);
INSERT INTO `th_member` VALUES (3, 0, 1, '992604703@qq.com', '5eafc6fc279a0a46d1211208f09e0681', '-VoP5Q', 'wileexiong', 'wileexiong', NULL, 'wileexiong', '', 2, 0, 29, '', 1331867391, 0, '124.118.204.196', '0', 1, 1, 1);
INSERT INTO `th_member` VALUES (10, 0, 1, 'jinlongde@foxmail.com', 'baa2f1639a74de16f9e4b0967194160e', 'huQLj7', '小小白', '', '火星', NULL, '', 0, 0, 2, '', 1331902109, 1331902307, '123.147.249.240', '123.147.249.240', 1, 1, 1);
INSERT INTO `th_member` VALUES (4, 0, 1, '2476401460@qq.com', '5d9c29f59222fdaca0b596680a2100e5', 'L3TONc', 'chen', 'chen', NULL, 'chen', '', 3, 0, 32, '', 1331868117, 0, '124.118.204.196', '0', 1, 1, 1);
INSERT INTO `th_member` VALUES (5, 0, 1, 'birthday10241120@gmail.com', '780d73cb9fe8ce38a7f007fe3bd88199', 'cSRaSf', 'gmail', 'gmail', '火星', 'gmail', '', 0, 0, 130, '', 1331868532, 1332067244, '124.118.204.196', '124.118.204.196', 1, 1, 1);
INSERT INTO `th_member` VALUES (6, 0, 1, 'birthday10241120@hotmail.com', '0f8386a9dd13c9d533ef2e387133adc4', '#q4U8l', 'hotmail', 'hotmail', '火星', 'hotmail', '', 5, 5, 131, '', 1331868663, 1332067400, '124.118.204.196', '124.118.204.196', 1, 1, 1);
INSERT INTO `th_member` VALUES (7, 0, 1, 'sbsbsb250360@sb.tsb', '1a7d27796a8d4432c7bed3eb64823374', 'ledaVw', '沙发顶顶顶顶', 'ggg1', '火星', '浏览浏览浏览浏览浏览浏览来了来了', '经济姐姐姐姐姐姐姐姐姐姐姐姐', 0, 2, 74, '', 1331876548, 1331979489, '124.118.204.195', '124.118.204.195', 1, 1, 1);
INSERT INTO `th_member` VALUES (8, 0, 1, 'ggggggg@hhhh.yyyy', '01fef7db37530c090e1588cb05560391', 'IvWZFy', 'kkkkkkk', '', NULL, NULL, '', 0, 0, 0, '', 1331876979, 0, '124.118.204.195', '0', 1, 1, 1);
INSERT INTO `th_member` VALUES (9, 0, 1, 'sbsbsb250360@sb.tsb1', 'c44b3eff8ae039cbc60a278fcb83566c', 'JCqn#Z', '11111', '', NULL, NULL, '', 0, 0, 0, '', 1331877041, 0, '124.118.204.195', '0', 1, 1, 1);
INSERT INTO `th_member` VALUES (11, 0, 1, '236141047@qq.com', '8acdb08d52a49dda4cc63b3cc3dbe3d7', 'I4Mskq', '萌系鬼才容嬷酱☀', 'azrael', NULL, '女屌丝,拖延症,宅之腐之', '<p>姐素猥琐达人(o´∀｀) </p><p>好尴尬(￣▽￣&quot;) </p><p>装逼的绕道 </p><p>傻逼的绕道 </p><p>文艺的绕道 </p><p>高尚的绕道 </p><p>求勾搭的绕道 </p><p>求ONS的绕道</p>', 0, 0, 0, '', 1331903708, 0, '202.201.238.151', '0', 1, 1, 1);
INSERT INTO `th_member` VALUES (24, 0, 1, '1052040947@qq.com', 'b25f39baa3a9f11a76efd0df05b112c6', 'rQqUSY', '唐寅鑫', 'tangyinxin', NULL, NULL, ' 大家好，“鑫”人报道啦', 0, 0, 0, '', 1333118550, 0, '124.118.204.196', '0', 1, 1, 1);
INSERT INTO `th_member` VALUES (12, 0, 1, '457378798@qq.com', '4b13a7762b47a6b8008f41cadc226b5a', 'MQgFCi', '88888888', '', '火星', NULL, '', 0, 0, 1, '', 1331909141, 1331909350, '124.118.204.199', '124.118.204.199', 1, 1, 1);
INSERT INTO `th_member` VALUES (13, 0, 1, '1136326698@qq.com', '5eb9470652946c26b40993a10be69704', '0uHPJo', '小胖草爱唠叨', 'pangzhi', NULL, NULL, ' 挺活泼的老孩子', 0, 0, 0, '', 1331973572, 0, '60.7.33.115', '0', 1, 1, 1);
INSERT INTO `th_member` VALUES (14, 0, 1, '50790511@qq.com', 'd807dd15d6ccc2eda46f9e300296a3ef', 'sEYnzW', '无痕之吻', 'weiwei', NULL, NULL, '', 0, 0, 1, '', 1331976642, 0, '110.77.88.96', '0', 1, 1, 1);
INSERT INTO `th_member` VALUES (15, 0, 1, 'c@qq.com', '62668dc94da56d1ef7adc6a957720721', '3GGEhi', 'ccc', 'cccc', NULL, 'ccc', '', 0, 0, 61, '', 1331979664, 0, '124.118.204.195', '0', 1, 1, 1);
INSERT INTO `th_member` VALUES (16, 0, 1, 'aaa@qq.com', '01d54c40f63c9098edd947907ef2e363', 'rkZU9O', 'aaa', 'aaaa', '火星', 'aaa', '', 0, 0, 78, '', 1331980323, 1333253732, '124.118.204.195', '121.228.244.94', 1, 1, 1);
INSERT INTO `th_member` VALUES (17, 0, 1, 'bbb@qq.com', 'a77411c9224de83c8e979be0ab4a6803', 'SjY1b0', 'bbb', 'bbbb', '火星', 'bbb', '', 1, 0, 63, '', 1331980465, 1333258621, '124.118.204.195', '121.228.244.94', 1, 1, 1);
INSERT INTO `th_member` VALUES (18, 0, 1, '923444172@qq.com', 'f94684ad4659a0e5054ce12713ff0f31', 'BwL5et', '经典语录', 'dota', '火星', 'dota', '？？？？？？？？<br />', 3, 7, 33, '', 1331984625, 1347534605, '124.118.204.195', '58.215.136.144', 1, 1, 1);
INSERT INTO `th_member` VALUES (19, 0, 1, '631390811@qq.com', 'e6ac97d225439b2214657a17a5f73360', 'qieozr', '人字拖', 'renzituo', NULL, '人字拖', '', 0, 0, 0, '', 1331987705, 0, '119.119.231.194', '0', 1, 1, 1);
INSERT INTO `th_member` VALUES (20, 0, 1, '454425519@qq.com', '5bd5613f8c441ab9770fdd63f7be81e9', 'cpIHi@', '狗B大哥', 'zhou', NULL, NULL, '', 3, 0, 1, '', 1331991538, 0, '124.118.204.197', '0', 1, 1, 1);
INSERT INTO `th_member` VALUES (21, 0, 1, '505438487@qq.com', '2cda8aac867af73e9c89bd34bdbc6319', 'VR4PmF', 'sf', '', NULL, NULL, '', 0, 0, 0, '', 1332033457, 0, '58.54.80.156', '0', 1, 1, 1);
INSERT INTO `th_member` VALUES (22, 0, 1, 'ccc@qq.com', '90e45d6cb9eb328c3715bde6b387b37c', 'MgV7KA', 'ccccc', 'ccccc', '火星', 'ccc', '', 0, 0, 51, '', 1332067900, 1333253785, '124.118.204.196', '121.228.244.94', 1, 1, 1);
INSERT INTO `th_member` VALUES (23, 0, 1, 'ddd@qq.com', '32c7a04e09a22235e34ac05a753e4ad7', 'an7MAG', 'dddd', 'dddd', NULL, 'dddd', '', 0, 0, 40, '', 1332068073, 0, '124.118.204.196', '0', 1, 1, 1);
INSERT INTO `th_member` VALUES (25, 0, 1, 'xjtaruhh@sina.com', 'cf3d922b8ece999fc1752a77ca9b387b', 'ce1IEX', '小小强', 'sdss', NULL, 'sd ', ' s', 1, 0, 0, '', 1333274744, 0, '222.80.175.20', '0', 1, 1, 1);
INSERT INTO `th_member` VALUES (26, 0, 1, '1012195335@qq.com', 'f4a240bf6465396e76f257fb4d114933', '9#aPiQ', '张然', 'zhangran', '火星', NULL, '', 0, 0, 0, '', 1335541258, 1347436470, '111.15.131.113', '182.48.111.232', 1, 1, 1);
INSERT INTO `th_member` VALUES (27, 0, 1, 'birtghday10241120@gmail.com', '960cc0ab9ed8fc7a8de3c6f60b31a6da', 'DHB3Us', 'wilee123', 'wilee123', NULL, 'asdf', 'asdf', 0, 0, 1, '', 1336803671, 0, '124.118.204.198', '0', 1, 1, 1);
INSERT INTO `th_member` VALUES (29, 0, 1, '82161519@qq.com', '27957f484a60b8cba5d9b4f38ef43d6b', 'bK93bE', '、夜微凉', '', '火星', NULL, '', 0, 0, 0, '', 1337624129, 1337624237, '124.118.204.200', '124.118.204.200', 1, 1, 1);
INSERT INTO `th_member` VALUES (28, 0, 1, 'yanglingdi@163.com', 'b78cd35f195bcfc883bc926ea417a191', '2PWLS-', '灵儿', 'linger', NULL, '我看看...', '我就是我...', 0, 0, 0, '', 1336897498, 0, '124.118.204.199', '0', 1, 1, 1);
INSERT INTO `th_member` VALUES (30, 0, 1, 'jcc1018@qq.com', '3b316010a8f8d3acd185d88879bbce08', '5DeeV-', 'k5可乐', 'kele', '火星', '可乐', '可乐<br />', 0, 0, 0, '', 1338020559, 1338020583, '123.14.152.28', '123.14.152.28', 1, 1, 1);
INSERT INTO `th_member` VALUES (31, 0, 1, '1163903164@qq.com', '5771263071fcf9c02551c7dd43e3b739', '8iVT6K', '-wilee-', 'xiongweilie', NULL, '-wilee-', '', 0, 0, 3, '', 1339140740, 0, '61.135.169.71', '0', 1, 1, 1);
INSERT INTO `th_member` VALUES (32, 0, 1, 'kyle@inplc.net', 'a558c47d2b919f3fbc0024d2fc56e0d6', 'zo@rJ6', 'kyle', 'kyle', NULL, '我是站长他哥', '爱信不信我是站长他哥', 0, 0, 1, '', 1339216637, 0, '58.48.24.191', '0', 1, 1, 1);
INSERT INTO `th_member` VALUES (33, 0, 1, 'xuyi0822@163.com', '1a694c24f4cca5607fc279fc81e19948', 'L50rEB', '小呆子', 'xdz111', NULL, NULL, '', 0, 0, 0, '', 1339315376, 0, '122.96.134.197', '0', 1, 1, 1);
INSERT INTO `th_member` VALUES (34, 0, 1, 'wqliceman@gmail.com', '6d4e61f2483ed848ca9b68ade3a60051', '8pOUk4', 'wql', 'wqliceman', NULL, NULL, '&nbsp;我就是不写，怎么啦，不写，难道真要写？看来是真的要写了， 草还真要写，请问怎么就不符合要求了，原来是个性域名不正确！！上面些的最短3位，保存的时候要最短四位，唉', 0, 0, 0, '', 1340719963, 0, '221.3.134.87', '0', 1, 1, 1);

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
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COMMENT='我的通知' AUTO_INCREMENT=54 ;

-- 
-- 导出表中的数据 `th_notice`
-- 

INSERT INTO `th_notice` VALUES (1, 5, 3, 6, '关注通知', '关注了你', 0, 'user|5', 1331868806);
INSERT INTO `th_notice` VALUES (2, 1, 3, 6, '关注通知', '关注了你', 0, 'user|1', 1331868807);
INSERT INTO `th_notice` VALUES (3, 2, 3, 6, '关注通知', '关注了你', 0, 'user|2', 1331868808);
INSERT INTO `th_notice` VALUES (4, 4, 3, 6, '关注通知', '关注了你', 0, 'user|4', 1331868810);
INSERT INTO `th_notice` VALUES (5, 3, 3, 6, '关注通知', '关注了你', 0, 'user|3', 1331868812);
INSERT INTO `th_notice` VALUES (6, 1, 1, 10, '回复了您的博客', '手机看不了，，，，', 0, 'blog|43', 1331902460);
INSERT INTO `th_notice` VALUES (7, 1, 1, 10, '回复了您的博客', '手机看不了视频，，，，', 0, 'blog|43', 1331902466);
INSERT INTO `th_notice` VALUES (8, 11, 3, 1, '关注通知', '关注了你', 0, 'user|11', 1331906466);
INSERT INTO `th_notice` VALUES (9, 10, 1, 1, '回复了您的博客', '回复[at=10]@小小白[/at]:陆陆续续更新ing呵呵', 0, 'blog|43', 1331907881);
INSERT INTO `th_notice` VALUES (10, 12, 3, 1, '关注通知', '关注了你', 0, 'user|12', 1331909373);
INSERT INTO `th_notice` VALUES (11, 10, 3, 1, '关注通知', '关注了你', 0, 'user|10', 1331909378);
INSERT INTO `th_notice` VALUES (12, 6, 1, 12, '回复了您的博客', 'hold  住啊 哥试试行不行', 0, 'blog|39', 1331909399);
INSERT INTO `th_notice` VALUES (13, 12, 0, 1, '', '哈哈 你这不是注册上了吗？', 0, 'user|12', 1331909583);
INSERT INTO `th_notice` VALUES (14, 2, 1, 12, '回复了您的博客', '那女的转过身来 会死人滴', 0, 'blog|25', 1331909705);
INSERT INTO `th_notice` VALUES (15, 1, 1, 1, '回复了您的博客', '起鸡皮疙瘩了……', 0, 'blog|57', 1331910995);
INSERT INTO `th_notice` VALUES (16, 13, 3, 1, '关注通知', '关注了你', 1, 'user|13', 1331973903);
INSERT INTO `th_notice` VALUES (17, 13, 3, 1, '关注通知', '关注了你', 0, 'user|13', 1331975968);
INSERT INTO `th_notice` VALUES (18, 14, 3, 7, '关注通知', '关注了你', 0, 'user|14', 1331979514);
INSERT INTO `th_notice` VALUES (19, 13, 3, 7, '关注通知', '关注了你', 0, 'user|13', 1331979514);
INSERT INTO `th_notice` VALUES (20, 18, 3, 1, '关注通知', '关注了你', 1, 'user|18', 1331985210);
INSERT INTO `th_notice` VALUES (21, 1, 3, 18, '关注通知', '互相关注', 0, 'user|1', 1331985324);
INSERT INTO `th_notice` VALUES (22, 1, 1, 18, '回复了您的博客', '呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵', 0, 'blog|94', 1331987009);
INSERT INTO `th_notice` VALUES (23, 18, 1, 1, '回复了您的博客', 'FU*K U', 1, 'blog|100', 1331987529);
INSERT INTO `th_notice` VALUES (24, 19, 3, 18, '关注通知', '关注了你', 0, 'user|19', 1331987951);
INSERT INTO `th_notice` VALUES (25, 14, 3, 18, '关注通知', '关注了你', 0, 'user|14', 1331987954);
INSERT INTO `th_notice` VALUES (26, 13, 3, 18, '关注通知', '关注了你', 0, 'user|13', 1331987958);
INSERT INTO `th_notice` VALUES (27, 10, 3, 18, '关注通知', '关注了你', 0, 'user|10', 1331992902);
INSERT INTO `th_notice` VALUES (28, 2, 3, 18, '关注通知', '关注了你', 0, 'user|2', 1331992904);
INSERT INTO `th_notice` VALUES (29, 12, 3, 18, '关注通知', '关注了你', 0, 'user|12', 1331992906);
INSERT INTO `th_notice` VALUES (30, 6, 3, 18, '关注通知', '关注了你', 0, 'user|6', 1331992908);
INSERT INTO `th_notice` VALUES (31, 1, 3, 18, '关注通知', '互相关注', 0, 'user|1', 1331992912);
INSERT INTO `th_notice` VALUES (32, 25, 0, 1, '', '<img alt="大笑" src="tpl/js/editor/e/default/laugh.gif" />我是微糗事的founder，你是哪位？', 0, 'user|25', 1333275201);
INSERT INTO `th_notice` VALUES (33, 1, 1, 1, '回复了您的博客', '你好吗', 0, 'blog|173', 1335606831);
INSERT INTO `th_notice` VALUES (34, 1, 1, 1, '回复了您的博客', '<h1>sdfasdf</h1>', 0, 'blog|107', 1335607092);
INSERT INTO `th_notice` VALUES (35, 1, 1, 1, '回复了您的博客', 'asdfsdf', 0, 'blog|107', 1335607134);
INSERT INTO `th_notice` VALUES (36, 1, 1, 1, '回复了您的博客', 'szsd', 0, 'blog|107', 1335607144);
INSERT INTO `th_notice` VALUES (37, 1, 1, 27, '回复了您的博客', 'sadfsdfdsfa', 0, 'blog|175', 1336803839);
INSERT INTO `th_notice` VALUES (38, 1, 1, 31, '回复了您的博客', '哈哈', 0, 'blog|176', 1339140822);
INSERT INTO `th_notice` VALUES (39, 1, 1, 32, '回复了您的博客', '加个分享到微博吧', 0, 'blog|172', 1339217187);
INSERT INTO `th_notice` VALUES (40, 1, 1, 1, '回复了您的博客', '&gt;script&lt;alert("test");&gt;/script&lt', 0, 'blog|107', 1339739170);
INSERT INTO `th_notice` VALUES (41, 1, 1, 1, '回复了您的博客', '&gt;script&lt;alert("test");&gt;/script&lt', 0, 'blog|107', 1339739288);
INSERT INTO `th_notice` VALUES (42, 1, 1, 1, '回复了您的博客', 'test', 0, 'blog|176', 1342368430);
INSERT INTO `th_notice` VALUES (43, 1, 1, 1, '回复了您的博客', '@asdf ifeng.com', 0, 'blog|176', 1342369373);
INSERT INTO `th_notice` VALUES (44, 31, 1, 1, '回复了您的博客', '回复[at=31]@-wilee-[/at]:哈哈哈', 0, 'blog|176', 1342369811);
INSERT INTO `th_notice` VALUES (45, 1, 1, 1, '回复了您的博客', '回复@-wilee-:哈哈哈', 0, 'blog|176', 1342369853);
INSERT INTO `th_notice` VALUES (46, 1, 1, 1, '回复了您的博客', '回复@-wilee-:哈哈哈', 0, 'blog|176', 1342369853);
INSERT INTO `th_notice` VALUES (47, 1, 1, 1, '回复了您的博客', '回复@-wilee-:哈哈哈', 0, 'blog|176', 1342369853);
INSERT INTO `th_notice` VALUES (48, 1, 1, 1, '回复了您的博客', '回复@-wilee-:哈哈哈哈哈哈', 0, 'blog|176', 1342369853);
INSERT INTO `th_notice` VALUES (49, 1, 1, 1, '回复了您的博客', '回复@-wilee-:哈哈哈哈哈哈', 0, 'blog|176', 1342369853);
INSERT INTO `th_notice` VALUES (50, 1, 1, 1, '回复了您的博客', '回复@-wilee-:哈哈哈哈哈哈', 0, 'blog|176', 1342369853);
INSERT INTO `th_notice` VALUES (51, 31, 1, 1, '回复了您的博客', '回复[at=31]@-wilee-[/at]:哈哈哈', 0, 'blog|176', 1342369924);
INSERT INTO `th_notice` VALUES (52, 1, 1, 1, '回复了您的博客', '&lt;b&gt;test&lt;/b&gt;', 0, 'blog|107', 1342370669);
INSERT INTO `th_notice` VALUES (53, 1, 1, 1, '回复了您的博客', '&lt;script&gt;alert(''test'');&lt;/script&gt;', 0, 'blog|107', 1342370697);

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
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

-- 
-- 导出表中的数据 `th_replay`
-- 

INSERT INTO `th_replay` VALUES (1, 43, 10, NULL, '手机看不了，，，，', 1331902460);
INSERT INTO `th_replay` VALUES (2, 43, 10, NULL, '手机看不了视频，，，，', 1331902466);
INSERT INTO `th_replay` VALUES (3, 43, 1, 10, '回复[at=10]@小小白[/at]:陆陆续续更新ing呵呵', 1331907881);
INSERT INTO `th_replay` VALUES (4, 39, 12, NULL, 'hold  住啊 哥试试行不行', 1331909399);
INSERT INTO `th_replay` VALUES (5, 25, 12, NULL, '那女的转过身来 会死人滴', 1331909705);
INSERT INTO `th_replay` VALUES (6, 57, 1, NULL, '起鸡皮疙瘩了……', 1331910995);
INSERT INTO `th_replay` VALUES (7, 94, 18, NULL, '呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵', 1331987009);
INSERT INTO `th_replay` VALUES (8, 100, 1, NULL, 'FU*K U', 1331987529);
INSERT INTO `th_replay` VALUES (9, 173, 1, NULL, '你好吗', 1335606831);
INSERT INTO `th_replay` VALUES (10, 107, 1, NULL, '<h1>sdfasdf</h1>', 1335607092);
INSERT INTO `th_replay` VALUES (11, 107, 1, NULL, 'asdfsdf', 1335607134);
INSERT INTO `th_replay` VALUES (12, 107, 1, NULL, 'szsd', 1335607144);
INSERT INTO `th_replay` VALUES (13, 175, 27, NULL, 'sadfsdfdsfa', 1336803839);
INSERT INTO `th_replay` VALUES (14, 176, 31, NULL, '哈哈', 1339140822);
INSERT INTO `th_replay` VALUES (15, 172, 32, NULL, '加个分享到微博吧', 1339217187);
INSERT INTO `th_replay` VALUES (18, 176, 1, NULL, 'test', 1342368430);
INSERT INTO `th_replay` VALUES (19, 176, 1, NULL, '@asdf ifeng.com', 1342369373);
INSERT INTO `th_replay` VALUES (20, 176, 1, 31, '回复[at=31]@-wilee-[/at]:哈哈哈', 1342369811);
INSERT INTO `th_replay` VALUES (27, 176, 1, 31, '回复[at=31]@-wilee-[/at]:哈哈哈', 1342369924);
INSERT INTO `th_replay` VALUES (28, 107, 1, NULL, '&lt;b&gt;test&lt;/b&gt;', 1342370669);
INSERT INTO `th_replay` VALUES (29, 107, 1, NULL, '&lt;script&gt;alert(''test'');&lt;/script&gt;', 1342370697);

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

INSERT INTO `th_setting` VALUES ('site_title', '微糗事');
INSERT INTO `th_setting` VALUES ('site_desc', '最有趣的糗事分享平台');
INSERT INTO `th_setting` VALUES ('site_count', '<script type="text/javascript">\r\nvar _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");\r\ndocument.write(unescape("%3Cscript src=''" + _bdhmProtocol + "hm.baidu.com/h.js%3Fc55ae77b131d8e71275d187fac09e3c1'' type=''text/javascript''%3E%3C/script%3E"));\r\n</script>');
INSERT INTO `th_setting` VALUES ('site_titlepre', '最有趣的糗事分享平台');
INSERT INTO `th_setting` VALUES ('site_keyword', '微糗事,weiqiushi,糗事,qiushi,笑话,爆笑');
INSERT INTO `th_setting` VALUES ('site_icp', '');
INSERT INTO `th_setting` VALUES ('openlogin_qq_appid', '');
INSERT INTO `th_setting` VALUES ('openlogin_qq_appkey', '');
INSERT INTO `th_setting` VALUES ('openlogin_qq_callback', '');
INSERT INTO `th_setting` VALUES ('openlogin_qq_open', '0');
INSERT INTO `th_setting` VALUES ('openlogin_weib_appid', '');
INSERT INTO `th_setting` VALUES ('openlogin_weib_appkey', '');
INSERT INTO `th_setting` VALUES ('openlogin_weib_callback', '');
INSERT INTO `th_setting` VALUES ('openlogin_weib_open', '0');
INSERT INTO `th_setting` VALUES ('addtext_switch', '1');
INSERT INTO `th_setting` VALUES ('addmusic_switch', '1');
INSERT INTO `th_setting` VALUES ('addvideo_switch', '1');
INSERT INTO `th_setting` VALUES ('addimg_switch', '1');
INSERT INTO `th_setting` VALUES ('addmusic_up_switch', '0');
INSERT INTO `th_setting` VALUES ('addmusic_upsize', '4194304');
INSERT INTO `th_setting` VALUES ('addimg_count', '20');
INSERT INTO `th_setting` VALUES ('addimg_upsize', '2097152');
INSERT INTO `th_setting` VALUES ('mail_open', '0');
INSERT INTO `th_setting` VALUES ('mail_debug', '1');
INSERT INTO `th_setting` VALUES ('mail_from', 'birthday10241120@qq.com');
INSERT INTO `th_setting` VALUES ('mail_fromname', '微糗事');
INSERT INTO `th_setting` VALUES ('mail_host', 'smtp.qq.com');
INSERT INTO `th_setting` VALUES ('mail_port', '25');
INSERT INTO `th_setting` VALUES ('mail_user', 'birthday10241120@qq.com');
INSERT INTO `th_setting` VALUES ('mail_pwd', 'birthday0731');
INSERT INTO `th_setting` VALUES ('theme_uploadsize', '1048576');
INSERT INTO `th_setting` VALUES ('theme_upload', '1');
INSERT INTO `th_setting` VALUES ('theme_uploadtype', 'jpg,png,gif');
INSERT INTO `th_setting` VALUES ('keep_email', 'admin,yunbian');
INSERT INTO `th_setting` VALUES ('keep_niname', 'yunbian,admin,administrator,master,webmaster,email,username,password');
INSERT INTO `th_setting` VALUES ('keep_domain', 'www,yunbian,bbs,music,map,index,register,login,tag,now,admin,recommend,discovery,myfollow,mypost,mylikes,myreplays,mynotices,edit,logout,home,gomember,location,showinfo,about,copyright,call,service,privacy,custom,read');
INSERT INTO `th_setting` VALUES ('keep_rep', '操你妈,艹你妈');
INSERT INTO `th_setting` VALUES ('show_page_mode', '0');
INSERT INTO `th_setting` VALUES ('show_ajax_to', '4');
INSERT INTO `th_setting` VALUES ('show_page_num', '15');
INSERT INTO `th_setting` VALUES ('addbaobei_switch', '0');

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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='系统主题表' AUTO_INCREMENT=6 ;

-- 
-- 导出表中的数据 `th_skins`
-- 

INSERT INTO `th_skins` VALUES (1, 'anythink', '诗琴画意', 'anythink', '1.0', 1, 2, 1);
INSERT INTO `th_skins` VALUES (2, 'qsqy', '轻声琴语', 'anythink', '1.0', 0, 3, 1);
INSERT INTO `th_skins` VALUES (3, 'girldream', '少女之梦', 'anythink', '1.0', 0, 1, 1);
INSERT INTO `th_skins` VALUES (4, 'xzmuma', '旋转木马', 'anythink', '1.0', 0, 2, 1);
INSERT INTO `th_skins` VALUES (5, 'jitashaonv', '吉他少女', 'anythink', '1.0', 0, 2, 1);

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
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 AUTO_INCREMENT=54 ;

-- 
-- 导出表中的数据 `th_tags`
-- 

INSERT INTO `th_tags` VALUES (1, 1, '糗事百科', 9, 1331864428, 1331866585);
INSERT INTO `th_tags` VALUES (2, 1, '生活', 5, 1331864661, 1333259207);
INSERT INTO `th_tags` VALUES (3, 1, '爆笑', 94, 1331865030, 1333854667);
INSERT INTO `th_tags` VALUES (4, 2, '震惊', 0, 1331866661, 0);
INSERT INTO `th_tags` VALUES (5, 2, '糗事', 0, 1331866687, 0);
INSERT INTO `th_tags` VALUES (6, 2, '霸气', 0, 1331866783, 0);
INSERT INTO `th_tags` VALUES (7, 2, '洗澡', 0, 1331866851, 0);
INSERT INTO `th_tags` VALUES (8, 2, '床', 0, 1331866906, 0);
INSERT INTO `th_tags` VALUES (9, 2, '有爱', 0, 1331866906, 0);
INSERT INTO `th_tags` VALUES (10, 2, '猫咪', 2, 1331866957, 1332041534);
INSERT INTO `th_tags` VALUES (11, 2, '狗狗', 3, 1331866989, 1334147334);
INSERT INTO `th_tags` VALUES (12, 2, '电信客服', 0, 1331867130, 0);
INSERT INTO `th_tags` VALUES (13, 3, '尔康', 0, 1331867676, 0);
INSERT INTO `th_tags` VALUES (14, 4, '土豆', 0, 1331868382, 0);
INSERT INTO `th_tags` VALUES (15, 4, '优酷', 0, 1331868382, 0);
INSERT INTO `th_tags` VALUES (16, 4, '射击', 0, 1331868458, 0);
INSERT INTO `th_tags` VALUES (17, 6, '电话', 0, 1331868910, 0);
INSERT INTO `th_tags` VALUES (18, 6, '只能购物车', 0, 1331869026, 0);
INSERT INTO `th_tags` VALUES (19, 6, '爆笑接龙', 0, 1331869213, 0);
INSERT INTO `th_tags` VALUES (20, 6, '学号', 0, 1331870204, 0);
INSERT INTO `th_tags` VALUES (21, 6, '哈哈哈', 4, 1331870907, 1332000560);
INSERT INTO `th_tags` VALUES (22, 1, '生活小常识', 0, 1331875032, 0);
INSERT INTO `th_tags` VALUES (23, 1, '感动', 0, 1331891864, 0);
INSERT INTO `th_tags` VALUES (24, 1, '哈哈', 11, 1331909940, 1336294191);
INSERT INTO `th_tags` VALUES (25, 1, '政治', 0, 1331910249, 0);
INSERT INTO `th_tags` VALUES (26, 1, '萌宠', 1, 1331956857, 1331957004);
INSERT INTO `th_tags` VALUES (27, 1, '爆笑视频', 1, 1331969490, 1331969512);
INSERT INTO `th_tags` VALUES (28, 1, '笑点', 0, 1331970504, 0);
INSERT INTO `th_tags` VALUES (29, 1, '微糗事', 0, 1331970914, 0);
INSERT INTO `th_tags` VALUES (30, 1, '经典', 0, 1331975574, 0);
INSERT INTO `th_tags` VALUES (31, 1, '内涵', 0, 1331977251, 0);
INSERT INTO `th_tags` VALUES (32, 1, '碉堡', 2, 1331977651, 1336475662);
INSERT INTO `th_tags` VALUES (33, 1, '彪悍', 0, 1331977976, 0);
INSERT INTO `th_tags` VALUES (34, 18, '朋友维持', 1, 1331985062, 1331985109);
INSERT INTO `th_tags` VALUES (35, 18, '利用出卖的人心百态', 0, 1331985109, 0);
INSERT INTO `th_tags` VALUES (36, 18, '20-26（一日一囧）', 0, 1331985192, 0);
INSERT INTO `th_tags` VALUES (37, 18, '从今天起，要做一个简单的人', 0, 1331986123, 0);
INSERT INTO `th_tags` VALUES (38, 20, '狐狸', 0, 1331991861, 0);
INSERT INTO `th_tags` VALUES (39, 20, '大象', 0, 1331992483, 0);
INSERT INTO `th_tags` VALUES (40, 1, '惊险', 0, 1331994593, 0);
INSERT INTO `th_tags` VALUES (41, 1, '海绵宝宝', 0, 1331996938, 0);
INSERT INTO `th_tags` VALUES (42, 1, '搞笑', 0, 1332042532, 0);
INSERT INTO `th_tags` VALUES (43, 20, '斗地主', 0, 1332043122, 0);
INSERT INTO `th_tags` VALUES (44, 1, '性教育', 0, 1332043657, 0);
INSERT INTO `th_tags` VALUES (45, 1, '猜猜', 0, 1332066391, 0);
INSERT INTO `th_tags` VALUES (46, 1, '愚人节', 0, 1333251786, 0);
INSERT INTO `th_tags` VALUES (47, 1, '求婚', 0, 1333252082, 0);
INSERT INTO `th_tags` VALUES (48, 17, '清明节', 0, 1333258863, 0);
INSERT INTO `th_tags` VALUES (49, 25, '生生世世生生世世事实', 0, 1333275002, 0);
INSERT INTO `th_tags` VALUES (50, 1, '中国球迷', 0, 1333600612, 0);
INSERT INTO `th_tags` VALUES (51, 1, '猫', 0, 1333763037, 0);
INSERT INTO `th_tags` VALUES (52, 1, '哈士奇', 0, 1334147596, 0);
INSERT INTO `th_tags` VALUES (53, 1, '可爱', 0, 1335677786, 0);

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

INSERT INTO `th_theme` VALUES (6, 'b:0;', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `th_theme` VALUES (1, 'b:0;', NULL, NULL, NULL, NULL, NULL, 'qsqy');
INSERT INTO `th_theme` VALUES (18, 'b:0;', NULL, NULL, NULL, NULL, NULL, 'qsqy');
INSERT INTO `th_theme` VALUES (19, 'b:0;', NULL, NULL, NULL, NULL, NULL, 'qsqy');
