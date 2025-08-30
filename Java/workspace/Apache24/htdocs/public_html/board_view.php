<!DOCTYPE html>
<html>
<head> 
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="./css/common.css">
<link rel="stylesheet" type="text/css" href="./css/board.css">
</head>
<body> 
<header>
    <?php include "header.php";?>
</header>  
<section>
	<div id="main_img_bar">
        <img src="./img/main_img.png">
    </div>
   	<div id="board_box">
	    <h3 class="title">
			게시판 > 내용보기
		</h3>
		<?php 
		$num = $_GET["num"];
		$page = $_GET["page"];
		include '../inc_con/db_connect.php';
		$sql = "select * from board where num =$num";
		$result = mysqli_query($con,$sql);
		
		$row = mysqli_fetch_array($result);
		$id = $row["id"];
		$name = $row["name"];
		$regist_day = $row["regist_day"];
		$subject = $row["subject"];
		$content = $row["content"];
		$file_name = $row["file_name"];
		$file_type = $row["file_type"];
		$file_copied = $row["file_copied"];
		$hit = $row["hit"];
		
		$content = str_replace(" ","&nbsp;",$content);
		$content = str_replace("\n","<br>",$content);
		
		$new_hit = $hit+1;
		$sql = "update board set hit=$new_hit where num=$num";
		mysqli_query($con,$sql);
		?>
	    <ul id="view_content">
			<li>
				<span class="col1"><b>제목 :</b> <?=$subject?></span>
				<span class="col2"><?=$username?> | <?=$regist_day?></span>
			</li>
			<li>
			<?php 
			if($file_name) {
			    $file_size = filesize("./data/".$file_copied);
			    echo "▷ 첨부파일 : $file_name ($file_size BYTE)
            &nbsp;
            <a href='board_download.php?num=$num'>저장</a><br><br>";
			}
			?>
			<?=$content?>
			</li>		
	    </ul>
	    <ul class="buttons">
				<li><button onclick="location.href='board_list.php?page=<?=$page?>'">목록</button></li>
				<li><button onclick="location.href='board_modify_form.php?num=<?=$num?>&page=<?=$page?>'">수정</button></li>
				<li><button onclick="location.href='board_delete.php?num=<?=$num?>&page=<?=$page?>'">삭제</button></li>
				<li><button onclick="location.href='board_form.php?page=<?=$page?>'">글쓰기</button></li>
		</ul>
	</div> <!-- board_box -->
</section> 
<footer>
    <?php include "footer.php";?>
</footer>
</body>
</html>
