<!DOCTYPE html>
<html>
<head> 
<meta charset="utf-8">
<title>MYUNGLI 실습예제</title>
<?php include "head.php";?>
<link rel="stylesheet" type="text/css" href="./css/bd.css">
</head>
<body> 
<header>
    <?php include "header.php";?>
</header>  
<section class="fontstyle">
   	<div id="bd_box">
	    <h3 class="title">자유 게시판</h3>	
	    <ul id="view_content">
			<li>
				<span class="col1"><b>제목 :</b> subject</span>
				<span class="col2">name | regist_day</span>
			</li>
			<li>content</li>		
	    </ul>
	    <ul class="buttons">
			<li><button class="fontstyle">목록</button></li>
			<li><button class="fontstyle">수정</button></li>
			<li><button class="fontstyle">삭제</button></li>
			<li><button onclick="location.href='bd_form.php'" class="fontstyle">글쓰기</button></li>
		</ul>
	</div> <!-- bd_box -->
</section> 
<footer>
    <?php include "footer.php";?>
</footer>
</body>
</html>
