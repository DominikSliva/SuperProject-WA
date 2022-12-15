<?php
if(isset($_POST["id"])){
    include_once("../conn.php");
    $id = $_POST["id"];
    print_R($_POST);
    
    foreach ($_POST as $key => $value) {
        if($key != "id"){
            echo $sql = "UPDATE firm SET $key='".trim($value)."' WHERE id=$id";                                            

            if ($conn->query($sql) === TRUE) {
                echo "Record updated successfully $key ";
            } else {
                echo "Error updating record: " . $conn->error;
            }
        }
    }
}
?>