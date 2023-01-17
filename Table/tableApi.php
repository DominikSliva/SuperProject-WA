<?php
    include("tableModel.php");

    $action = $_POST["Action"];


    switch ($action){

        case "getData":
            $sql = "SELECT * FROM events";
            $t = new TableModel("events", $sql);
            echo (json_encode($t));
            break;
                
        default:
            http_response_code(404);
            exit();
        
    }



?>