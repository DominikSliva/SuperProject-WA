<?php
$username = "lm";
$passwd = "test";


$servername = "localhost";
$usernameDb = "lm";
$password = "test";
$dbname = "superprojekt";
$conn = new mysqli($servername, $usernameDb, $password, $dbname);
 $conn->query("set names utf8");

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
  exit();
}
?>
