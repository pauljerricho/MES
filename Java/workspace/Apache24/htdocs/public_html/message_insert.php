<meta charset="utf-8">
<?php 
session_start();

$send_id = $_SESSION["userid"];
$rv_id = $_POST["rv_id"];

$subject = htmlspecialchars($_POST['subject'], ENT_QUOTES);
$content = htmlspecialchars($_POST['content'], ENT_QUOTES);

$regist_day = date("Y-m-d (H:i)");  //현재의 연월일시분 저장

if (!$send_id) {
    echo ("
    <script>
        alert('로그인 후 이용해주세요!');
        history.back();
    </script>
    ");
    exit;
}else{
include '../inc_con/db_connect.php';
$sql = "select * from members where id ='$rv_id'";
$result = mysqli_query($con,$sql);
$num_record = mysqli_num_rows($result);

if($num_record)
{
    $sql = "insert into message(send_id, rv_id, subject, content, regist_day)";
    $sql .= "values('$send_id','$rv_id','$subject','$content','$regist_day')";
    mysqli_query($con,$sql);
}
else{
    echo ("
    <script>
        alert('수신인 아이디가 잘못되었습니다.');
        history.back();
    </script>
");
    exit;
}
}

mysqli_close();

echo ("
    <script>
        location.href = 'message_box.php?mode=send';
    </script>
");
?>