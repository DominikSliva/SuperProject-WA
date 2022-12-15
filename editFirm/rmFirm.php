<?php

if(isset($_GET["id"])){
    include_once("../conn.php");
    $id = $_GET["id"];
            $sql = "DELETE FROM firm WHERE id=$id";

            if ($conn->query($sql) === TRUE) {
                header("Location: ../");
            } else {
                echo "Error: " . $conn->error;
            }
            
}
?>