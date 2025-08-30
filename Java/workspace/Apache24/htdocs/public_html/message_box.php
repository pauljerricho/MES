<!DOCTYPE html>
<html>
<head> 
<meta charset="utf-8">
<title>PHP 프로그래밍 입문</title>
<link rel="stylesheet" type="text/css" href="./css/common.css">
<link rel="stylesheet" type="text/css" href="./css/message.css">
</head>
<body> 
<header>
    <?php include "header.php";?>
</header>
<?php 
if(!$userid){
    echo("
<script>
alert('로그인 후 이용해주세요');
location.href='index.php';
</script>
");
exit; 
}

?>
<section>
	<div id="main_img_bar">
        <img src="./img/main_img.png">
    </div>
   	<div id="message_box">
<?php 
$mode = $_GET['mode'];
if($mode=="send"){
   echo("<h3>송신 쪽지함 > 목록보기</h3>");
}else{
   echo("<h3>수신 쪽지함 > 목록보기</h3>");
}
?>
		
	    <div>
	    	<ul id="message">
				<li>
					<span class="col1">번호</span>
					<span class="col2">제목</span>
					<?php 
					if($mode=="send"){
					   echo("<span class='col3'>받은이</span>");
					}else
					   echo("<span class='col3'>보낸이</span>");
					?>
					<span class="col4">등록일</span>
				</li>
				<?php 
				include '../inc_con/db_connect.php';
				if($mode=="send")
				    $sql ="select * from message where send_id = '$userid' order by num desc";
				else
				    $sql ="select * from message where rv_id = '$userid' order by num desc";
                
                
                $result = mysqli_query($con,$sql);
                $total_record = mysqli_num_rows($result);
                
                $scale = 10;
                
                if(isset($_GET['page'])){
                    $page = $_GET['page'];
                } else{
                    $page = 1;
                }
                
                $start = ($page-1)*$scale;
                $number = $total_record - $start;
                
                for($i=$start;$i<$start+$scale and $i<$total_record;$i++){
                mysqli_data_seek($result,$i);
                   
                $row = mysqli_fetch_array($result);
                $num = $row["num"];
                $subject = $row["subject"];
                $regist_day = $row["regist_day"];
                    
                if($mode == "send")
                   $msg_id = $row["rv_id"];
                else
                   $msg_id = $row["send_id"];
                    
                
               
                $sql2 = "select name from members where id = '$msg_id'";
                $result2 = mysqli_query($con,$sql2);
                $row2 = mysqli_fetch_array($result2);
                $msg_name = $row2["name"];
                    
				?>
				<li>
					<span class="col1"><?=$number?></span>
					<span class="col2"><a href="message_view.php?mode=<?=$mode?>&num=<?=$num?>"><?=$subject?></a></span>
					<span class="col3"><?=$msg_name?>(<?=$msg_id?>)</span>
					<span class="col4"><?=$regist_day?></span>
				</li>
					<?php
					$number--;
                }
                mysqli_close($con);
					?>
	    	</ul>
			<ul id="page_num"> 	
			<?php 
			if($total_record%$scale==0){
			    $total_page = floor($total_record/$scale);
			}else{
			    $total_page = floor($total_record/$scale) + 1;
			}
			
			if($total_page>=2 and $page>=2){
			    $new_page = $page -1;
			    echo ("<li><a href='message_box.php?mode=$mode&page=$new_page'>◀</a></li>");
			} else {
			    echo("<li>&nbsp;</li>");
			}
			
			for($i = 1;$i<=$total_page;$i++){
			    if($page==$i){
			        echo ("<li><b> $i </b></li>");
			    }else {
			        echo ("<li><a href='message_box.php?mode=$mode&$page=$i'>$i</a></li>");
			    }
			    
			}
			if($total_page>=2 and $page!=$total_page){
			    $nex_page = $page +1;
			    echo ("<li><a href='message_box.php?mode=$mode&page=$nex_page'>▶</a></li>");
			} else {
			    echo("<li>&nbsp;</li>");
			}
			?>
			</ul> <!-- page -->	    	
			<ul class="buttons">
				<li><button onclick="location.href='message_box.php?mode=rv'">수신 쪽지함</button></li>
				<li><button onclick="location.href='message_box.php?mode=send'">송신 쪽지함</button></li>
				<li><button onclick="location.href='message_form.php'">쪽지 보내기</button></li>
			</ul>
	</div> <!-- message_box -->
</section> 
<footer>
    <?php include "footer.php";?>
</footer>
</body>
</html>
