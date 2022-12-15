<?php
include_once("conn.php");

if(isset($_GET["search"])){

$input = $_GET["search"];
$json = '{"columns":[';
$first = false;

$columns = "SELECT id,name,type FROM columns";
$result = $conn->query($columns);

$sql = "SELECT firm.id,firm.name,firm.surname,firm.email,firm.phone,firm.source,firm.date_of_contact,firm.date_of_meeting,firm.result,firm.workshop,firm.brigade,firm.practice,firm.cv,firm.note,subject.name as subject";
$array_columns = array();
if ($result->num_rows > 0) {
  while($row = $result->fetch_assoc()) {
    $sql .= ",c". $row["id"];
    array_push($array_columns,"c".$row["id"]);
    if($first) {
      $json .= ',';
    } else {
      $first = true;
    }
    $json .= '{"name":"c'.$row["id"].'"}';                   
  }
  }
$json .= '],"array": [';
$sql .= " FROM firm inner join subject on firm.subject_id = subject.id where firm.name like '%". $input."%' or firm.surname like '%". $input."%' limit 10";
$result = $conn->query($sql);
$count = mysqli_num_rows($result);


$i = 0;

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
          $json .= '{"id":"'.$row["id"].'","name":"'.$row["name"].'","surname":"'.$row["surname"].'","email":"'.$row["email"].'","phone":"'.$row["phone"].'","subject":"'.$row["subject"].'","source":"'.$row["source"].'","date_of_contact":"'.$row["date_of_contact"].'","date_of_meeting":"'.$row["date_of_meeting"].'","result":"'.$row["result"].'","workshop":"'.$row["workshop"].'","brigade":"'.$row["brigade"].'","practice":"'.$row["practice"].'","cv":"'.$row["cv"].'","note":"'.$row["note"].'"';
          foreach($array_columns as $column_name){
               $json .= ',"'.$column_name.'":"'.$row[$column_name].'"';
          }
            $json .= "}";
        if($i != $count-1){
        $json .= ",";
      }
      $i += 1;
    }
  } 
  $json .= "]}";
}

echo $json;



?>