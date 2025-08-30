<?php
require_once("$_SERVER[DOCUMENT_ROOT]/../lib/lib_road.inc");

$u_id = $_POST["u_id"];

$lib->lib_fun("value_check2");
if(!$value_check2->value_check2_(array($u_id),"")){
    $error = "인자가 부족하여 처리 할 수 없습니다.";
    goto error;
}

$lib->lib_fun("db_connect");
$db_connect->db_connect_();

$lib->lib_fun("dbi_total_counter");
$num_record = $dbi_total_counter->dbi_total_counter_("members","id='$u_id'");

$db_connect->db_close();

if ($num_record){
    $chk = true;
}else{
    $chk = false;
}

error:
$echo_data = array(
    'error' => $error,
    'chk' => $chk,
    'Prevent' => array("Prevent")//변수 변동 방지(json_connet라이브러리 문제)
);

$lib->lib_fun("json_connet");
echo $json_connet->json_connet_($echo_data);
?>