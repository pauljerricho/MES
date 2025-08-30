<?php 
require_once("$_SERVER[DOCUMENT_ROOT]/../lib/lib_road.inc");
?>
<!DOCTYPE html>
<html>
<head> 
<meta charset="utf-8">
</head>
<body>
<?php 
$lib->lib_fun("session_chk");
$session_chk->session_chk_(array($_SESSION['userid']),"로그인해주세요.","location.href='/index.php';","");

$userid = $_SESSION['userid'];
$pass = $_POST['pass'];
$name = $_POST['name'];
$email1 = $_POST['email1'];
$email2 = $_POST['email2'];

$lib->lib_fun("message");
$lib->lib_fun("value_check2");
if(!$value_check2->value_check2_(array($userid,$pass,$name,$email1,$email2))){
    $message->message_("인자가 부족하여 처리 할 수 없습니다.","history.back()","exit");
}


$email = $email1."@".$email2;

$lib->lib_fun("db_connect");
$db_connect->db_connect_();

$lib->lib_fun("dbi_update");
$sql = $dbi_update->dbi_update_("members","pass='$pass',name='$name',email='$email'","id='$userid'");

$db_connect->db_close();
if($sql){
    $message->message_("입력 중 오류가 발생되었습니다.","history.back();","exit");
}

$message->nomessage_("location.href='index.php';","exit");
?>
</body>
</html>