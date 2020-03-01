<?php
/////////////////////////////////////////////////////////////////
//微糗事, Copyright (C)   2011 - 2012  weiqiushi.com 
//EMAIL:birthday10241120@qq.com QQ:373071372                              
//$Id: image.php 7 2011-09-20 15:02:20Z anythink $ 

class image {
    /**
     * 图片文件句柄
     * @var image
     */
    var $image;
    /**
     * 图片类型
     *
     * @var imagetype
     */
    var $image_type;
    var $image_quality=90;
    var $true_color = false;
    /**
     * 装载图像
     *
     * @param string $filename 文件完整路径
     * @return void
     */
    function load($filename) {
        @ini_set('memory_limit', '128M');
        $image_info = @getimagesize($filename);
        $this->image_type = $image_info[2];
        if( $this->image_type == IMAGETYPE_JPEG ) {
            $this->image = @imagecreatefromjpeg($filename);
        } elseif( $this->image_type == IMAGETYPE_GIF ) {
            $this->image = @imagecreatefromgif($filename);
        } elseif( $this->image_type == IMAGETYPE_PNG ) {
            $this->image = @imagecreatefrompng($filename);
        }else{
            return false;
        }
        if(function_exists("imagecopyresampled") && function_exists("imagecreatetruecolor") && $this->image_type != IMAGETYPE_GIF){
            $this->true_color = true;
        }
    }
    
    function setQuality($q){
        if($q>0) $this->image_quality = $q;
    }
    /**
     * 返回扩展名
     * @return string 扩展名
     */
    function getExtension(){
        if( $this->image_type == IMAGETYPE_JPEG ) return 'jpg';
        elseif( $this->image_type == IMAGETYPE_GIF ) return 'gif';
        elseif( $this->image_type == IMAGETYPE_PNG ) return 'png';
    }

    /**
     * 将图形对象保存成文件
     * @param string $filename 文件名
     * @param int $image_type 文件类型
     * return volid
     */
    function save($filename) {
        $image_type = $this->image_type;
        if( $image_type == IMAGETYPE_JPEG ) {
           if(@imagejpeg($this->image,$filename,$this->image_quality)) {return true;}
        } elseif( $image_type == IMAGETYPE_GIF ) {
            if(@imagegif($this->image,$filename)) {return true;}
        } elseif( $image_type == IMAGETYPE_PNG ) {
            if(@imagepng($this->image,$filename)) {return true;}
        }
		return false;
    }
    
    /**
     * 将图像输出到数据流
     * @param int $image_type 文件类型
     * @return void
     */
    function output() {
        $image_type = $this->image_type;
        if( $image_type == IMAGETYPE_JPEG ) {
            header('Content-Type: image/jpeg');
            imagejpeg($this->image,NULL,$this->image_quality);
        } elseif( $image_type == IMAGETYPE_GIF ) {
            header('Content-type: image/gif');
            imagegif($this->image);
        } elseif( $image_type == IMAGETYPE_PNG ) {
            header('Content-type: image/png');
            imagepng($this->image);
        }
    }

    /**
     * 获得图像宽度
     * @return int 图像宽度
     */
    function getWidth() {
        return imagesx($this->image);
    }

    /**
     * 获得图像高度
     * @return int 图像高度
     */
    function getHeight() {
        return imagesy($this->image);
    }

    /**
     * 等比例缩小到指定高度
     * @param int $height 指定高度
     */
    function resizeToHeight($height) {
        $ratio = $height / $this->getHeight();
        $width = $this->getWidth() * $ratio;
        $this->resize($width,$height);
    }

    /**
     * 缩小到指定尺寸
     * 
     * @param int $w 指定宽度
     * @param int $h 指定高度
     */
    function resizeTo($w=0, $h=0) {
        if($w>0 && $h>0) return $this->resize($w,$h);
        else if($w>0) return $this->resizeToWidth($w);
        else if($h>0) return $this->resizeToHeight($h);
    }
    /**
     * 指定最大宽度和最大高度
     * @param int $w 最大宽度
      * @param int $h 最大高度
     */
    function resizeScale($w=0,$h=0){
        if($w == 0 && $h>0){
            return $this->resizeToHeight($h);
        }
        if($h == 0 && $w>0){
            return $this->resizeToWidth($w);
        }
        if($w == 0 && $h==0){
            return false;
        }
        $maxwidth = $w;
        $maxheight = $h;
        
        $width = $this->getWidth();
        $height = $this->getHeight();
        
        $RESIZEWIDTH = $RESIZEHEIGHT = false;
        if($maxwidth && $width > $maxwidth){
            $widthratio = $maxwidth/$width;
            $RESIZEWIDTH=true;
        }
        if($maxheight && $height > $maxheight){
            $heightratio = $maxheight/$height;
            $RESIZEHEIGHT=true;
        }
        if($RESIZEWIDTH && $RESIZEHEIGHT){
            if($widthratio < $heightratio){
                return $this->resizeToWidth($w);
            }else{
                return $this->resizeToHeight($h);
            }
        }elseif($RESIZEWIDTH){
            return $this->resizeToWidth($w);
        }elseif($RESIZEHEIGHT){
            return $this->resizeToHeight($h);
        }
    }
    /**
     * 等比例缩小到指定宽度，并切成方形
     * @param int $v 指定宽度/高度
     */
    function square($v){
        $width = $this->getWidth();
        $height = $this->getHeight();
        $left = 0;
        $top = 0;
        if($width>$height){
            $this->resizeToHeight($v);
            $left = ceil(($v/$height * $width - $v)/2); 
        }else{
            $this->resizeToWidth($v);
            $top = ceil(($v/$width * $height - $v)/2); 
        }
        $this->cut($v,$v,$left,$top);
    }
    /**
     * 等比例缩小到指定宽度
     * @param int $width 指定宽度
     */
    function resizeToWidth($width) {
        if($width>=$this->getWidth()) return;
        $ratio = $width / $this->getWidth();
        $height = $this->getHeight() * $ratio;
        $this->resize($width,$height);
    }

    /**
     * 维持宽高比缩小指定比例
     * @param int $scale 指定比例
     */
    function scale($scale) {
        $width = $this->getWidth() * $scale/100;
        $height = $this->getHeight() * $scale/100;
        $this->resize($width,$height);
    }

    /**
     * 改变图像尺寸
     * @param int $width 指定宽度
     * @param int $height 指定高度
     */
    function resize($width,$height) {
        if($this->true_color){
            $newim = imagecreatetruecolor($width, $height);
            imagecopyresampled($newim, $this->image, 0, 0, 0, 0, $width, $height, $this->getWidth(), $this->getHeight());
        }else{
            $newim = imagecreate($width, $height);
            imagecopyresized($newim, $this->image, 0, 0, 0, 0, $width, $height, $this->getWidth(), $this->getHeight());
        }
        imagedestroy($this->image);
        $this->image = $newim;
    }

    /**
     * 裁剪图像
     *
     * @param int $width 指定宽度
     * @param int $height 指定高度
     */
    function cut($width,$height,$left = 0,$top = 0){
        if($this->true_color){
            $new_image = imagecreatetruecolor($width, $height);
        }else{
            $new_image = imagecreate($width, $height);
        }
        imagecopy($new_image, $this->image, 0, 0, $left, $top, $width, $height);
        imagedestroy($this->image);
        $this->image = $new_image;
    }

    /**
     * 截取从某纵向位置开始指定高度的图像
     *
     * @param int $top 指定位置
     * @param int $height 指定高度
     */
    function vcut($top,$height){
        $width = $this->getWidth();
        $height = $this->getHeight()-$top+$height;
        if($height<200) return;
        if($this->true_color){
            $new_image = imagecreatetruecolor($width, $height);
        }else{
            $new_image = imagecreate($width, $height);
        }
        imagecopy($new_image, $this->image, 0, 0, 0, $top, $width, $height);
        imagedestroy($this->image);
        $this->image = $new_image;
    }

    /**
     * 获取图片EXIF信息
     */
    function GetImageInfo($img) {
        if(!function_exists('exif_read_data')){
            return false;
        }
        $Flash_arr = array(
            0x00 => "关闭",
            0x01 => "开启",
            0x05 => "打开(不探测返回光线)",
            0x07 => "打开(探测返回光线)",
            0x09 => "打开(强制)",
            0x0D => "打开(强制/不探测返回光线)",
            0x0F => "打开(强制/探测返回光线)",
            0x10 => "关闭(强制)",
            0x18 => "关闭(自动)",
            0x19 => "打开(自动)",
            0x1D => "打开(自动/不探测返回光线)",
            0x1F => "打开(自动/探测返回光线)",
            0x20 => "没有闪光功能",
            0x41 => "打开(防红眼)",
            0x45 => "打开(防红眼/不探测返回光线)",
            0x47 => "打开(防红眼/探测返回光线)",
            0x49 => "打开(强制/防红眼)",
            0x4D => "打开(强制/防红眼/不探测返回光线)",
            0x4F => "打开(强制/防红眼/探测返回光线)",
            0x59 => "打开(自动/防红眼)",
            0x5D => "打开(自动/防红眼/不探测返回光线)",
            0x5F => "打开(自动/防红眼/探测返回光线)"
        );

        $exif = @exif_read_data($img,"IFD0");
        if ($exif===false) {
            return false;
        }
        else
        {
            $exif = exif_read_data ($img,0,true);
            if(isset($exif['IFD0'])){
                if(isset($exif['IFD0']['Make'])){
                    $new_img_info["相机品牌"] = $exif['IFD0']['Make'];
                }
                if(isset($exif['IFD0']['Model'])){
                    $new_img_info["相机型号"] = $exif['IFD0']['Model'];
                }
            }
            if(isset($exif['COMPUTED'])){
                if(isset($exif['COMPUTED']['ApertureFNumber'])){
                    $new_img_info["光圈"] = $exif['COMPUTED']['ApertureFNumber'];
                }
            }
            if(isset($exif['EXIF'])){
                if(isset($exif['EXIF']['ExposureTime'])){
                    $new_img_info["快门速度"] = $exif['EXIF']['ExposureTime'];
                }
                if(isset($exif['EXIF']['ExposureMode'])){
                    $new_img_info["曝光模式"] = "手动";
                }else{
                    $new_img_info["曝光模式"] = "自动";
                }
                if(isset($exif['EXIF']['Flash'])){
                    $new_img_info["闪光灯"] = isset($Flash_arr[$exif['EXIF']['Flash']])?$Flash_arr[$exif['EXIF']['Flash']]:'未知';
                }else{
                    $new_img_info["闪光灯"] = '未知';
                }
                if(isset($exif['EXIF']['FocalLength'])){
                    $new_img_info["焦距"] = $exif['EXIF']['FocalLength']."mm";
                }
                if(isset($exif['EXIF']['ISOSpeedRatings'])){
                    $new_img_info["ISO感光度"] = $exif['EXIF']['ISOSpeedRatings'];
                }
                $new_img_info["白平衡"] = (isset($exif['EXIF']['WhiteBalance'])?"手动":"自动");
                if(isset($exif['EXIF']['ExposureBiasValue'])){
                    $new_img_info["曝光补偿"] = $exif['EXIF']['ExposureBiasValue']."EV";
                }
                if(isset($exif['EXIF']['DateTimeOriginal'])){
                    $new_img_info["拍摄时间"] = $exif['EXIF']['DateTimeOriginal'];
                }
            }
        }
        return $new_img_info;
    }

    /*
    * 功能：PHP图片水印 (水印支持图片或文字)
    * 参数：
    * $waterPos 水印位置，有10种状态，0为随机位置；
    * 1为顶端居左，2为顶端居中，3为顶端居右；
    * 4为中部居左，5为中部居中，6为中部居右；
    * 7为底端居左，8为底端居中，9为底端居右；
    */
    function waterMark($waterImage="",$waterPos=9){
        //读取水印文件
        if(empty($waterImage) || !file_exists($waterImage)){
            return false;
        }
        $water_info = getimagesize($waterImage);
        $w = $water_info[0];//取得水印图片的宽
        $h = $water_info[1];//取得水印图片的高
        switch($water_info[2])//取得水印图片的格式
        {
            case 1:$water_im = imagecreatefromgif($waterImage);break;
            case 2:$water_im = imagecreatefromjpeg($waterImage);break;
            case 3:$water_im = imagecreatefrompng($waterImage);break;
            default:return false;
        }
        $ground_w = $this->getWidth();
        $ground_h = $this->getHeight();
        
        if( $ground_w<$w || $ground_h<$h ){
            return false;
        }
        switch($waterPos)
        {
            case 0://随机
            $posX = rand(0,($ground_w - $w));
            $posY = rand(0,($ground_h - $h));
            break;
            case 1://1为顶端居左
            $posX = 0;
            $posY = 0;
            break;
            case 2://2为顶端居中
            $posX = ($ground_w - $w) / 2;
            $posY = 0;
            break;
            case 3://3为顶端居右
            $posX = $ground_w - $w;
            $posY = 0;
            break;
            case 4://4为中部居左
            $posX = 0;
            $posY = ($ground_h - $h) / 2;
            break;
            case 5://5为中部居中
            $posX = ($ground_w - $w) / 2;
            $posY = ($ground_h - $h) / 2;
            break;
            case 6://6为中部居右
            $posX = $ground_w - $w;
            $posY = ($ground_h - $h) / 2;
            break;
            case 7://7为底端居左
            $posX = 0;
            $posY = $ground_h - $h;
            break;
            case 8://8为底端居中
            $posX = ($ground_w - $w) / 2;
            $posY = $ground_h - $h;
            break;
            case 9://9为底端居右
            $posX = $ground_w - $w;
            $posY = $ground_h - $h;
            break;
            default://随机
            $posX = rand(0,($ground_w - $w));
            $posY = rand(0,($ground_h - $h));
            break;
        }
        //设定图像的混色模式
        imagealphablending($this->image, true);
        imagecopy($this->image, $water_im, $posX, $posY, 0, 0, $w,$h);//拷贝水印到目标文件
        imagedestroy($water_im);
    }
}