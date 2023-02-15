<?php
include("../conn.php");


$form_data = $_POST;
$conn = ConnectionSingleton::getConnection();

foreach($form_data as $key => $value){
    if(empty($value)){
        $form_data[$key] = "NULL";
    }
    else if(is_numeric($value)){
        $form_data[$key] = intval($value);
    }
    else if(gettype($value) == "string"){
        $trimmed = trim($form_data[$key]," \n\r\t\v\x00");
        $form_data[$key] = "'".$trimmed."'";
    }
}
if(empty($form_data["active"])){
    $form_data["active"] = 0;
}
if(empty($form_data["cv"])){
    $form_data["cv"] = 0;
}

$check_sql = "select * from firm where name=".$form_data["name"].";";
$check_result = $conn -> query($check_sql);
if ($check_result) {
    if (mysqli_num_rows($check_result) > 0) {
        echo "Firm already exist";
        $conn -> close();
    } 
    else {
        
        
        
        $query = "insert into firm(active, name, surname, email, phone, subject_id, source, date_of_contact, date_of_2_contact, date_of_meeting, result, workshop, brigade, practice, cv, note)
                 values(".$form_data["active"].", ".$form_data["name"].", ".$form_data["surname"].
                 ", ".$form_data["email"].", ".$form_data["phone"].", ".$form_data["subject"].
                 ", ".$form_data["source"].", ".$form_data["date_of_contact"].", ".$form_data["date_of_2_contact"].
                 ", ".$form_data["date_of_meeting"].", ".$form_data["result"].", ".$form_data["workshop"].
                 ", ".$form_data["brigade"].", ".$form_data["practice"].", ".$form_data["cv"].", ".$form_data["note"].");";
        
        echo $query;
        
        
        
        if ($conn->query($query) === TRUE) {
            echo "Records updated";
            header("Location: ../table.php");
        } else {
            echo "Error: ".$query."<br>".$conn->error;
        }
        
        $conn->close();
    }
}



?>