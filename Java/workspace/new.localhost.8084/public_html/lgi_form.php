<?php 
require_once("$_SERVER[DOCUMENT_ROOT]/../lib/lib_road.inc");
?>
<!DOCTYPE html>
<html>
<head> 
<meta charset="utf-8">
<title>MYUNGLI 실습예제</title>
<link rel="stylesheet" type="text/css" href="./css/common.css">
<link rel="stylesheet" type="text/css" href="./css/lgi.css">
<link rel="stylesheet" type="text/css" href="./css/font.css">
</head>
<body> 
	<header>
    	<?php include "header.php";?>
    </header>
	<section class="fontstyle">
		
        <div id="main_content">
      		<div id="lgi_box">
	    		<div id="lgi_title" style="border-bottom: none"> <!-- border-bottom : none 속성 추가 -->
		    		<span class="fontstyle">LOG IN</span>
	    		</div>
<?php 
$lib->lib_fun("script_form_check");
?>
	    		<div id="lgi_form">
          		<form  name="lgi_form" method="post" action="lgi.php">		       	
                  	<ul>
<?php 
$text = array("id"=>"아이디를 입력해주세요!");
$script_form_check->script_form_check_("lgi_form",$text,"id");
?>
                    <li><input type="text" name="id" placeholder="아이디"  class="fontstyle"></li>
<?php 
$pass = array("pass"=>"비밀번호를 입력해주세요!");
$script_form_check->script_form_check_("lgi_form",$pass,"pass");
?>
                    <li><input type="password" id="pass" name="pass" placeholder="비밀번호"  class="fontstyle" ></li> 
                  	</ul>
                  	<div id="lgi_btn">
                      	<label><a  class="fontstyle" href="#" style="width: 100%; height: 46px; line-height: 46px; background: #000; color: white; text-align: center; font-size: 14px; font-weight: bold; border-radius: 10px;"><p onclick="script_form_check()">LOG IN</p></a></label>
                      	<!-- 로그인 버튼 이미지 삭제 후 글씨처리 -->
                  	</div>		    	
           		</form>
        		</div> <!-- lgi_form -->
    		</div> <!-- lgi_box -->
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

