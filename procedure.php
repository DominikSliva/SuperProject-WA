<?php

require_once "conn.php";

require_once "requests.php";

header('Content-Type: application/json');




$r = new requests($conn);
  

/*
echo "<pre>";
print_r($_GET);
print_r($_POST);
print_r($_SERVER);
*/

?>