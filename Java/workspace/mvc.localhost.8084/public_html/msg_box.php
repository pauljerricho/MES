<!DOCTYPE html>
<html>
<head> 
<meta charset="utf-8">
<title>MYUNGLI 실습예제</title>
<?php include "head.php";?>
<?php include "head_list.php";?>
<script src="/trans_js/?mod=list"></script>
<link rel="stylesheet" type="text/css" href="./css/msg.css">
</head>
<body> 
<header>
    <?php include "header.php";?>
</header>  
<section class="fontstyle">
   	<div id="msg_box">
	    <h3>송신 메시지함</h3>
	    <div>
	    	<table id="mytable">
	    		<colgroup>
	    			<col width="10%">
	    			<col width="54%">
	    			<col width="16%">
	    			<col width="20%">
	    		</colgroup>
				<thead>
				<tr>
					<th class="col1">번호</th>
					<th class="col2">제목</th>
					<th class="col3">받은이</th>
					<th class="col4">등록일</th>
				</tr>
				</thead>
				<tbody></tbody>
	    	</table>  	
			<ul class="buttons">
				<li><button class="fontstyle" onclick="location.href='msg_box.php?mode=rv'">수신 메시지함</button></li>
				<li><button class="fontstyle" onclick="location.href='msg_box.php?mode=send'">송신 메시지함</button></li>
				<li><button class="fontstyle" onclick="location.href='msg_form.php'">메시지 전송</button></li>
			</ul>
		</div>
	</div> <!-- msg_box -->
</section> 
<footer>
    <?php include "footer.php";?>
</footer>
</body>
</html>
