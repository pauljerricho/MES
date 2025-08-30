<?php
require_once("$_SERVER[DOCUMENT_ROOT]/../lib/lib_road.inc");

$num = $_POST["num"];
$mode = $_POST["mode"];

$lib->lib_fun("value_check2");
if(!$value_check2->value_check2_(array($num,$mode))){
    $error = "인자가 부족하여 처리 할 수 없습니다.";
    goto error; //error:로 이동
}

$lib->lib_fun("db_connect");
$db_connect->db_connect_();

$lib->lib_fun("dbi_delete");
$sql = $dbi_delete->dbi_delete_("message","num='$num'");

$db_connect->db_close();

if($sql){
    $error = "삭제 중 오류가 발생했습니다.";
    goto error;
}

error:
$echo_data = array(
    'error' => $error,
    'Prevent' => array("Prevent")
);

$lib->lib_fun("json_connet");
echo $json_connet->json_connet_($echo_data);
?>