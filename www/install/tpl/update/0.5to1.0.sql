SET FOREIGN_KEY_CHECKS=0;

CREATE INDEX `uid` ON `th_likes`(`uid`) USING BTREE ;

ALTER TABLE `th_member` ADD COLUMN `m_rep`  tinyint(1) NOT NULL DEFAULT 1 AFTER `logip`;

ALTER TABLE `th_member` ADD COLUMN `m_fow`  tinyint(1) NOT NULL DEFAULT 1 AFTER `m_rep`;

ALTER TABLE `th_member` ADD COLUMN `m_pm`  tinyint(1) NOT NULL DEFAULT 1 AFTER `m_fow`;

ALTER TABLE `th_memberex` ADD COLUMN `expires`  int(10) NOT NULL COMMENT '是否过期' AFTER `uid`;

CREATE INDEX `uid` ON `th_memberex`(`uid`) USING BTREE ;

ALTER TABLE `th_notice` MODIFY COLUMN `sys`  tinyint(1) NOT NULL DEFAULT 0 COMMENT '1为回复 0为私信 2为通知' AFTER `uid`;

CREATE TABLE `th_skins` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`skindir`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主题位置' ,
`name`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主题名称' ,
`author`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主题作者' ,
`version`  char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主题版本' ,
`exclusive`  tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否为专属主题' ,
`usenumber`  int(10) NOT NULL COMMENT '多少人用' ,
`open`  tinyint(1) NOT NULL DEFAULT 0 COMMENT '允许使用' ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
CHECKSUM=0
ROW_FORMAT=Dynamic
DELAY_KEY_WRITE=0
;


CREATE TABLE `th_access_cache` (
 `cachename` varchar(100) NOT NULL,
 `cachevalue` text,
  PRIMARY KEY (`cachename`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


ALTER TABLE `th_theme` ADD COLUMN `setup`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL AFTER `uid`;

ALTER TABLE `th_theme` MODIFY COLUMN `css`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `setup`;

ALTER TABLE `th_theme` ADD COLUMN `img1`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `css`;

ALTER TABLE `th_theme` ADD COLUMN `img2`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `img1`;

ALTER TABLE `th_theme` ADD COLUMN `img3`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `img2`;

ALTER TABLE `th_theme` ADD COLUMN `img4`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `img3`;

ALTER TABLE `th_theme` MODIFY COLUMN `theme`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `img4`;

ALTER TABLE `th_theme` DROP COLUMN `customecss`;

ALTER TABLE `th_theme` DROP COLUMN `backgroundimg`;


INSERT INTO `th_setting` (`name`, `val`) VALUES
										('addtext_switch', '1'),
										('addmusic_switch', '1'),
										('addvideo_switch', '1'),
										('addimg_switch', '1'),
										('addmusic_up_switch', '1'),
										('addmusic_upsize', '4194304'),
										('addimg_count', '20'),
										('addimg_upsize', '2097152'),
										('mail_open', '0'),
										('mail_debug', '1'),
										('mail_from', ''),
										('mail_fromname', '云边轻博'),
										('mail_host', ''),
										('mail_port', ''),
										('mail_user', ''),
										('mail_pwd', ''),
										('theme_uploadsize', '1048576'),
										('theme_upload', '1'),
										('theme_uploadtype', 'jpg,png,gif'),
										('keep_email', 'admin,yunbian'),
										('keep_niname', 'yunbian,admin,administrator,master,webmaster,email,username,password'),
										('keep_domain', 'www,yunbian,bbs,music,map,index,register,login,tag,now,admin,recommend,discovery,myfollow,mypost,mylikes,myreplays,mynotices,edit,logout,home,gomember,location,showinfo,about,copyright,call,service,privacy,custom,read'),
										('keep_rep', '操你妈,艹你妈'),
										('show_page_mode', '1'),
										('show_ajax_to', '4'),
										('show_page_num', '10');
