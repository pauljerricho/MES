<!DOCTYPE html>
<html>
<head> 
<meta charset="utf-8">
<title>20대선 가상 사이트</title>
<link rel="stylesheet" type="text/css" href="./css/common.css">
<link rel="stylesheet" type="text/css" href="./css/message.css">
<script type="text/javascript" src="./js/message_form.js"></script>
</head>
<body> 
<header>
    <?php include "header.php";?>
</header>
<?php 
if(!$userid){
    echo ("
    <script>
        alert('로그인을 해주세요');
        history.back();
    </script>
    ");
exit;
}
?>
<section>
	<div id="main_img_bar">
        <img src="./img/main_img.png">
    </div>
   	<div id="message_box">
	    <h3 id="write_title">
	    		쪽지 보내기
		</h3>
		<ul class="top_buttons">
				<li><span><a href="message_box.php?mode=rv">수신 쪽지함 </a></span></li>
				<li><span><a href="message_box.php?mode=send">송신 쪽지함</a></span></li>
		</ul>
		<form action="message_insert.php" name="message_form" method="post">
	    	<div id="write_msg">
	    	    <ul>
				<li>
					<span class="col1">보내는 사람 : </span>
					<span class="col2"><?=$userid?></span>
				</li>	
				<li>
					<span class="col1">수신 아이디 : </span>
					<span class="col2"><input name="rv_id" type="text"></span>
				</li>	
	    		<li>
	    			<span class="col1">제목 : </span>
	    			<span class="col2"><input name="subject" type="text"></span>
	    		</li>	    	
	    		<li id="text_area">	
	    			<span class="col1">내용 : </span>
	    			<span class="col2">
	    				<textarea name="content">이 헌법은 1988년 2월 25일부터 시행한다. 다만, 이 헌법을 시행하기 위하여 필요한 법률의 제정·개정과 이 헌법에 의한 대통령 및 국회의원의 선거 기타 이 헌법시행에 관한 준비는 이 헌법시행 전에 할 수 있다.
모든 국민은 종교의 자유를 가진다. 대통령으로 선거될 수 있는 자는 국회의원의 피선거권이 있고 선거일 현재 40세에 달하여야 한다. 감사원의 조직·직무범위·감사위원의 자격·감사대상공무원의 범위 기타 필요한 사항은 법률로 정한다.
국가안전보장회의의 조직·직무범위 기타 필요한 사항은 법률로 정한다. 국가는 재해를 예방하고 그 위험으로부터 국민을 보호하기 위하여 노력하여야 한다.</textarea>
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
