<!DOCTYPE html>
<html>
<head> 
<meta charset="utf-8">
<title>PHP 프로그래밍 입문</title>
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
	    <h3 id="board_title">게시판 > 글 쓰기</h3>
	    <?php 
	    $num = $_GET['num'];
	    $page = $_GET['page'];
	    
	    include '../inc_con/db_connect.php';
	    $sql = "select * from board where num='$num'";
	    $result = mysqli_query($con,$sql);
	    $row = mysqli_fetch_array($result);
	    
	    $name = $row['name'];
	    $subject = $row['subject'];
	    $content = $row['content'];
	    $file_name = $row['file_name'];
	    
	    ?>
		<form action="board_modify.php" name="board_form" method="post" enctype="multipart/form-data">
		<input type="hidden" name="num" value="<?=$num?>">
		<input type="hidden" name="page" value="<?=$page?>">
		<script type="text/javascript" src="./js/board_form.js"></script>
			<ul id="board_form">
				<li>
					<span class="col1">이름 : </span>
					<span class="col2"><?=$name?></span>
				</li>		
	    		<li>
	    			<span class="col1">제목 : </span>
	    			<span class="col2"><input name="subject" type="text" value="<?=$subject?>"></span>
	    		</li>	    	
	    		<li id="text_area">	
	    			<span class="col1">내용 : </span>
	    			<span class="col2">
	    				<textarea name="content"><?=$content?></textarea>
	    			</span>
	    		</li>
	    		<li>
			        <span class="col1"> 첨부 파일 : </span>
			        <span class="col2"><?=$file_name?></span>
			    </li>
	    	    </ul>
	    	    </form>
	    	<ul class="buttons">
				<li><button type="button" onclick="check_input()">수정하기</button></li>
				<li><button type="button" onclick="location.href='board_list.php?page=<?=$page?>'">목록</button></li>
			</ul>
	</div> <!-- board_box -->
</section> 
<footer>
    <?php include "footer.php";?>
</footer>
</body>
</html>
