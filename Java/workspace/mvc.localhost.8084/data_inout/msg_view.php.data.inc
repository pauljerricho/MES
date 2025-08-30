<?php
require_once("$_SERVER[DOCUMENT_ROOT]/../lib/lib_road.inc");
$mode = $_POST["mode"];
$num = $_POST["num"];
$lib->lib_fun("value_check2");
if(!$value_check2->value_check2_(array($mode,$num))){
    $error = "인자가 부족하여 처리 할 수 없습니다.";
    goto error; //error:로 이동
}

$lib->lib_fun("session_start_print");
$session_start_print->session_start_print_(); //세션 스타트

$lib->lib_fun("value_check2");
if(!$value_check2->value_check2_(array($_SESSION['userid']))){
    $error = "로그인 후 이용할 수 있습니다.";
    goto error; //error:로 이동
}

$lib->lib_fun("db_connect");
$db_connect->db_connect_();

$lib->lib_fun("data_ione_row_return");
$row = $data_ione_row_return->data_ione_row_return_("*","message","num='$num'","","");

$row['content'] = str_replace(" ","&nbsp;",$row['content']);
$row['content'] = str_replace("\n","<br>",$row['content']);

$mode =="send" ? $id_txt = "rv_id" : $id_txt = "send_id";
$row2 = 
$data_ione_row_return->data_ione_row_return_("name","members","id='$row[$id_txt]'","","");

$db_connect->db_close();

$row['name'] = $row2['name'];
$row['userid'] = $_SESSION['userid'];

error:
$row['error'] = $error;

$row['Prevent'] = array("Prevent");

$lib->lib_fun("json_connet");
echo $json_connet->json_connet_($row);
?>