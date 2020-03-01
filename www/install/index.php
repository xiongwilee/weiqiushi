<?php

/////////////////////////////////////////////////////////////////
//微糗事, Copyright (C)   2011 - 2012  weiqiushi.com
//EMAIL:birthday10241120@qq.com QQ:373071372
//$Id: index.php 43 2011-11-06 08:19:05Z anythink $

define("APP_PATH",substr(dirname(__FILE__),0,-8));
define('IN_APP',TRUE);
define("APP_NAME",'/'); //是否在二级目录，
define("SP_PATH",APP_PATH.'/init');
require(SP_PATH."/spFunctions.php");
require(SP_PATH."/Extensions/thFunctions.php");



date_default_timezone_set('PRC');
if( substr(PHP_VERSION, 0, 3) == "5.3" ){
	error_reporting(E_ALL & ~E_NOTICE & ~E_WARNING & ~E_DEPRECATED);
}else{
	error_reporting(E_ALL & ~E_NOTICE & ~E_WARNING);
}


header("Content-type: text/html; charset=utf-8");







$step = $_GET['step'];

switch($step)
{
	case '2';
	chkInstall();
	include 'tpl/license.html';
	break;

	case '3';
	chkInstall();
	include 'tpl/check.html';
	break;

	case '4';
	chkInstall();
	include 'tpl/database.html';
	break;

	case '5';
	chkInstall();
	$err = testDbConnect();
	include 'tpl/database.html';
	break;

	case '6';
	chkInstall();
	writeConfig();
	break;

	case '7';
		if(isset($_POST['final'])){$err = setUserInfo();}
		include 'tpl/siteinfo.html';
	break;

	case 'final';
	session_start();
	$url = substr($_SERVER['SCRIPT_NAME'],0,-18);
	include 'tpl/final.html';
	break;




	default:
	include 'tpl/index.html';
}


function chkInstall()
{
	if(is_file(APP_PATH.'/config.php')){ exit( '您已经安装过了，请删除./config.php 文件后刷新本页面继续安装！');  }
}


function dir_writeable($dir) {
	if(!is_dir($dir)) {
		@mkdir($dir, 0777);
	}
	if(is_dir($dir)) {
		if($fp = @fopen("$dir/test.txt", 'w')) {
			@fclose($fp);
			@unlink("$dir/test.txt");
			$writeable = 1;
		} else {
			$writeable = 0;
		}
	}
	return $writeable;
}

function ckeckwrite($result = 0) {
	if($result) {
		$text =  '<font color="#0000EE">可写</font><br>';return $text;
	} else {
		$text = '<font color="#FF0000">不可写</font><br>';return $text;
	}
}

function getDatabase()
{
	$data = '';
	if(function_exists('mysql_connect')){$data[] = 'mysql';}
	if(function_exists('mysqli_connect')){$data[] = 'mysqli';}
	if(function_exists('pdo_drivers')){$data[] = 'pdo_mysql';}
	return $data;
}

function getUploadState()
{
	if(@ini_get(file_uploads)) {
		$max_size = @ini_get(upload_max_filesize);
		return  '允许/'.$max_size;
	} else {
		return'不允许';
	}
}


function getCurlstate()
{
	if(!function_exists("curl_init"))
	{
		return '不支持';
	}else{
		return '支持';
	}
}

function gdVersion()
{
	if(!function_exists("gd_info")){$gd = '不支持,无法处理图像';}
	if(function_exists(gd_info)) {  $gd = @gd_info();  $gd = $gd["GD Version"];  $gd ? '&nbsp; 版本：'.$gd : '';}
	return $gd;
}

function testDbConnect()
{
	$msg='';
	if(!$db = @mysql_connect($_POST['host'], $_POST['user'], $_POST['pwd']))
	{
		$errormsg = 'database_errno_'.mysql_error();
		$msg .= '<li>数据库主机或者用户名或者密码填写错误：'.$errormsg.'</li>';
	}else{
		if( mysql_get_server_info() < 5){$msg = 'Mysql版本过低：'.mysql_get_server_info().',请安装mysql5以上';}

		if(!mysql_select_db($_POST['name']))
		{
			$msg = '数据库选择错误'.mysql_error().'';
			if($_POST['creatdb'] == 1)
			{
				mysql_query("set names utf8");
				$sql = "CREATE DATABASE `{$_POST['name']}`";
				if(!mysql_query($sql,$db))
				{
					$msg = '您没有权限创建数据库'.$_POST['name'].','.mysql_error();
				}else{
					$msg = '';
				}
			}

		}

		if(!preg_match("/^[\w_]+_$/",$_POST['pre'])) $msg("数据表前缀不符合(例如：th_)");
		//检测是否有基本的权限
		if($msg =='')
		{
				$sqlarray = array(
					'createtable' => 'CREATE TABLE th_test (test TINYINT (3) UNSIGNED)',
					'insert' => 'INSERT INTO th_test (test) VALUES (1)',
					'select' => 'SELECT * FROM th_test',
					'update' => 'UPDATE th_test SET test=\'2\' WHERE test=\'1\'',
					'delete' => 'DELETE FROM th_test WHERE test=\'2\'',
					'droptable' => 'DROP TABLE th_test'
				);

				foreach($sqlarray as $key => $sql) {
					mysql_select_db($_POST['name'],$db);
					mysql_query($sql,$db);
					if(mysql_errno()) {
						$msg .= '<li>'.mysql_error().'</li>';
					}
				}
		}
	}

	if($_POST['driver'] == 'noselect'){ $msg = '请选择数据驱动类型';}
	if($msg == ''){return 'ok';}
	return $msg;
}


function writeConfig()
{
	$err = '';
	if(!$configstring = file_get_contents('tpl/config.simple.php')){exit('无法读取配置文件模板tpl/config.simple.php');}
	$time = date('Y年 m月 d日 H:i',time());
	$find = array('{SETUPTIME}','{HOST}','{USER}','{PWD}','{DBNAME}','{DBPRE}','{DRIVERS}');
	$replace = array($time,$_POST['host'],$_POST['user'],$_POST['pwd'],$_POST['name'],$_POST['pre'],_findDriver($_POST['driver']));


	$conf = str_replace($find,$replace,$configstring);
	if(!file_put_contents(APP_PATH.'/config.php',$conf)){exit('写入配置文件失败!config.php 无法写入');}

	if(!$sql = file_get_contents('tpl/qing.sql')) {exit('无法读取数据库模板文件tpl/qing.sql');}
	 $sql = str_replace('th_',$_POST['pre'],$sql);




	$sqlArr = preg_split("/;[\r\n]/", $sql);
	$del = count($sqlArr)-1;
	unset($sqlArr[$del]);


	$db = mysql_connect($_POST['host'], $_POST['user'], $_POST['pwd']);
	 mysql_select_db($_POST['name'],$db);
	foreach($sqlArr as $q)
	{
		$sql = trim($q);
		mysql_select_db($_POST['name'],$db);
		mysql_query("set names utf8");
		if(!mysql_query($sql,$db))
		{
			$err  .= mysql_error() .'<br>'.$q;
		}
	}
	if($err != '')
	{
		exit('安装数据库出现问题：'.$err.'<br>安装程序被迫中断');
	}

	header("Location:index.php?step=7");
}


function setUserInfo()
{
	$po = $_POST;
	if($po['site_title'] == '' || $po['site_titlepre'] == '') $err = '请填写您的网站标题和副标题<br>';
	if($po['email'] == '') $err .= '请填写您的Emali<br>';
	if(strlen($po['password']) < 6) $err .= '密码必须大于6位<br>';
	if($po['password'] != $po['password2']) $err .= '两次密码不一致<br>';
	if($po['salt']) $err .= '系统salt不能为空';



	$file = file_get_contents(APP_PATH.'/config.php'); //读取系统配置
	$find = array('{ENCODESTRING}','//{URLREWRITE}','//{APP_NAME}');
	$appdir = substr($_SERVER['SCRIPT_NAME'],0,-17);
	$app_name ="define('APP_NAME','".$appdir."');";
	$replace = array($po['salt'],_findUrlRewrite($po['rewrite']),$app_name);


	$file = str_replace($find,$replace,$file);


	file_put_contents(APP_PATH.'/config.php',$file); //读取系统配置
	/*
	$js = file_get_contents('tpl/multiupload.js');
	$js = str_replace('//PATH_NAME',"var path = '".$appdir."'; ",$js);
	file_put_contents(APP_PATH.'/tpl/js/multiupload.js',$js); //写入系统配置
	*/
	require APP_PATH.'/config.php';


	$db = $spConfig['db'];
	$GLOBALS['G_SP'] = $spConfig;

	$dbhand = mysql_connect($db['host'], $db['login'], $db['password']);
	mysql_select_db($db['database']);
	mysql_query("set names utf8");
	$pre = $db['prefix'];

	$salt = randstr();
	$password = password_encode($po['password'],$salt);
	$time = time();
	$ip = getIP();

	$sql = "INSERT INTO `".$pre."member` (`uid`, `admin`, `email`, `password`, `salt`, `regtime`,  `regip`)
										 VALUES(1, 1,'{$po['email']}', '$password', '$salt',  $time, '$ip')";

	mysql_query($sql);


	$sql = "INSERT INTO `".$pre."setting` (`name`, `val`) VALUES
										('site_title', '{$po['site_title']}'),
										('site_desc', '又一个微糗事系统诞生'),
										('site_count', ''),
										('site_titlepre', '{$po['site_titlepre']}'),
										('site_keyword', '微糗事,yunbian,PHP,MYSQL,糗事,开源,糗事,qing,开源糗事,开源糗事'),
										('site_icp', ''),
										('openlogin_qq_appid', ''),
										('openlogin_qq_appkey', ''),
										('openlogin_qq_callback', ''),
										('openlogin_qq_open', '0'),
										('openlogin_weib_appid', ''),
										('openlogin_weib_appkey', ''),
										('openlogin_weib_callback', ''),
										('openlogin_weib_open', '0'),
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
										('mail_fromname', '微糗事'),
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
										";





	mysql_query($sql);
	session_start();
	$_SESSION['uid'] = 1;
	$_SESSION['email'] = $po['email'];
	$_SESSION['admin'] = 1;
	$_SESSION['username'] = '';

	header("Location:index.php?step=final");
	return $err;

}


function postDefault($postkey,$default)
{
	if($_POST[$postkey]){ echo $_POST[$postkey]; }else{ echo $default; }
}

/*获取驱动实名*/
function _findDriver($driver)
{
	switch(driver)
	{
		case 'mysql':return 'mysql';
		break;
		case 'mysqli':return 'mysqli';
		break;
		case 'pdo_mysql':return 'pdo';
		break;
		case 'sqlite':return 'sqlite';
		break;
		case 'oracle':return 'oracle';
		break;
		case 'mssql':return 'mssql';
		break;
		default: return 'mysql';
	}
}

function _findUrlRewrite($val)
{
	if($val)
	{
		$url_write = "
				  'router_prefilter' => array( array('spUrlRewrite', 'setReWrite') ),
				  'function_url' => array( array(\"spUrlRewrite\", \"getReWrite\"), ),";
			  return $url_write;
	}
}


function getSalt()
{
	$salt = time();
	$salt = md5( $salt.$_SERVER['HTTP_USER_AGENT'].$_SERVER['REQUEST_TIME'].$_SERVER['HTTP_ACCEPT_ENCODING'].$_SERVER['HTTP_COOKIE'].$salt );
	return $salt;
}














?>