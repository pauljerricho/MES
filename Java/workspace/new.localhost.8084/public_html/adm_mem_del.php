<?php 
require_once("$_SERVER[DOCUMENT_ROOT]/../lib/lib_road.inc");
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>PHP 프로그래밍 입문</title>
</head>
<body>
<?php 
$lib->lib_fun("session_start_print");
$session_start_print->session_start_print_();

if(isset($_SESSION["userlevel"])){
    $userlevel = $_SESSION["userlevel"];
}else{
    $userlevel ="";
}

$lib->lib_fun("message");
if($userlevel != 1){
    $message->message_("관리자가 아닙니다.","history.back();","exit");
}

$num =$_GET['num'];

$lib->lib_fun("value_check2");
if(!$value_check2->value_check2_(array($num),"")){
    $message->message_("인자가 부족하여 처리할 수 없습니다.","history.back();","exit");
}

$lib->lib_fun("db_connect");
$db_connect->db_connect_();

$lib->lib_fun("dbi_delete");
$sql = $dbi_delete->dbi_delete_("members","num='$num'");

$db_connect->db_close();

if($sql){
    $message->message_("삭제 중 오류가 발생했습니다.","history.back();","exit");
}
$message->nomessage_("location.href='admin_member.php';","exit");
?>
</body>
</html>