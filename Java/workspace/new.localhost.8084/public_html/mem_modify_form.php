<?php 
require_once("$_SERVER[DOCUMENT_ROOT]/../lib/lib_road.inc");
?>
<!DOCTYPE html>
<html>
<head> 
<meta charset="utf-8">
<title>MYUNGLI 실습예제</title>
<link rel="stylesheet" type="text/css" href="./css/common.css">
<link rel="stylesheet" type="text/css" href="./css/member.css">
<link rel="stylesheet" type="text/css" href="./css/font.css">
</head>
<body> 
<?php 
$lib->lib_fun("session_chk");
$session_chk->session_chk_(array($_SESSION['userid']),"로그인 해주세요!","location.href='/index.php';","");
?>
	<header>
    	<?php include "header.php";?>
    </header>
<?php 
$lib->lib_fun("db_connect");
$db_connect->db_connect_();

$lib->lib_fun("data_ione_row_return");
$row = $data_ione_row_return->data_ione_row_return_("*","members","id='$userid'","","");

$db_connect->db_close();
?>
	<section class="fontstyle">
        <div id="main_content">
      		<div id="join_box">
          	<form  name="mem_form" method="post" action="mem_modify.php">
			    <h2>회원 정보수정</h2>
    		    	<div class="form id">
				        <div class="col1">아이디</div>
				        <div class="col2" >
							<?=$userid?>
				        </div>                 
			       	</div>
			       	<div class="clear"></div>
			       	<div class="form">
				        <div class="col1">비밀번호</div>
<?php 
$lib->lib_fun("script_form_check");


$pwd = array("pass","pass_confirm","비밀번호가 일치하지 않습니다.");
$script_form_check->script_form_check_("mem_form",$pwd,"pwd");

$pass = array("pass"=>"비밀번호를 입력해주세요!");
$script_form_check->script_form_check_("mem_form",$pass,"pass");
?>				        
				        <div class="col2">
							<input type="password" name="pass" value="<?=$row['pass']?>">
				        </div>
<?php 
$pass_confirm = array("pass_confirm"=>"비밀번호");
$script_form_check->script_form_check_("mem_form",$pass_confirm,"mod_pass");
?>                 
			       	</div>
			       	<div class="clear"></div>
			       	<div class="form">
				        <div class="col1">비밀번호 확인</div>
				        <div class="col2">
							<input type="password" name="pass_confirm" value="<?=$row['pass']?>">
				        </div>                 
			       	</div>
			       	<div class="clear"></div>
			       	<div class="form">
				        <div class="col1">이름</div>
				        <div class="col2" >
							<input type="text" name="name" value="<?=$row['name']?>" class="fontstyle">
				        </div>
<?php 
$name = array("name"=>"이름을 입력해주세요");
$script_form_check->script_form_check_("mem_form",$name,"text");
?>               
			       	</div>
			       	<div class="clear"></div>
			       	<div class="form email">
				        <div class="col1">이메일</div>
<?php 
$email = array("email1||email2"=>"이메일을 입력해주세요.");
$script_form_check->script_form_check_("mem_form",$email,"email2");
$email = explode("@",$row['email']);
?>				        
				        <div class="col2">
							<input type="text" name="email1" value="<?=$email[0]?>" class="fontstyle">@<input 
							       type="text" name="email2" value="<?=$email[1]?>" class="fontstyle">
				        </div>                 
			       	</div>
			       	<div class="clear"></div>
			       	<div class="bottom_line"> </div>
			       	<div class="buttons">
	                	<input type="button" value="수정" style="width : 70px;border : medium solid gray" class="fontstyle" onclick="script_form_check()">
	                	<input type="reset" value="초기화" style="width : 70px;border : medium solid gray" class="fontstyle" onclick="reset_form()">
	           		</div>
           	</form>
        	</div> <!-- join_box -->
        </div> <!-- main_content -->
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

