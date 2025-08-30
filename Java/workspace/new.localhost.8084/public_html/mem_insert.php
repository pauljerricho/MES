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
$id = $_POST['id'];
$pass = $_POST['pass'];
$name = $_POST['name'];

$email1 = $_POST['email1'];
$email2 = $_POST['email2'];

$lib->lib_fun("message");
$lib->lib_fun("value_check2");
if(!$value_check2->value_check2_(array($id,$pass,$name,$email1,$email2))){
//     echo ("$id,$pass,$name,$email1,$email2");
    $message->message_("인자가 부족하여 처리할 수 없습니다.","//history.back();","exit");
}

$email = $email1."@".$email2;
$regist_day = date("Y-m-d (H:i)");

$lib->lib_fun("db_connect");
$db_connect->db_connect_();

$lib->lib_fun("dbi_insert");
$sql = $dbi_insert->dbi_insert_("members","id,pass,name,email,regist_day,level,point","'$id','$pass','$name','$email','$regist_day','9','0'");
if($sql){
    $message->message_("입력 중 오류가 발생했습니다.","history.back();","exit");
}

$db_connect->db_close();

$message->nomessage_("location.href='index.php';","exit");
?> 
</body>