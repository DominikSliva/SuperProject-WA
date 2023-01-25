<?php
include("../conn.php");

$form_data = $_POST;

foreach($form_data as $key => $value){
    if(empty($value)){
        $form_data[$key] = "NULL";
    }
    else if(is_numeric($value)){
        $form_data[$key] = intval($value);
    }
    else if(gettype($value) == "string"){
        $form_data[$key] = "'".$value."'";
    }
}
if(empty($form_data["active"])){
    $form_data["active"] = 0;
}
if(empty($form_data["cv"])){
    $form_data["cv"] = 0;
}


$query = "update firm set active=".$form_data["active"].", name=".$form_data["name"].", surname=".$form_data["surname"].
         ", email=".$form_data["email"].", phone=".$form_data["phone"].", subject_id=".$form_data["subject"].
         ", source=".$form_data["source"].", date_of_contact=".$form_data["date_of_contact"].", date_of_2_contact=".$form_data["date_of_2_contact"].
         ", date_of_meeting=".$form_data["date_of_meeting"].", result=".$form_data["result"].", workshop=".$form_data["workshop"].
         ", brigade=".$form_data["brigade"].", practice=".$form_data["practice"].", cv=".$form_data["cv"].", note=".$form_data["note"].
         " where id=".$form_data["id"].";";

$conn = ConnectionSingleton::getConnection();

if ($conn->query($query) === TRUE) {
	echo "Records updated";
    header("Location: ../table.php");
} else {
	echo "Error: ".$query."<br>".$conn->error;
}

$conn->close();

?>