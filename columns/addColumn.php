<?php
if(isset($_GET["name_of_column"])){
  include_once("../conn.php");
    $name = $_GET["name_of_column"];
    $type = $_GET["type"];

    $sql = "INSERT INTO columns (name,type)
    VALUES ('$name',$type)";
    
    if ($conn->query($sql) === TRUE) {
      $last_id = $conn->insert_id;
      $alter = "alter table firm add c$last_id varchar(500);";

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