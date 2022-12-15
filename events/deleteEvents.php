<?php

if(isset($_POST["ids"])){
    include_once("../conn.php");
    $ids = $_POST["ids"];   
            $sql = "DELETE FROM events WHERE id IN(";
            for($x = 0;$x < count($ids);$x++){
                $sql .= $ids[$x];
                if($x != count($ids)-1){
                    $sql .= ",";                  
                }
                $sql2 = "DELETE FROM firms_in_event where event_id = ". $ids[$x];
                    $conn->query($sql2);

            }
            $sql.= ");";

            if ($conn->query($sql) === TRUE) {
                echo "1";              

            } else {
                echo "Error: " . $conn->error;
            }
            
}
?>