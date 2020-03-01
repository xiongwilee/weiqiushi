CREATE TABLE IF NOT EXISTS `th_access_cache` (
  `cachename` varchar(100) NOT NULL,
  `cachevalue` text,
  PRIMARY KEY (`cachename`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE  `th_theme` CHANGE  `img1`  `img1` VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL;
ALTER TABLE  `th_theme` CHANGE  `img2`  `img2` VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL;
ALTER TABLE  `th_theme` CHANGE  `img3`  `img3` VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL;
ALTER TABLE  `th_theme` CHANGE  `img4`  `img4` VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL;

ALTER TABLE  `th_memberex` ADD  `expires` INT( 10 ) NOT NULL COMMENT  'ÊÇ·ñ¹ýÆÚ';