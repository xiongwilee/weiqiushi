
CREATE TABLE `th_recommend` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `open` tinyint(1) NOT NULL DEFAULT '0' COMMENT '�Ƿ�����',
  `bid` int(10) NOT NULL COMMENT '�Ƽ�������',
  `cid` int(10) NOT NULL,
  `tuiuid` int(10) NOT NULL DEFAULT '0' COMMENT '�Ƽ�����',
  `uid` int(10) NOT NULL COMMENT '�Ƽ���',
  `desc` varchar(255) NOT NULL COMMENT '�Ƽ�����',
  `num` int(10) NOT NULL COMMENT '���Ƽ�����',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`)
);