<?php
$username = "lm";
$passwd = "test";


$servername = "remisdavid.cz";
$usernameDb = "dsliva";
$password = "DominikSliva1.";
$dbname = "SuperProject";
$conn = new mysqli($servername, $usernameDb, $password, $dbname);
 $conn->query("set names utf8");

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
  exit();
}
?>
