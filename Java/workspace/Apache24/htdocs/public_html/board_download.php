<?php 
$num = $_GET['num'];
include '../inc_con/db_connect.php';
$sql = "select * from board where num=$num";
$reilt = mysqli_query($con,$sql);
$row = mysqli_fetch_array($result);

$ie = preg_match('~MSIE|Internet Explorer~i', $_SERVER['HTTP_USER_AGENT']) || 
(strpos($_SERVER['HTTP_USER_AGENT'], 'Trident/7.0') !== false && strpos($_SERVER['HTTP_USER_AGENT'], 'rv:11.0') !== false);

if($ie){
    $row['file_name'] = iconv('utf-8','euc-kr',$row['file_name']);
}

$file_path = "./data/".$row['file_copied'];
if(file_exists($file_path)){
    $fp = fopen($file_path, "rb");
    Header("Content-type: application/x-msdownload");
    Header("Content-Length: ".filesize($file_path));
    Header("Content-Disposition: attachment; filename=".$row['file_name']);
    Header("Content-Transfer-Encoding : binary");
    Header("Content-Description: File Transfer");
    Header("Expires: 0");
}

    if(!fpassthru($fp))
    fclose($fp);
?>