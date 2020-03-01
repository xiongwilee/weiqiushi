
CREATE TABLE `th_recommend` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `open` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否启用',
  `bid` int(10) NOT NULL COMMENT '推荐的内容',
  `cid` int(10) NOT NULL,
  `tuiuid` int(10) NOT NULL DEFAULT '0' COMMENT '推荐的人',
  `uid` int(10) NOT NULL COMMENT '推荐人',
  `desc` varchar(255) NOT NULL COMMENT '推荐描述',
  `num` int(10) NOT NULL COMMENT '被推荐次数',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`)
);