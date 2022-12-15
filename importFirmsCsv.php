<?php
include_once("conn.php");

$path = "data/seznam impoert.csv";

$file = fopen($path,"r");
$lines = count(file($path));

for($x = 0;$x < $lines;$x++){
    $line = fgets($file). "<br>";
    $data = explode(";",$line);

    $name = trim(str_replace("\"","",$data[0]));
    if(strlen($name) == 0){
        continue;
    }
    
    $select = "SELECT firm.name FROM firm where name like '$name%' limit 1";  
    $result = $conn->query($select);
    $count = mysqli_num_rows($result);
    
    if($count>0){
    echo "$name - pøeskakuji <br>";
        continue;
    }
    
    
    $surname = str_replace("\"","",$data[2]);
    $email = str_replace("\"","",$data[3]);
    $phone = str_replace("\"","",$data[4]);
    $subject = 1;
    $subjectTemp = $data[5];
    if($subjectTemp == "IT")
    $subject = 1;
    if($subjectTemp == "ELE")
    $subject = 2;
    if($subjectTemp == "ELE,IT")
    $subject = 3;
    $source = str_replace("\"","",$data[6]);
    $cv = str_replace("\"","",$data[13]);
    if($cv = "ne")
    $cv = 1;
    if($cv = "")
    $cv = null;
    if($cv = "1")
    $cv = 1;
    $data_of_contact = $data[7];
    if(strlen($data_of_contact) == 0){
        $data_of_contact = null;      
    }
    else {
        $parts = explode(".",$data_of_contact);
        $data_of_contact = $parts[2]."-".$parts[1]."-".$parts[0];
    }
    $data_of_meeting = $data[9];
    if(strlen($data_of_meeting) == 0){
        $data_of_meeting = null;      
    }else {
        $parts = explode(".",$data_of_meeting);
        $data_of_meeting = $parts[2]."-".$parts[1]."-".$parts[0];
    }
    $result = str_replace("\"","",$data[10]);
    if(strlen($result) == 0){
        $result = null;
    }
    $workshop = str_replace("\"","",$data[11]);
    if(strlen($workshop) == 0){
        $workshop = null;
    }
    $brigade = str_replace("\"","",$data[12]);
    if(strlen($brigade) == 0){
        $brigade = null;
    }
    $practice = str_replace("\"","",$data[13]);
    if(strlen($practice) == 0){
        $practice = null;
    }
    $note = null;

    $insert = $conn->prepare("INSERT INTO firm (name, surname, email, phone, subject_id, source, date_of_contact, date_of_meeting, result, workshop, brigade, practice, cv, note) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
    $insert->bind_param("ssssisssssssis", $name,$surname,$email,$phone,$subject,$source,$data_of_contact,$data_of_meeting,$result,$workshop,$brigade,$practice,$cv,$note);
    $insert->execute();
    echo "Inserted";
    $insert->close();
}

?>