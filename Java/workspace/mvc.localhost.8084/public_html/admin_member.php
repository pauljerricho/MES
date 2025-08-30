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
	    <h3 id="member_title">회원 정보 및 관리</h3>
		<ul class="top_buttons">
			<li><span><a href="admin_member.php">회원관리 </a></span></li>
			<li><span><a href="admin_board.php">게시물관리</a></span></li>
		</ul>
	    <table id="member_list">
			<colgroup>
				<col width="28px">
				<col width="42px">
				<col width="35px">
				<col width="173px">
				<col width="173px">
				<col width="111px">
				<col width="31px">
				<col width="31px">
			</colgroup>
			<thead>
			<tr>
				<th class="col1">번호</th>
				<th class="col2">아이디</th>
				<th class="col3">이름</th>
				<th class="col4">레벨</th>
				<th class="col5">마일리지</th>
				<th class="col6">가입일</th>
				<th class="col7">수정</th>
				<th class="col8">삭제</th>
			</tr>
			</thead>		
			<tbody></tbody>
		</table>
	</div> <!-- admin_box -->
</section> 
<footer>
    <?php include "footer.php";?>
</footer>
</body>
</html>
