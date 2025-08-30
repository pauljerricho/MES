<?php
require_once("$_SERVER[DOCUMENT_ROOT]/../lib/lib_road.inc");

$lib->lib_fun("session_start_print");
$session_start_print->session_start_print_();

if (isset($_SESSION["userid"])) $userid = $_SESSION["userid"];
else $userid = "";
if (isset($_SESSION["username"])) $username = $_SESSION["username"];
else $username = "";
if (isset($_SESSION["userlevel"])) $userlevel = $_SESSION["userlevel"];
else $userlevel = "";
if (isset($_SESSION["userpoint"])) $userpoint = $_SESSION["userpoint"];
else $userpoint = "";

$echo_data = array(
  "userid"=>$userid,  
  "username"=>$username,  
  "userlevel"=>$userlevel,  
  "userpoint"=>$userpoint,  
   'Prevent' => array("Prevent") 
);

$lib->lib_fun("json_connet");
echo $json_connet->json_connet_($echo_data);
?>