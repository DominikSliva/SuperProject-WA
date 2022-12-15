<?php
if(isset($_POST["ids"])){
    include_once("../conn.php");
    $json = $_POST["ids"];
    $ids = json_decode($json);
    $sql = "SELECT name,id from columns";
    $columns_names = "";
    $columns_names_ids = "";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
          $columns_names .= ";".$row["name"];
          $columns_names_ids .= ",c".$row["id"];
        }
      } else {    
      }
            $firm_attr = "firm.name,firm.surname,firm.email,firm.phone,firm.source,firm.date_of_contact,firm.date_of_2_contact,firm.date_of_meeting,firm.result,firm.workshop,firm.brigade,firm.practice,firm.cv,firm.note,subject.name as subject";
            $sql = "select $firm_attr $columns_names_ids from firm inner join subject on firm.subject_id = subject.id WHERE firm.id IN(";           
            for($x = 0;$x < count($ids->{'ids'});$x++){
                $sql .= $ids->{'ids'}[$x];
                if($x != count($ids->{'ids'})-1){
                    $sql .= ",";
                }
            }
            $sql.= ");";

$result = $conn->query($sql);
$csv = "name;surname;email;phone;source;date_of_contact;date_of_2_contact;date_of_meeting;result;workshop;brigade;practice;cv;note;subject". $columns_names. "\n";
if ($result->num_rows > 0) {
  while($row = $result->fetch_assoc()) {
    foreach ($row as $key => $value) {
        $csv .= $value . ";";
    }
    $csv .= "\n";
  }
} else {
  echo 0;
  exit();
}
$conn->close();

$file = "export.csv";
$txt = fopen($file, "w") or die("Unable to open file!");
fwrite($txt, iconv("UTF-8", "ISO-8859-1//TRANSLIT", $csv));
fclose($txt);
header("Content-Type: text/plain; charset=ISO-8859-1");
header('Content-Description: File Transfer');
header('Content-Disposition: attachment; filename='.basename($file));
header('Expires: 0');
header('Cache-Control: must-revalidate');
header('Pragma: public');
header('Content-Length: ' . filesize($file));
readfile($file);

}



?>