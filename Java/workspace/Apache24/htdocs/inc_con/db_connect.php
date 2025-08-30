<?php
if ( !( $GLOBALS['con'] = mysqli_connect("localhost","8084localhost","123456","8084localhost","3308") ) ){
    exit("MYSQL DB SERVER connect ERROR");
    //함수 안에서 전역 변수를 사용하는 또 하나의 방법은 배열 $GLOBALS를 사용하는 방법
}

mysqli_select_db( $GLOBALS['con'], "8084localhost");

mysqli_query( $GLOBALS['con'], "SET session character_set_client ='UTF8'");
mysqli_query( $GLOBALS['con'], "SET session character_set_connection ='UTF8'");
mysqli_query( $GLOBALS['con'], "SET session character_set_results ='UTF8'");
mysqli_query( $GLOBALS['con'], "SET session character_set_server ='UTF8'");
?>