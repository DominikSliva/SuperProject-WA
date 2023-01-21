<?php
    include("tableModel.php");

    $action = $_POST["Action"];


    switch ($action){

        case "getData":
            //$sql = "SELECT * FROM firm";
            $sql = "select firm.id as ID, active as Active, coalesce(firm.name, '') as Name, coalesce(surname, '') as Surname, coalesce(email, '') as Email, coalesce(phone, '') as Phone, subject.name as Subject, coalesce(source, '') as Source from firm inner join subject on subject.id = subject_id order by firm.id";
            $t = new TableModel("events", $sql);
            echo (json_encode($t));
            break;
                
        default:
            http_response_code(404);
            exit();
        
    }



?>