<?php
if(isset($_POST["name"])){
    include_once("../conn.php");

    $json = $_POST["firms_in_event"];
    $temp = json_decode($json);
    $firms = $temp->{'array'};
    $name = $_POST["name"];
    $description = $_POST["description"];
    $time_start = $_POST["time_start"];

    $insert = $conn->prepare("INSERT INTO events (name,description,time_start) VALUES (?,?,?)");
    $insert->bind_param("sss", $name,$description,$time_start);
    if($insert->execute()){
        $last_id = $conn->insert_id;
        foreach($firms as $firm){
            $sql = "INSERT INTO firms_in_event(event_id,firm_id) values($last_id,$firm)";
            if ($conn->query($sql) === TRUE) {
            } else {
                echo "Error: " . $sql . "<br>" . $conn->error;
            }
        }
        header("Location:/events/tableEvents.php");
    }else{
        echo $conn->error;
    }
}
?>