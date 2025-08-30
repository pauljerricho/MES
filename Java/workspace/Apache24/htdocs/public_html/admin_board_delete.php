<?php 
session_start();
if(isset($_SESSION['userlevel'])) $userlevel = $_SESSION['userlevel'];
else $userlevel = "";

if($userlevel != 1){
    echo ("<script>alert('관리자가 아닙니다. 게시글삭제는 관리자만 가능합니다.');history.back()</script>");
    exit;
}
if(isset($_POST['item'])){
$num_item = count($_POST['item']);
}else{
    echo("<script>삭제할 게시글을 선택해주세요.;history.back();</script>");
}

include '../inc_con/db_connect.php';
for($i=0;$i<$num_item;$i++){
    $num = $_POST['item'][$i]; //배열 쓰는 곳!
    
    $sql = "select * from board where num='$num'";
    $result = mysqli_query($con,$sql);
    $row = mysqli_fetch_array($result);
    $copied_name = $row['file_copied'];
    if($copied_name){
        $file_path = "./data/".$copied_name;
        unlink($file_path);
    }
    
    $sql2 = "delete from board where num='$num'";
    mysqli_query($con,$sql2);
}
    mysqli_close($con);
?>

<script>location.href='admin.php'</script>