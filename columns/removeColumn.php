<?php
include_once("../conn.php");

if(isset($_GET["id_of_column"])){
    $id = $_GET["id_of_column"];

    $sql = "delete from columns where id = $id";
    
    if ($conn->query($sql) === TRUE) {
      $alter = "alter table firm drop c$id;";

    if ($conn->query($alter) === TRUE) {
      header("Location: /");
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    } else {
      echo "Error: " . $sql . "<br>" . $conn->error;
    }



$conn->close();
}
?>