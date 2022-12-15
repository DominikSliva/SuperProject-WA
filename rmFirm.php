<?php

if(isset($_GET["id"])){
    include_once("conn.php");
    $id = $_GET["id"];
    foreach ($_POST as $key => $value) {
        if($key != "id"){
            $sql = "DELETE FROM firm WHERE id=$id";

            if ($conn->query($sql) === TRUE) {
                echo "Deleted";
            } else {
                echo "Error: " . $conn->error;
            }
        }
    }
}
?>