<!DOCTYPE html>
<html>
<head> 
<meta charset="utf-8">
<title>MYUNGLI 실습예제</title>
<?php include "head.php";?>
<?php include "head_list.php";?>
<link rel="stylesheet" type="text/css" href="./css/bd.css">
</head>
<body> 
<header>
    <?php include "header.php";?>
</header>
<section class="fontstyle">
   	<div id="bd_box">
	    <h3>자유 게시판</h3>
    	<table id="mytable">
			<colgroup>
				<col width="80px">
				<col width="330px">
				<col width="100px">
				<col width="40px">
				<col width="180px">
				<col width="40px">
			</colgroup>
    		<thead>
    		<tr>
        		<th class="col1">번호</th>
        		<th class="col2">제목</th>
        		<th class="col3">글쓴이</th>
        		<th class="col4">첨부</th>
        		<th class="col5">등록</th>
        		<th class="col6">조회</th>
    		</tr>
    		</thead>
			<tbody></tbody>
	    </table>
		<ul class="buttons">
			<li><button onclick="location.href='bd_list.php'" class="fontstyle">목록</button></li>
			<li><button onclick="location.href='bd_form.php'" class="fontstyle" >글쓰기</button></li>
		</ul>
	</div> <!-- bd_box -->
</section> 
<footer>
    <?php include "footer.php";?>
</footer>
</body>
</html>
