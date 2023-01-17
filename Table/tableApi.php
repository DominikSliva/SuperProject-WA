<?php
    $action = $_POST["Action"];

    switch ($action){
        
    case "getData":
        echo ("Data");
            break;
            
        default:
            http_response_code(504);
            exit();
        
    }



?>