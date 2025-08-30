<?php 
require_once("$_SERVER[DOCUMENT_ROOT]/../lib/lib_road.inc");
?>
<link rel="stylesheet" type="text/css" href="./css/font.css">
<link rel="stylesheet" type="text/css" href="./css/hover.css">
<div id="top">
    <h3>
        <a class="fontstyle" href="index.php">ABOUT ANIMAL</a>
        <img src="./img/doglogo.png" width="25px" height="20px">
    </h3>
    <ul id="top_menu">          
   <ul>        
        <?php 
        $lib->lib_fun("session_start_print");
        $session_start_print->session_start_print_();
        
        $userid = $_SESSION['userid'];
        $username = $_SESSION['username'];
        $userlevel = $_SESSION['userlevel'];
        $userpoint = $_SESSION['userpoint'];
        
        if(!$_SESSION['userid']){
        ?>
        <li><a class="fontstyle" href="mem_form.php">REGISTER</a> </li>
        <li> | </li>
        <li><a class="fontstyle" href="lgi_form.php">LOG IN</a></li>
        <?php 
        }else{
        $logged = "$username($userid)님[level:$userlevel,point:$userpoint]";
        ?>
    </ul>
        <li class="fontstyle"><?=$logged?> </li>&nbsp;
        <li><a class="fontstyle" href="introduce.php">ABOUT US</a></li>
        <li> | </li>
        <li><a class="fontstyle" href="lgout.php">LOGOUT</a></li>
        <li> | </li>
        <li><a class="fontstyle" href="mem_modify_form.php">MODIFY</a></li>
        <?php 
        }
        if($userlevel=="1"){
        ?>
        <li> | </li>
        <li><a href="admin_member.php" class="fontstyle">ADMIN</a></li>
        <?php 
        }
        ?>
    </ul>
</div>
<div id="menu_bar" style="align-contents: center" >
    <ul class="fontstyle">  
        <li><a href="index.php" class="back"
         style="margin-left : 100px">HOME</a></li>
        <li><a href="msg_form.php" class="back" >MESSAGE</a></li>                                
        <li><a href="bd_list.php" class="back">BOARD</a></li>
        <li><a href="index.php" class="back"
         style="margin-right : 100px">EVENT</a>
    </ul>
</div>