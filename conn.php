<?php

class ConnectionSingleton
{

    
    static function getConnection()
    {

    $conn = null;
  $servername = "remisdavid.cz";
  $usernameDb = "superapp";
  $password = "VerySecretPassword1.";
  $dbname = "SuperProject";

  if (is_null($conn)) {
    $conn = new mysqli($servername, $usernameDb, $password, $dbname);
  }

  return $conn;
}

}
