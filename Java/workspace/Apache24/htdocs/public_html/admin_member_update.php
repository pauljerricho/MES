<?php 
session_start();
if(isset($_SESSION['userlevel'])) $userlevel = $_SESSION['userlevel'];
else $userlevel ="";

if($userlevel != 1){
    echo ("
        <script>
        alert('관리자가 아닙니다! 회원정보 수정은 관리자만 가능합니다.');
        history.back();
        </script>
    ");
    exit;
}

$num = $_POST['num'];
$level = $_POST['level'];
$point = $_POST['point'];

include '../inc_con/db_connect.php';
$sql = "update members set level='$level', point='$point' where num='$num'";
mysqli_query($con,$sql);
mysqli_close($con);
?>
<script>
location.href='admin.php';
</script>