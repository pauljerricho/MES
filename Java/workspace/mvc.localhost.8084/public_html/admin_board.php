<!DOCTYPE html>
<html>
<head> 
<meta charset="utf-8">
<title>MYUNGLI 실습예제</title>
<?php include "head.php";?>
<?php include "head_list.php";?>
<link rel="stylesheet" type="text/css" href="./css/administrator.css">
</head>
<body> 
<header>
    <?php include "header.php";?>
</header>
<section class="fontstyle">
   	<div id="admin_box">
	    <h3 id="member_title">게시판 관리</h3>
		<ul class="top_buttons">
			<li><span><a href="admin_member.php">회원관리 </a></span></li>
			<li><span><a href="admin_board.php">게시물관리</a></span></li>
		</ul>
	    <table id="bd_list">
	    	<colgroup>
				<col width="50px">
				<col width="60px">
				<col width="80px">
				<col width="340px">
				<col width="120px">
				<col width="120px">
	    	</colgroup>
	    	<thead>
	    	<tr>
	    		<th class="col1">선택</th>
				<th class="col2">번호</th>
				<th class="col3">이름</th>
				<th class="col4">제목</th>
				<th class="col5">첨부파일명</th>
				<th class="col6">작성일</th>
	    	</tr>
	    	</thead>
	    	<tbody></tbody>
	    </table>
	    <button class="fontstyle">글 삭제</button>
	</div> <!-- admin_box -->
</section> 
<footer>
    <?php include "footer.php";?>
</footer>
</body>
</html>
