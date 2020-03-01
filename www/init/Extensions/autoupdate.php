<?php
/////////////////////////////////////////////////////////////////
//微糗事, Copyright (C)   2011 - 2012  weiqiushi.com 
//EMAIL:birthday10241120@qq.com QQ:373071372                              
//$Id: autoupdate.php 7 2011-09-20 15:02:20Z anythink $ 

/*code by anythink*/
class autoupdate{

	private $host = 'http://192.168.0.200/ybserver/index.php';
	
	function __construct()
	{
	
	
	}

	
 
}



function download($url, $filename = '') {
	$agent = 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0)';
	if(function_exists('curl_init')) {
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_HEADER, 0);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
		curl_setopt($ch, CURLOPT_USERAGENT, $agent);
		$content = curl_exec($ch);
		curl_close($ch);
	} elseif(function_exists('fsockopen')) {
		$offset = strpos($url, '://');
		if($offset === false) return false;
		if(strpos($url, '/', $offset + 3) === false) $url .= '/';
		$host = getfield('://', '/', $url);
		$request =  'GET '.$url.' HTTP/1.0\r\n';
		$request .= 'Host: '.$host.'\r\n';
		$request .= 'Accept: */*\r\n';
		$request .= 'User-Agent: '.$agent.'\r\n\r\n';
		$sHnd = @fsockopen($host, 80, $errno, $errstr, 30);
		if(!$sHnd) return false;
		@fputs($sHnd, $request);
		$content = '';
		while(!feof($sHnd)) {
			$content .= fgets($sHnd, 4096);
		}
		fclose($sHnd);
		$offset = strpos($content, '\r\n\r\n');
		if($offset != false) $content = substr($content, $offset + 4);
	} elseif(ini_get('allow_url_fopen') == '1') {
		@ini_set('user_agent', $agent);
		$content = file_get_contents($url);
	} else {
		exit('ERROR:spider disabled!');
	}
	if(!empty($filename)) {
		$fp = fopen($filename, 'w');
		fwrite($fp, $content);
		fclose($fp);
	}
	return $content;
}
function getfield($start, $end, $content, $repeatsplit = '') {
	if(empty($content)) return false;
	$return = '';
	while(1) {
		$start_position = 0;
		$end_position = strlen($content);
		if($start != '') $start_position = strpos($content, $start);
		if($start_position === false) break;
		$start_position += strlen($start);
		if($end != '') $end_position = strpos($content, $end, $start_position);
		if($end_position === false) break;
		$return .= substr($content, $start_position, $end_position - $start_position);
		if(empty($repeatsplit)) return $return;
		$return .= $repeatsplit;
		$content = substr($content, $end_position + strlen($end));
	}
	if(strlen($return) > strlen($repeatsplit)) $return = substr($return, 0, strlen($return) - strlen($repeatsplit));
	return $return;
}
function makedir($dirname) {
	$dirname = str_replace('\\', '/', $dirname);
	$a_path = explode('/', $dirname);
	if(count($a_path) == 0) {
		mkdir($dirname);
	} else {
		array_pop($a_path);
		$path = @implode('/', $a_path);
		if(is_dir($path.'/')) {
			@mkdir($dirname);
		} else {
			makedir($path);
			@mkdir($dirname);
		}
	}
}
function unzip($zip, $to = '.') {
	$size = filesize($zip);
	$maximum_size = min(277, $size);
	$fp = fopen($zip, 'rb');
	fseek($fp, $size - $maximum_size);
	$pos = ftell($fp);
	$bytes = 0x00000000;
	while($pos < $size) {
		$byte = @fread($fp, 1);
		$bytes = ($bytes << 8) | ord($byte);
		if($bytes == 0x504b0506 || $bytes == 0x2e706870504b0506) {
			$pos ++;
			break;
		}
		$pos ++;
	}
	$fdata = fread($fp, 18);
	$data = @unpack('vdisk/vdisk_start/vdisk_entries/ventries/Vsize/Voffset/vcomment_size',$fdata);
	$pos_entry = $data['offset'];
	for($i=0; $i < $data['entries']; $i++) {
		fseek($fp, $pos_entry);
		$header = ReadCentralFileHeaders($fp);
		$header['index'] = $i;
		$pos_entry = ftell($fp);
		rewind($fp);
		fseek($fp, $header['offset']);
		$stat[$header['filename']] = ExtractFile($header, $to, $fp);
	}
	fclose($fp);
}

function ReadCentralFileHeaders($fp) {
	$binary_data = fread($fp, 46);
	$header = unpack('vchkid/vid/vversion/vversion_extracted/vflag/vcompression/vmtime/vmdate/Vcrc/Vcompressed_size/Vsize/vfilename_len/vextra_len/vcomment_len/vdisk/vinternal/Vexternal/Voffset', $binary_data);
	$header['filename'] = $header['extra'] = $header['comment'] = '';
	if($header['filename_len'] != 0) $header['filename'] = fread($fp, $header['filename_len']);
	if($header['extra_len'] != 0) $header['extra'] = fread($fp, $header['extra_len']);
	if($header['comment_len'] != 0) $header['comment'] = fread($fp, $header['comment_len']);
	$header['mtime'] = time();
	$header['stored_filename'] = $header['filename'];
	$header['status'] = 'ok';
	if(substr($header['filename'], -1) == '/') $header['external'] = 0x41FF0010;
	return $header;
}

function ReadFileHeader($fp) {
	$binary_data = fread($fp, 30);
	$data = unpack('vchk/vid/vversion/vflag/vcompression/vmtime/vmdate/Vcrc/Vcompressed_size/Vsize/vfilename_len/vextra_len', $binary_data);

	$header['filename'] = fread($fp, $data['filename_len']);
	if ($data['extra_len'] != 0) {
	  $header['extra'] = fread($fp, $data['extra_len']);
	} else { $header['extra'] = ''; }

	$header['compression'] = $data['compression'];
	$header['size'] = $data['size'];
	$header['compressed_size'] = $data['compressed_size'];
	$header['crc'] = $data['crc']; $header['flag'] = $data['flag'];
	$header['mdate'] = $data['mdate'];
	$header['mtime'] = $data['mtime'];

	if ($header['mdate'] && $header['mtime']){
	 $hour=($header['mtime']&0xF800)>>11;$minute=($header['mtime']&0x07E0)>>5;
	 $seconde=($header['mtime']&0x001F)*2;$year=(($header['mdate']&0xFE00)>>9)+1980;
	 $month=($header['mdate']&0x01E0)>>5;$day=$header['mdate']&0x001F;
	 $header['mtime'] = mktime($hour, $minute, $seconde, $month, $day, $year);
	}else{$header['mtime'] = time();}

	$header['stored_filename'] = $header['filename'];
	$header['status'] = 'ok';
	return $header;
  }

function ExtractFile($header, $to, $fp) {
	$header = readfileheader($fp);
	if(substr($to, -1) != '/') $to .= '/';
	if($to == './') $to = '';
	if(substr($to, 0, 1) == '/') $to = '.'.$to;
	$to = $to.$header['filename'];
	if(substr($to, -1) == '/') {
		makedir($to);
	} else {
		$path = pathinfo($to);
		if(!is_dir($path['dirname'])) makedir($path['dirname']);
	}
	if(strrchr($header['filename'],'/')=='/') return 1;
	if($header['compression'] == 0) {
		$nfp = fopen($to, 'wb');
		if(!$nfp) return(-1);
		$size = $header['compressed_size'];
		while ($size != 0) {
			$read_size = ($size < 2048 ? $size : 2048);
			$buffer = fread($fp, $read_size);
			$binary_data = pack('a'.$read_size, $buffer);
			@fwrite($nfp, $binary_data, $read_size);
			$size -= $read_size;
		}
		fclose($nfp);
	} else {
		$nfp = fopen($to.'.gz', 'wb');
		if(!$nfp) return -1;
		$binary_data = pack('va1a1Va1a1', 0x8b1f, Chr($header['compression']), Chr(0x00), time(), Chr(0x00), Chr(3));
		fwrite($nfp, $binary_data, 10);
		$size = $header['compressed_size'];
		while($size != 0) {
			$read_size = ($size < 1024 ? $size : 1024);
			$buffer = fread($fp, $read_size);
			$binary_data = pack('a'.$read_size, $buffer);
			fwrite($nfp, $binary_data, $read_size);
			$size -= $read_size;
		}
		$binary_data = pack('VV', $header['crc'], $header['size']);
		fwrite($nfp, $binary_data,8);
		fclose($nfp);
		$gzp = gzopen($to.'.gz', 'rb');
		if(!$gzp) return(-2);
		$nfp = fopen($to, 'wb');
		if(!$nfp) return(-1);
		$size = $header['size'];
		while($size != 0) {
			$read_size = ($size < 2048 ? $size : 2048);
			$buffer = gzread($gzp, $read_size);
			$binary_data = pack('a'.$read_size, $buffer);
			@fwrite($nfp, $binary_data, $read_size);
			$size -= $read_size;
		}
		fclose($nfp);
		gzclose($gzp);
		unlink($to.'.gz');
	}
	return true;
 }
?>