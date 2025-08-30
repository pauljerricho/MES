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
	    <h3 id="bd_title">
	    		글 수정하기
		</h3>
        <ul id="bd_form">
        	<li>
        		<span class="col1">이름 : </span>
        		<span class="col2">name</span>
        	</li>		
        	<li>
        		<span class="col1">제목 : </span>
        		<span class="col2"><input name="subject" type="text" value="subject" class="fontstyle"></span>
        	</li>	    	
        	<li id="text_area">	
        		<span class="col1">내용 : </span>
        		<span class="col2">
        			<textarea name="content" class="fontstyle">content</textarea>
        		</span>
        	</li>
        	<li>
                <span class="col1"> 첨부 파일 : </span>
                <span class="col2">file_name</span>
            </li>
        </ul>
        <ul class="buttons">
        	<li><button type="button" class="fontstyle">수정</button></li>
        	<li><button type="button" onclick="location.href='bd_list.php'" class="fontstyle">목록</button></li>
        </ul>
	</div> <!-- bd_box -->
</section> 
<footer>
    <?php include "footer.php";?>
</footer>
</body>
</html>
