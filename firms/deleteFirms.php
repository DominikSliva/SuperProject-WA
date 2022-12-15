<?php

if(isset($_POST["ids"])){
    include_once("../conn.php");
    $ids = $_POST["ids"];   
            $sql = "DELETE FROM firm WHERE id IN(";
            for($x = 0;$x < count($ids);$x++){
                $sql .= $ids[$x];
                if($x != count($ids)-1){
                    $sql .= ",";
                }

            }
            $sql.= ");";

            if ($conn->query($sql) === TRUE) {
                echo "1";
            } else {
                echo "Error: " . $conn->error;
            }
            
}
?>