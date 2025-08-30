<?php 
require_once("$_SERVER[DOCUMENT_ROOT]/../lib/lib_road.inc");
?>
<!DOCTYPE html>
<html>
<head> 
<meta charset="utf-8">
<title>MYUNGLI 실습예제</title>
<link rel="stylesheet" type="text/css" href="./css/common.css">
<link rel="stylesheet" type="text/css" href="./css/msg.css">
<link rel="stylesheet" type="text/css" href="./css/font.css">
</head>
<body>
<?php 
$lib->lib_fun("session_chk");
$session_chk->session_chk_(array($_SESSION['userid']),"로그인해주세요.","location.href='/index.php';","");
?>
<header>
    <?php include "header.php";?>
</header>
<section class="fontstyle">
   	<div id="msg_box">
	    <h3 id="write_title">
	    		메시지 보내기
		</h3>
		<ul class="top_buttons">
				<li><span><a href="msg_box.php?mode=rv">수신 메시지함 </a></span></li>
				<li><span><a href="msg_box.php?mode=send">송신 메시지함</a></span></li>
		</ul>
	<?php 
            $lib->lib_fun("script_form_check");
    ?>
	    <form  name="msg_form" method="post" action="msg_insert.php">
	    <input type="hidden" name="send_id" value="<?=$userid?>">
	    	<div id="write_msg">
	    	    <ul>
				<li>
					<span class="col1">보내는 사람 : </span>
					<span class="col2"><?=$userid?></span>
				</li>
				<li>
					<span class="col1">수신 아이디 : </span>
				<?php 
                    $id = array("rv_id"=>"아이디");
                    $script_form_check->script_form_check_("msg_form",$id,"id"); //폼체크 함수 호출
                ?>		
					<span class="col2"><input name="rv_id" type="text" class="fontstyle" placeholder = "관리자의 닉네임은 test입니다"></span>
				</li>
				
	    		<li>
	    			<span class="col1">제목 : </span>
                <?php 
                    $text = array("subject"=>"제목을 입력해주세요");
                    $script_form_check->script_form_check_("msg_form",$text,"text");
                ?>	
	    			<span class="col2"><input name="subject" type="text" class="fontstyle" ></span>
	    		</li>
	    		<li id="text_area">	
	    			<span class="col1">내용 : </span>
	    		<?php 
	    		    $text = array("content"=>"내용을 입력해주세요");
	    		    $script_form_check->script_form_check_("msg_form",$text,"text");
	    		?>
	    			<span class="col2">
	    				<textarea name="content" class="fontstyle"></textarea>
	    			</span>
	    		</li>
	    	    </ul>
	    	    <button type="button" class="fontstyle" onclick="script_form_check()">보내기</button>
	    	</div>	    	
	    </form>
	</div> <!-- msg_box -->
</section>
 <?php 
   $lib->lib_fun("script_print");
   $script_print->script_print_();
   ?>
<footer>
    <?php include "footer.php";?>
</footer>
</body>
</html>