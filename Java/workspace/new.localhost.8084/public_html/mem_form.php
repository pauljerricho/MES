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
   <header>
       <?php include "header.php";?>
    </header>
   <section class="fontstyle">
   
        <div  id="main_content">
            <div id="join_box">
            <?php 
            $lib->lib_fun("script_form_check");
            ?>
             <form  name="mem_form" method="post" action="mem_insert.php">
                <input type="hidden" name="id_dup">
             <h2>회원 가입</h2>
                 <div class="form id">
                    <div class="col1">아이디</div>
                    <div class="col2">
                    <?php 
                    $text = array("id"=>"아이디");
                    $script_form_check->script_form_check_("mem_form",$text,"id");
                    ?>
                     <input type="text" name="id" class="fontstyle">
                    </div>  
                    <div class="col3">
                    <?php 
                    $lib->lib_fun("script_win_open");
                    $script_win_open->script_win_open_();
                    ?>
                       <a href="#"><div onclick="script_win_open('mem_chk_id.php?id='+document.mem_form.id.value,'memid_check','350','200','y');" 
                       style="border : medium solid gray;border-radius : 10px;font-size : 12px">중복확인</div></a>
                    </div>                 
                   </div>
                   <div class="clear"></div>

                   <div class="form">
                    <div class="col1">비밀번호</div>
                    <div class="col2">
                    <?php 
                    $pwd = array("pass","pass_confirm","비밀번호가 일치하지 않습니다");
                    $script_form_check->script_form_check_("mem_form",$pwd,"pwd");
                    $pass = array("pass"=>"비밀번호");
                    $script_form_check->script_form_check_("mem_form",$pass,"pass");
                    ?>
                     <input type="password" name="pass" class="fontstyle" >
                    </div>                 
                   </div>
                   <div class="clear"></div>
                   <div class="form">
                    <div class="col1">비밀번호 확인</div>
                    <div class="col2">
                    <?php 
                    $pass_confirm = array("pass_confirm"=>"비밀번호");
                    $script_form_check->script_form_check_("mem_form",$pass_confirm,"mod_pass");
                    ?>
                     <input type="password" name="pass_confirm" class="fontstyle" >
                    </div>                 
                   </div>
                   <div class="clear"></div>
                   <div class="form">
                    <div class="col1">이름</div>
                    <div class="col2">
                    <?php 
                    $name = array("name"=>"이름을 입력해주세요");
                    $script_form_check->script_form_check_("mem_form",$name,"text");
                    ?>
                     <input type="text" name="name" class="fontstyle" >
                    </div>                 
                   </div>
                   <div class="clear"></div>
                   <div class="form email">
                    <div class="col1">이메일</div>
                    <div class="col2">
                    <?php 
                    $email = array("email1||email2"=>"이메일을 입력해주세요.");
                    $script_form_check->script_form_check_("mem_form",$email,"email2");
                    ?>
                     <input type="text" name="email1" class="fontstyle">@<input type="text" name="email2" class="fontstyle">
                    </div>                 
                   </div>
                   <div class="clear"></div>
                   <div class="bottom_line"> </div>
                   <div class="buttons">
                   <input type="button" value="저장" style="width : 70px;border : medium solid gray;
                    cursor : pointer;" class="fontstyle" onclick="script_form_check()">
                   
                        <input type="reset" value="취소" style="width : 70px;border : medium solid gray;
                         cursor : pointer;" class="fontstyle" onclick="reset_form()">
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
