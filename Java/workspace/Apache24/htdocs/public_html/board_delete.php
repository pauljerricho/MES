<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<?php 
session_start();
if(isset($_SESSION['userid'])) $userid = $_SESSION['userid'];
else $userid = "";

if(isset($_SESSION['username'])) $username = $_SESSION['username'];
else $username = "";

if(!$userid or !$username) {
    echo ("
        <script>
        alert('게시판 삭제는 로그인 후 이용해주세요.');
        history.back();
        </script>
    ");
    exit;
}

$num = $_GET['num'];
$page = $_GET['page'];

include '../inc_con/db_connect.php';
$sql = "select * from board where num='$num'";
$result = mysqli_query($con,$sql);
$row = mysqli_fetch_array($result);

if($row['copied_name']){
    unlink("./data/".$row['copied_name']);
}

$sql2 = "delete from board where num='$num'";
mysqli_query($con,$sql2);
mysqli_close($con);
?>
<script type="text/javascript">location.href='board_list.php?page=<?=$page?>'</script>
</body>
</html>

