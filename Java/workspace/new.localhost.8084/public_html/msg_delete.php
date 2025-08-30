<?php
require_once("$_SERVER[DOCUMENT_ROOT]/../lib/lib_road.inc");
?>
<!DOCTYPE html>
<html>
<head> 
<meta charset="utf-8">
<title>MYUNGLI 실습예제</title>
</head>
<body>
<?php 
$num = $_GET['num'];
$mode = $_GET['mode'];

$lib->lib_fun("message");
$lib->lib_fun("value_check2");
if(!$value_check2->value_check2_(array($num,$mode))){
    $message->message_("인자가 부족하여 처리할수 없습니다","history.back();","exit");
}
$lib->lib_fun("session_chk");
$session_chk->session_chk_(array($_SESSION['userid']),"로그인해주세요!","location.href='/index.php';","");

$lib->lib_fun("db_connect");
$db_connect->db_connect_();

$lib->lib_fun("dbi_delete");
$dbi_delete->dbi_delete_("message","num='$num'");
$db_connect->db_close();

if($sql){
    $message->message_("삭제중 오류가 발생했습니다.","history.back();","exit");
}
if($mode == "send"){
    $message->nomessage_("location.href='msg_box.php?mode=send'","exit");
}else{
    $message->nomessage_("location.href='msg_box.php?mode=rv'","exit");
}
?>
</body>
</html>