<?php
require_once ("$_SERVER[DOCUMENT_ROOT]/../lib/lib_road.inc");

// $lib->lib_fun("introduce");
// echo $introduce->introduce_("사용자 라이브러리 테스트 입니다.");

$lib->lib_fun("message");
$message->message_("라이브러리 토큰 인증절차 입니다.","//location.reload();","exit;");
?>