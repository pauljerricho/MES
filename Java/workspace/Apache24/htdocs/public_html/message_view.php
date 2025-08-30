<!DOCTYPE html>
<html>
<head> 
<meta charset="utf-8">
<title>PHP 프로그래밍 입문</title>
<link rel="stylesheet" type="text/css" href="./css/common.css">
<link rel="stylesheet" type="text/css" href="./css/message.css">
</head>
<body> 
<header>
    <?php include "header.php";?>
</header>  
<section>
	<div id="main_img_bar">
        <img src="./img/main_img.png">
    </div>
   	<div id="message_box">
	    <h3 class="title">송신 쪽지함 > 목록보기
	    <?php 
	    $mode = $_GET["mode"];
	    $num = $_GET["num"];
	    
	    
	    include '../inc_con/db_connect.php';
	    $sql = "select * from message where num = $num";
	    $result = mysqli_query($con, $sql);
	    
	    $row = mysqli_fetch_array($result);
	    $send_id = $row["send_id"];
	    $rv_id = $row["rv_id"];
	    $regist_day = $row["regist_day"];
	    $subject = $row["subject"];
	    $content = $row["content"];
	    
	    $content = str_replace(" ", "&nbsp;" , $content);
	    $content = str_replace("\n", "<br>" , $content);
	    if($mode == "send")
	        $result2 = mysqli_query($con, "select name from members where id = '$rv_id'");
	    else 
	        $result2 = mysqli_query($con, "select name from members where id = '$send_id'");
	    
	    $record = mysqli_fetch_array($result2);
	    $msg_name = $record["name"];
	    
	    if($mode=="send"){
	        echo("<h3 class='title'>송신 쪽지함 > 내용보기</h3>");
	    }else{
	        echo("<h3 class='title'>수신 쪽지함 > 내용보기</h3>");
	    }
	    ?>
		</h3>
	    <ul id="view_content">
			<li>
				<span class="col1"><b>제목 :</b> <?=$subject?></span>
				<span class="col2"><?=$msg_name?> | <?=$regist_day?></span>
			</li>
			<li>
				<?=$content?>
			</li>		
	    </ul>
	    <ul class="buttons">
			<li><button onclick="location.href='message_box.php?mode=rv'">수신 쪽지함</button></li>
			<li><button onclick="location.href='message_box.php?mode=send'">송신 쪽지함</button></li>
			<li><button onclick="location.href='message_response_form.php?num=<?=$num?>'">답변 쪽지</button></li>
			<li><button onclick="location.href='message_delete.php?num=<?=$num?>&mode=<?=$mode?>'">삭제</button></li>
		</ul>
	</div> <!-- message_box -->
</section> 
<footer>
    <?php include "footer.php";?>
</footer>
</body>
</html>
