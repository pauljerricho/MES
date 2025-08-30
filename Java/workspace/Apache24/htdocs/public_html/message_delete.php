<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<?php 
    $num = $_GET["num"];
    $mode = $_GET["mode"];
    
    include '../inc_con/db_connect.php';
    $sql = "delete from message where num=$num";
    mysqli_query($con,$sql);
    
    mysqli_close($con);
    
    if($mode == "send")
        $url = "message_box.php?mode=send";
    else 
        $url = "message_box.php?mode=rv";
    
    echo "
        <script>
            location.href= '$url';
        </script>
        ";
?>
</body>
</html>