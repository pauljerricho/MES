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
$id = $_POST['id'];
$pass = $_POST['pass'];

$lib->lib_fun("message");
$lib->lib_fun("value_check2");
if(!$value_check2->value_check2_(array($id,$pass))){
    $message->message_("인자가 부족하여 사용할 수 없습니다","history.back();","exit");
}

$lib->lib_fun("db_connect");
$db_connect->db_connect_();

$lib->lib_fun("data_ione_row_return");
$row = $data_ione_row_return->data_ione_row_return_("*","members","id='$id'","","");

$db_connect->db_close();
if(!$row['id']){
    $message->message_("등록되지 않은 아이디입니다.","history.back();","exit");
}else{
    if($pass != $row['pass']){
        $message->message_("비밀번호가 틀립니다.","history.back();","exit");
    }else{
       $lib->lib_fun("session_start_print");
       $session_start_print->session_start_print_();
       
       $_SESSION['userid'] = $row['id'];
       $_SESSION['username'] = $row['name'];
       $_SESSION['userlevel'] = $row['level'];
       $_SESSION['userpoint'] = $row['point'];
       
       $message->nomessage_("location.href='index.php';","exit");
    }
}
?>


</body>
</html>