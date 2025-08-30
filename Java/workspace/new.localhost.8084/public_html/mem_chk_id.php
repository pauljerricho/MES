<?php 
require_once("$_SERVER[DOCUMENT_ROOT]/../lib/lib_road.inc");
?>
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="./css/font.css">
<style>
h3 {
   border-bottom: solid 5px black;
   padding-bottom : 5px;
}
#close {
   margin:20px 0 0 80px;
   cursor:pointer;
}
</style>
</head>
<body class="fontstyle">
<h3>아이디 중복체크</h3>
<p>
<?php 
$id = $_GET['id'];
if(!$id){
    echo ("<li>아이디를 입력해주세요.</li>");
}else{
    $lib->lib_fun("db_connect");
    $db_connect->db_connect_();
    $lib->lib_fun("dbi_total_counter");
    $num_record = $dbi_total_counter->dbi_total_counter_("members","id='$id'");
    
    if($num_record){
        echo ("
            <li>$id 아이디가 중복됩니다.</li>
            <li>다른 아이디를 사용해주세요.</li>
        ");
            $id="";
    }else{
        echo ("
            <li>$id 아이디가 사용가능합니다.</li>
        ");
    }
    $db_connect->db_close();
//     mysqli_close($conn);
}
?>
</p>
<div onclick="javascript:opener.document.mem_form.id_dup.value='<?=$id?>';self.close()" style="margin-left: 90px; cursor : pointer;border : 5px solid gray; margin-right :90px; width : 55px;height : 20px">CLOSE</div>
</div>
</body>
</html>