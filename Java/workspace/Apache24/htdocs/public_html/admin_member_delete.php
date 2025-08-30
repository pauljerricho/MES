<?php 
session_start();
if(isset($_SESSION['userlevel'])) $userlevel = $_SESSION['userlevel'];
else $userlevel = "";

if($userlevel != 1){
    echo ("<script>alert('관리자가 아닙니다. 회원삭제는 관리자만 가능합니다.');history.back()</script>");
    exit;
}

$num = $_GET['num'];

include '../inc_con/db_connect.php';
$sql = "delete from members where num='$num'";
mysqli_query($con,$sql);
mysqli_close($con);
?>

<script>location.href='admin.php'</script>