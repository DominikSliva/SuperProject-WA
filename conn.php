<?php
$username = "lm";
$passwd = "";


$servername = "uvdb63.active24.cz";
$usernameDb = "crmskchccz";
$password = "";
$dbname = "crmskchccz";
$conn = new mysqli($servername, $usernameDb, $password, $dbname);
 $conn->query("set names utf8");

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
  exit();
}
?>
