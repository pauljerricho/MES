<!DOCTYPE html>
<html>
<head> 
<meta charset="utf-8">
<title>MYUNGLI 실습예제</title>
<?php include "head.php";?>
<script src="/trans_js/?mod=login"></script>
<link rel="stylesheet" type="text/css" href="./css/lgi.css">
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
	    		<div id="lgi_form">
                  	<ul>
                    <li><input type="text" name="u_id" placeholder="아이디"  class="fontstyle"></li>
                    <li><input type="password" id="u_pass" name="u_pass" placeholder="비밀번호"  class="fontstyle" ></li> 
                  	</ul>
                  	<div id="lgi_btn">
                      	<label><a  class="fontstyle" href="#" style="width: 100%; height: 46px; line-height: 46px; background: #000; color: white; text-align: center; font-size: 14px; font-weight: bold; border-radius: 10px;"><p>LOG IN</p></a></label>
                      	<!-- 로그인 버튼 이미지 삭제 후 글씨처리 -->
                  	</div>
        		</div> <!-- lgi_form -->
    		</div> <!-- lgi_box -->
        </div> <!-- main_content -->
	</section> 
	 <footer>
    	<?php include "footer.php";?>
    </footer>
</body>
</html>

