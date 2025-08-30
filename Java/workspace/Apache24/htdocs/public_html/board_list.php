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
	    <h3>
	    	게시판 > 목록보기
		</h3>
	    <ul id="board_list">
				
		<?php 
		if (isset($_GET["page"]))
		    $page = $_GET["page"];
		else
		    $page = 1;
		include '../inc_con/db_connect.php';
		$sql = "select * from board order by num desc";
		$result = mysqli_query($con, $sql);
		$total_record = mysqli_num_rows($result); //전체 글 수
		
		$scale = 10;
		
		if($total_record % $scale == 0)
		    $total_page = floor($total_record/$scale);
		else 
		    $total_page = floor($total_record/$scale) + 1;
		
		$start = ($page - 1)*$scale;
		$number = $total_record - $start;
		
		for($i=$start; $i<$start+$scale && $i < $total_record; $i++){
		    mysqli_data_seek($result, $i); //가져올 레코드로 위치 이동
		    $row = mysqli_fetch_array($result);
		    //하나의 레코드 가져오기
		    $num = $row["num"];
		    $id = $row["id"];
		    $name = $row["name"];
		    $subject = $row["subject"];
		    $regist_day = $row["regist_day"];
		    $hit = $row["hit"];
		    
		    if($row["file_name"])
		        $file_image = "<img src='./img/file.gif'>";
		    else 
		        $file_image = " ";
		?>
				<li>
					<span class="col1"><?=$number?></span>
					<span class="col2"><a href="board_view.php?num=<?=$num?>&page=<?=$page?>"><?=$subject?></a></span>
					<span class="col3"><?=$name ?></span>
					<span class="col4"><?=$file_image?></span>
					<span class="col5"><?=$regist_day?></span>
					<span class="col6"><?=$hit?></span>
				</li>
		<?php 
		  $number--;
		}
		mysqli_close($con);
		?>
	    	</ul>
			<ul id="page_num"> 
		<?php 
		  if($total_page >=2 && $page >=2)
		  {
		      $new_page = $page-1;
		      echo "<li><a href='board_list.php?mode=$mode&page=$new_page'>◀ 이전</a></li>";
		  }
		  else 
		      echo "<li>&nbsp;</li>";
		  
		      for($i = 1; $i <= $total_page; $i++){
		          if($page == $i) //현재 페이지 번호는 링크하지 않음
		          {
		              echo "<li><b> $i </b></li>";
		          }
		          else 
		          {
		              echo "<li><a href='board_list.php?mode=$mode&page=$i'> $i </a></li>";
		          }
		      }
		      if($total_page >= 2 && $page != $total_page)
		      {
		          $new_page = $page + 1;
		          echo "<li><a href='board_list.php?mode=$mode&page=$new_page'>다음 ▶</a></li>";
		      } else
		          echo "<li>&nbsp;</li>";
		?>	
			</ul> <!-- page -->	    	
			<ul class="buttons">
				<li><button>목록</button></li>
				<li>
				<?php 
				if($userid){
				?>
			<button onclick="location.href='board_form.php'">글쓰기</button>
			<?php 
				}else{
			?>
			<a href="javascript:alert('로그인 후 이용해 주세요!')"><button>글쓰기</button></a>
			<?php 
				}
			?>
				</li>
			</ul>
	</div> <!-- board_box -->
</section> 
<footer>
    <?php include "footer.php";?>
</footer>
</body>
</html>
