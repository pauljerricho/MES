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
$lib->lib_fun("session_start_print");
$session_start_print->session_start_print_();

unset($_SESSION['userid']);
unset($_SESSION['username']);
unset($_SESSION['userlevel']);
unset($_SESSION['userpoint']);

$lib->lib_fun('message');
$message->nomessage_("location.href='index.php'","exit");

?>
</body>
</html>