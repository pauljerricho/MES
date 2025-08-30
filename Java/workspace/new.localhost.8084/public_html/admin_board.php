<?php 
require_once("$_SERVER[DOCUMENT_ROOT]/../lib/lib_road.inc");
?>
<!DOCTYPE html>
<html>
<head> 
<meta charset="utf-8">
<title>MYUNGLI 실습예제</title>
<link rel="stylesheet" type="text/css" href="./css/common.css">
<link rel="stylesheet" type="text/css" href="./css/administrator.css">
<link rel="styelsheet" type="text/css" href="./css/font.css">
</head>
<body> 
<header>
    <?php include "header.php";?>
</header>  
<section class="fontstyle">
   	<div id="admin_box">
	    <h3 id="member_title">
	    	게시판 관리
		</h3>
		<ul class="top_buttons">
			<li><span><a href="admin_member.php">회원관리 </a></span></li>
			<li><span><a href="admin_board.php">게시물관리</a></span></li>
		</ul>
		<form method="post" action="adm_board_del.php">
		    <ul id="bd_list">
				<li class="title">
					<span class="col1">선택</span>
					<span class="col2">번호</span>
					<span class="col3">이름</span>
					<span class="col4">제목</span>
					<span class="col5">첨부파일명</span>
					<span class="col6">작성일</span>
				</li>
<?php 
$page = $_GET['page'];
$lib->lib_fun("db_connect");
$db_connect->db_connect_();

$lib->lib_fun("total_idata_row");
list($data,$total_record,$row_page) = $total_idata_row->total_idata_row_("*","board","","num desc","","10","10");

if($total_record){
    foreach ($data as $key=>$row){
        $row["regist_day"] = substr($row["regist_day"],0,10);
    

?>
				<li>
					<span class="col1"><input type="checkbox" name="item[]" value="<?=$row["num"]?>"></span>
					<span class="col2"><?=$row["article_num"]?></span>
					<span class="col3"><?=$row["name"]?></span>
					<span class="col4"><?=$row["subject"]?></span>
					<span class="col5"><?=$row["file_name"]?></span>
					<span class="col6"><?=$row["regist_day"]?></span>
				</li>
<?php 
    }
}else{
?>
				<li>
					<div style="text-align:center;">데이터가 없습니다.</div>
				</li>
<?php 
}

$db_connect->db_close();
?>
		    </ul>
		    <button type="submit" class="fontstyle">글 삭제</button>
		</form>	
		</ul>
			<ul id="page_num">
				<li>
<?php 
$lib->lib_fun("admin_paging");
$admin_paging->admin_paging_($page,$row_page,"","<이전","다음>");
?>
				</li>
			</ul> <!-- page -->
	    </ul>
	</div> <!-- admin_box -->
</section> 
<footer>
    <?php include "footer.php";?>
</footer>
</body>
</html>
