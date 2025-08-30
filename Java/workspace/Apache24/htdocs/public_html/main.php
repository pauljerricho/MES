        <div id="main_img_bar">
            <img src="./img/main_img.png">
        </div>
        <div id="main_content">
            <div id="latest">
                <h4>최근 게시글</h4>
                <ul>
<!-- 최근 게시 글 DB에서 불러오기 -->
<?php 
    include '../inc_con/db_connect.php';
    $sql = "select * from board order by num desc limit 5";
    $result = mysqli_query($con,$sql);
    if(!$result)
        echo "게시판 DB테이블을 만들기 전입니다.";
    else 
    {
        while ($row = mysqli_fetch_array($result)) {
            $regist_day = substr($row["regist_day"],0,10);
        
?>
                <li>
                    <span><a href="board_view.php?num=<?=$num?>&page=<?=$page?>"><?=$row["subject"]?></a></span>
                    <span><?=$row["name"]?></span>
                    <span><?="$regist_day"?></span>
                </li>
<?php 
        }
    }
?>
			</ul>
            </div>
            <div id="point_rank">
                <h4>포인트 랭킹</h4>
                <ul>
<!-- 포인트 랭킹 표시하기 -->
<?php 
$rank = 1;
$sql = "select * from members order by point desc limit 5";
$result = mysqli_query($con,$sql);

if(!$result)
    echo 
"회원 DB 테이블(members)이 생성 전이거나 아직 가입된 회원이 없습니다!";
    else{
        while($row = mysqli_fetch_array($result)){
            $name = $row["name"];
            $id = $row["id"];
            $point = $row["point"];
//             $name = mb_substr($name,0,1)." * ".mb_substr($name, 2, 1);
?>
            
                <li>
                    <span><?=$rank?></span>
                    <span><?=$name?></span>
                    <span><?=$id?></span>
                    <span><?=$point?></span>
                </li>
<?php
        $rank++;
        }
    }
    mysqli_close($con);
?>
                </ul>
            </div>
        </div>