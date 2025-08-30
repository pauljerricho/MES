<!DOCTYPE html>
<html>
<head> 
<meta charset="utf-8">
<title>PHP 프로그래밍 입문</title>
<link rel="stylesheet" type="text/css" href="./css/common.css">
<link rel="stylesheet" type="text/css" href="./css/message.css">
<script type="text/javascript" src="./js/message_form_response.js"></script>
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
	    <h3 id="write_title">
	    		답변 쪽지 보내기
		</h3>
		<?php 
		include '../inc_con/db_connect.php';
		$num = $_GET['num'];
		
		$sql = "select * from message where num=$num";
		$result = mysqli_query($con,$sql);
		
		$row = mysqli_fetch_array($result);
		$send_id = $row["send_id"];
		$rv_id = $row["rv_id"];
		$subject = $row["subject"];
		$content = $row["content"];
		
		$subject = "RE :".$subject;
		
		$content = "> ".$content;
		$content = str_replace("\n", "\n>", $content);
		$content = "\n\n\n------------------------------------------\n".$content;
		
		$sql2 = "select name from members where id = '$send_id'";
		$result2 = mysqli_query($con,$sql2);
		$record = mysqli_fetch_array($result2);
		$send_name = $record["name"];
		?>
			<form name="message_form" method="post" action="message_insert.php?send_id=<?=$userid?>">
	    	<input type="hidden" name="rv_id" value="<?=$send_id?>">
	    	<div id="write_msg">
	    	    <ul>
				<li>
					<span class="col1">보내는 사람 : </span>
					<span class="col2"><?=$userid?></span>
				</li>	
				<li>
					<span class="col1">수신 아이디 : </span>
					<span class="col2"><?=$send_name?>(<?=$send_id?>)</span>
				</li>	
	    		<li>
	    			<span class="col1">제목 : </span>
	    			<span class="col2"><input name="subject" type="text" value="<?=$subject?>"></span>
	    		</li>	    	
	    		<li id="text_area">	
	    			<span class="col1">글 내용 : </span>
	    			<span class="col2">
	    				<textarea name="content"><?=$content?></textarea>
	    			</span>
	    		</li>
	    	    </ul>
	    	    <button type="button" onclick="check_input()">보내기</button>
	    	</div>
	    	</form>
	</div> <!-- message_box -->
</section> 
<footer>
    <?php include "footer.php";?>
</footer>
</body>
</html>
