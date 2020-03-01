<?php
class snlonGuestbook{
   var $messageDir = 'messages';
   var $dateFormat = 'Y-m-d g:i:s A';
   var $itemsPerPage = 5;
   var $messageList;
   
function processGuestbook(){
   if (isset($_POST['submit'])) {
      $this->insertMessage();
  echo "<script language=\"javascript\">alert('添加成功');history.go(-1)</script>";
   }
   $page = isset($_GET['page']) ? $_GET['page'] : 1;
   
   $this->displayGuestbook($page);
}
   
function getMessageList(){
	
   $this->messageList = array();
   
	// Open the actual directory
	if ($handle = @opendir($this->messageDir)) {
		// Read all file from the actual directory
		while ($file = readdir($handle))  {
		    if (!is_dir($file)) {
		       $this->messageList[] = $file;
      	}
		}
	}	
	
	rsort($this->messageList);
	
	return $this->messageList;
}   

function displayGuestbook($page=1){
      $list = $this->getMessageList();
     
      //Get start point and end point
      $startItem = ($page-1)*$this->itemsPerPage;
      if (($startItem + $this->itemsPerPage) > sizeof($list)) $endItem = sizeof($list);
      else $endItem = $startItem + $this->itemsPerPage; 
      
      for ($i=$startItem;$i<$endItem;$i++){
         //foreach ($list as $value) {
         $value = $list[$i];
      	$data = file($this->messageDir.DIRECTORY_SEPARATOR.$value);
      	$name  = trim($data[0]);
      	$email = trim($data[1]);
      	$homepage = trim($data[2]);
         $submitDate = trim($data[3]);	
         unset ($data['0']);
         unset ($data['1']);
         unset ($data['2']);
         unset ($data['3']);
      	
         $content = "";
         foreach ($data as $value) {
    	       $content .= $value;
         }
	
      	echo "<table width=\"450\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" >";	
      	echo "<tbody><tr><td width=\"75\" align=\"center\" class=\"DG2\" style=\"color:#666666 ;font-weight:bold\"><font class=\"EFONT\" >$name</font>:</td>";		
      	echo "<td rowspan=\"3\" class=\"font\" style=\"color:#666666 \" >".nl2br(htmlspecialchars($content))."</td> ";	
      	echo "</tr><tr></tr>";	
      	echo "</tbody></table></td></tr>";	
      	echo "<tr><td><table width=\"450\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" height=\"34\" style=\" border-bottom:1px #FF9900 dashed; padding-bottom:5px; margin-bottom:5px; \">";	
      	echo "<tbody><tr><td width=\"75\" class=\"titel\" class=\"font\"  ></td>";	
      	echo "<td class=\"titel\" valign=\"middle\" width=\"37\"><div align=\"center\"><font color=\"#562CAD\" class=\"EFONT\">";	
      	echo "</font><font class=\"EFONT\" color=\"#663300\"><span class=\"titel\" style=\"color:#FF9900 \"><font face=\"Verdana, Arial, Helvetica, sans-serif\">IP：</font></span></font></div></td>";	
      	echo "<td class=\"font1\" width=\"46\" valign=\"middle\">";	
      	echo "<div align=\"center\"><font font=\"\" color=\"#000000\" class=\"EFONT\" style=\"color:#666666 \">";	
      	echo "192.168.5.1";	
      	echo "</font></div></td><td width=\"230\" valign=\"middle\" class=\"titel\">";
      	echo "<div align=\"center\"><font color=\"#562CAD\" class=\"EFONT\">";
      	echo "</font><font color=\"#663300\" class=\"EFONT\"><span class=\"titel\" style=\"color:#FF9900 \"><font face=\"Verdana, Arial, Helvetica, sans-serif\">Time：</font></span></font><font color=\"#000000\" class=\"EFONT\" style=\"color:#666666 \">";
      	echo "$submitDate";
      	echo "</font></div></td></tr></tbody></table>";
      	echo "<table width=\"450\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"></table>";
      	echo "</td></tr></tbody></table><span></span>";
      }
      if (sizeof($list) == 0){
         echo "暂时还没有留言!";
      }

      // Create pagination
      if (sizeof($list) > $this->itemsPerPage){
         if ($startItem == 0) {
            if ($endItem < sizeof($list)){

	echo "<table border=\"0\" width=\"450\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" bgcolor=\"#D2D2D2\">";
	echo "<tbody><tr>";
	echo "<td valign=\"bottom\" class=\"font2\" align=\"center\"><span class=\"EFONT\"><font class=\"EFONT\">";
	echo "<font color=\"#CCCCCC\">";
  echo "<a href=\"".$_SERVER['PHP_SELF']."?page=".($page+1)."\" ><font face=\"Verdana, Arial, Helvetica, sans-serif\">下一页 &raquo;</font> </a>";
  	echo "</font></font></span></td></tr></tbody></table></span></span></span></span></span></span></span></td></tr>";
	echo "</tbody></table>";
            } else {
               // Nothing to display
            }
         } else {
            if ($endItem < sizeof($list)){
					echo "<table border=\"0\" width=\"450\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" bgcolor=\"#D2D2D2\">";
	echo "<tbody><tr>";
	echo "<td valign=\"bottom\" class=\"font2\" align=\"center\"><span class=\"EFONT\"><font class=\"EFONT\">";
	echo "<font color=\"#CCCCCC\">";
               echo "<a href=\"".$_SERVER['PHP_SELF']."?page=".($page-1)."\" ><font face=\"Verdana, Arial, Helvetica, sans-serif\">&laquo; 前一页</font></a>";
             echo "&nbsp;&nbsp;&&nbsp;&nbsp;";
               echo "<a href=\"".$_SERVER['PHP_SELF']."?page=".($page+1)."\" ><font face=\"Verdana, Arial, Helvetica, sans-serif\">下一页 &raquo;</font></a>";
			     	echo "</font></font></span></td></tr></tbody></table></span></span></span></span></span></span></span></td></tr>";
	echo "</tbody></table>";
            } else {
								echo "<table border=\"0\" width=\"450\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"  style=\" background:#c0c0c0; padding:5px 0; \">";
	echo "<tbody><tr>";
	echo "<td valign=\"bottom\" class=\"font2\" align=\"center\"><span class=\"EFONT\"><font class=\"EFONT\">";
	echo "<font color=\"#CCCCCC\">";
               echo "<a href=\"".$_SERVER['PHP_SELF']."?page=".($page-1)."\" ><font face=\"Verdana, Arial, Helvetica, sans-serif\">&laquo; 前一页</font></a>";
	echo "</font></font></span></td></tr></tbody></table></span></span></span></span></span></span></span></td></tr>";
	echo "</tbody></table>";
            }
         }
      }
      $this->displayAddForm();
}

function displayAddForm(){
?>  
<SCRIPT language=javascript>
function CheckPost()
{
	if (myform.name.value=="")
	{
		alert("请填写用户名");
		myform.name.focus();
		return false;
	}
	if (myform.email.value.length<5)
	{
		alert("email不能少于5个字符");
		myform.email.focus();
		return false;
	}
	if (myform.message.value=="")
	{
		alert("必须要填写留言内容");
		myform.message.focus();
		return false;
	}
}
</SCRIPT>
  <form action="<?php echo $_SERVER['PHP_SELF']; ?>" name="myform" method="post">
<TABLE border=0 width=450 background=留言本_files/guestbook.htm align=center style="margin-top:5px;">
<TBODY>
  <TR>
    
    <TD>
      <TABLE class=font border=0 cellSpacing=0 cellPadding=0 width=380  style="margin-top:10px;">
        <TBODY>
        <TR>
          <TD height=25 width=104>
            <DIV align=center>昵 称 ：</DIV></TD>
          <TD width="276" height=25 colSpan=2><INPUT class=an maxLength=15 name=name> <FONT color=#ff0000>*</FONT></TD></TR>
        <TR>
          <TD height=25 width=104>
            <DIV align=center>信 箱 ：</DIV></TD>
          <TD height=25 colSpan=2><INPUT class=an maxLength=50 size=25 name=email> <FONT 
            color=#ff0000>*</FONT></TD>
        </TR>
        </TBODY></TABLE>
      <TABLE class=font border=0 cellSpacing=0 cellPadding=0 width=400 align=center style="margin-top:5px;">
        <TBODY>
        <TR>
          <TD colSpan=3>
            <DIV align=center> 留 言 内 容</DIV></TD></TR>
        <TR>
          <TD height=140 width=25>&nbsp;</TD>
          <TD height=140 vAlign=center width=350>
            <DIV align=center><TEXTAREA  class=an wrap=PHYSICAL rows=10 cols=58 name=message></TEXTAREA> 
            </DIV></TD>
          <TD height=140 width=25>
           </TD></TR></TBODY></TABLE>
      <TABLE border=0 cellSpacing=0 cellPadding=0 width=450 align=center 
      height=40>
        <TBODY>
        <TR>
          <TD class=font align=middle><SPAN><INPUT  class=button onclick=datacheck value=提交 type=submit name=submit> 
            </SPAN><SPAN></SPAN></TD>
          <TD class=font align=middle></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
   
  </form>
<?php   
}

function insertMessage(){
   $name   = isset($_POST['name']) ? $_POST['name'] : '匿名';
   $email  = isset($_POST['email']) ? $_POST['email'] : '';
   $homepage  = isset($_POST['homepage']) ? $_POST['homepage'] : '';
   $submitDate  = date($this->dateFormat);
   $content = isset($_POST['message']) ? $_POST['message'] : '';
   
   if (trim($name) == '') $name = 'Anonymous';
   if (strlen($content)<5) {
      exit();
   }
   
   $filename = date('YmdHis');
   if (!file_exists($this->messageDir)){
      mkdir($this->messageDir);
   }
   $f = fopen($this->messageDir.DIRECTORY_SEPARATOR.$filename.".txt","w+");         
   fwrite($f,$name."\n");
   fwrite($f,$email."\n");
   fwrite($f,$homepage."\n");
   fwrite($f,$submitDate."\n");
   fwrite($f,$content."\n");
   fclose($f);
   
}
}
?>