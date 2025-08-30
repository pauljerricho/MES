<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<?php 
session_start();
if($_SESSION['userid']) $userid = $_SESSION['userid'];
else $userid = "";

if($_SESSION['username']) $username = $_SESSION['username'];
else $username = "";

if(!$userid or !$username){
    echo ("
        <script>
        alert('게시판 수정은 로그인 후 이용해주세요.');
        history.back();
        </script>
    ");
    exit;
}

$num = $_POST['num'];
$page = $_POST['page'];
$subject = $_POST['subject'];
$content = $_POST['content'];

include '../inc_con/db_connect.php';
$sql = "update board set subject='$subject' , content='$content' where num='$num'";
mysqli_query($con,$sql);
?>
<script type="text/javascript">location.href='board_list.php?page=<?=$page?>'</script>
</body>
</html>