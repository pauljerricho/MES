 <?php 
    session_start();
    if(isset($_SESSION['userid'])) $userid = $_SESSION['userid'];
    else $userid = "";
    if(isset($_SESSION["username"])) $username = $_SESSION["username"];
    else $username = "";
    if(isset($_SESSION["userlevel"])) $userlevel = $_SESSION["userlevel"];
    else $userlevel = "";
    if(isset($_SESSION["userpoint"])) $userpoint = $_SESSION["userpoint"];
    else $userpoint = "";
 ?>
 
        <div id="top">
            <h3>
                <a href="index.php">국민이 선택한다! 20대 대통령선거</a>
                
            </h3>
            <br>
            <?php 
            if(!$userid) {
            ?>
            <ul id="top_menu">  
                <li><a href="member_form.php">회원 가입</a> </li>
                <li> | </li>
                <li><a href="login_form.php">로그인</a></li>
            <?php 
            }else{
                $logged = "$username(Level:$userlevel, Point:$userpoint)";
            ?>
            <ul id="top_menu">
                <li><?=$logged?></li>
                <br>
                <li><a href="logout.php">로그아웃</a> </li>
                <br>
                <li><a href="member_modify_form.php">정보 수정</a></li>
            <?php 
            }
            ?>
            <?php 
            if ($userlevel == 1){
            ?>
                <li> | </li>
                <li><a href="admin.php">관리자 모드</a></li>
            <?php 
            }
            ?>
            </ul>
        </div>
        <div id="menu_bar">
            <ul>  
                <li><a href="index.php">홈</a></li>
                <li><a href="message_form.php">대선후보쪽지함</a></li>                                
                <li><a href="board_list.php">자유게시판</a></li>
            </ul>
        </div>