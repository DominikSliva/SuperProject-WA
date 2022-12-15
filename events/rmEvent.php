<?php

if(isset($_GET["id"])){
    include_once("../conn.php");
    $id = $_GET["id"];
            $sql = "DELETE FROM events WHERE id=$id";

            if ($conn->query($sql) === TRUE) {
                header("Location: tableEvents.php");
            } else {
                echo "Error: " . $conn->error;
            }
            
}
?>