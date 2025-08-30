<?php 
require_once("$_SERVER[DOCUMENT_ROOT]/../lib/lib_road.inc");
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>PHP 프로그래밍 입문</title>
</head>
<body>
<?php 
$lib->lib_fun("session_start_print");
$session_start_print->session_start_print_();

if(isset($_SESSION["userlevel"])){
    $userlevel = $_SESSION["userlevel"];
}else{
    $userlevel ="";
}

$lib->lib_fun("message");
if($userlevel != 1){
    $message->message_("관리자가 아닙니다.","history.back();","exit");
}

if(isset($_POST["item"]))
    $num_item = count($_POST["item"]);
else 
    $message->message_("삭제할 게시글을 선택해주세요!","history.back();","exit");

    $lib->lib_fun("db_connect");
    $db_connect->db_connect_();
    
$lib->lib_fun("data_ione_row_return");
$lib->lib_fun("dbi_delete");
for($i=0;$i<count($_POST["item"]); $i++){
    $num = $_POST["item"][$i];
    
    $row = $data_ione_row_return->data_ione_row_return_("*","board","num='$num'","","");
    
    $copied_name = $row["file_copied"];
    
    if($copied_name){
        $file_path = "./data/".$copied_name;
        unlink($file_path);
    }
    
    $sql .=$dbi_delete->dbi_delete_("board","num='$num'");
}
    $db_connect->db_close();
    if($sql){
    $message->message_("삭제중 오류가 발생했습니다.","history.back();","exit");
    }
    $message->nomessage_("location.href='admin_board.php';","exit");
?>
</body>
</html>