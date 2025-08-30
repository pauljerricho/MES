<!DOCTYPE html>
<head>
<meta charset="utf-8">
<style>
h3 {
	padding-left: 5px;
	border-left: solid 5px #edbf07;
}

#close {
	margin: 20px 0 0 80px;
	cursor: pointer;
}
</style>
</head>

<body>
	<h3>아이디 중복체크</h3>
	<p>
	
<?php 
$id=$_GET['id'];

if(!$id){ 
    echo("<li>아이디를 입력해주세요</li>"); 
}else{
    include "../inc_con/db_connect.php";
    $sql = "select * from members where id='$id'";
    $result = mysqli_query($con,$sql);
    if($result){
    $num_record = mysqli_num_rows($result);
    } 
    
    if($num_record){
        echo("
            <li>$id 아이디는 중복됩니다.</li>
            <li>다른 아이디를 사용해주세요.</li>
            ");
    }else{
        echo ("
            <li><a href=\"javascript:opener.myform.value='$id';self.close();\">$id 아이디는 사용가능합니다.</a></li>
            ");
    }
}
?>
	</p>
	<div id="close">
		<img src="./img/close.png" onclick="self.close();">
	</div>
</body>
</html>