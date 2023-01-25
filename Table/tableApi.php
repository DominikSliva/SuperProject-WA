<?php
    include("tableModel.php");

    $action = $_POST["Action"];


    switch ($action){

        case "getData":
            //$sql = "SELECT * FROM firm";
            $sql = "select firm.id as ID, if(active = 1, 'ANO', 'NE') as 'Aktivní', coalesce(firm.name, '') as 'Jméno', coalesce(surname, '') as Příjmení, coalesce(email, '') as 'E-mail', coalesce(phone, '') as Telefon, subject.name as Předmět, coalesce(source, '') as Zdroj, coalesce(date_of_contact, '') as 'Datum kontaktu', coalesce(date_of_2_contact, '') as 'Datum 2. kontaku', coalesce(date_of_meeting, '') as 'Datum schůzky', coalesce(result, '') as 'Výsledek', coalesce(workshop, '') as Workshop, coalesce(brigade, '') as 'Brigáda', coalesce(practice, '') as 'Praxe', if(cv = 1, 'ANO', 'NE') as 'CV', coalesce(note, '') as 'Poznámka'  from firm inner join subject on subject.id = subject_id order by firm.id";
            $t = new TableModel("events", $sql);
            echo (json_encode($t));
            break;
                
        default:
            http_response_code(404);
            exit();
        
    }



?>