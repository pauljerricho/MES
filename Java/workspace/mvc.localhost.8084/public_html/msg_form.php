<!DOCTYPE html>
<html>
<head> 
<meta charset="utf-8">
<title>MYUNGLI 실습예제</title>
<?php include "head.php";?>
<script src="/trans_js/?mod=write"></script>
<link rel="stylesheet" type="text/css" href="./css/msg.css">
</head>
<body> 
<header>
    <?php include "header.php";?>
</header>
<section class="fontstyle">	
   	<div id="msg_box">
	    <h3 id="write_title">
	    		메시지 보내기
		</h3>
		<ul class="top_buttons">
			<li><span><a href="msg_box.php?mode=rv">수신 메시지함 </a></span></li>
			<li><span><a href="msg_box.php?mode=send">송신 메시지함</a></span></li>
		</ul>
    	<div id="write_msg">
    	    <ul>
				<li>
					<span class="col1">보내는 사람 : </span>
					<span class="col2">userid</span>
				</li>	
				<li>
					<span class="col1">수신 아이디 : </span>
					<span class="col2"><input name="rv_id" type="text" class="fontstyle" placeholder = "관리자의 닉네임은 test입니다"></span>
				</li>	
	    		<li>
	    			<span class="col1">제목 : </span>
	    			<span class="col2"><input name="subject" type="text" class="fontstyle" ></span>
	    		</li>	    	
	    		<li id="text_area">
	    			<span class="col1">내용 : </span>
	    			<span class="col2">
	    				<textarea name="content" class="fontstyle"></textarea>
	    			</span>
	    		</li>
    	    </ul>
    	    <button type="button" class="fontstyle">보내기</button>
    	</div>
	</div> <!-- msg_box -->
</section> 
<footer>
    <?php include "footer.php";?>
</footer>
</body>
</html>