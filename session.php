<?php
session_start();

if(isset($_SESSION["is_logged"]) != true){
  header("Location: /");
}


?>