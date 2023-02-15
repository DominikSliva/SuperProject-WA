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
$phone_number = str_replace(" ", "", $form_data["phone"]);

$check_sql = "select * from firm where name=".$form_data["name"].";";
$check_result = $conn -> query($check_sql);
if ($check_result) {
    if (mysqli_num_rows($check_result) > 0) {
        echo '<html>
            <head>
                <meta charset="UTF-8">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <script defer src="https://kit.fontawesome.com/54a65f4c40.js" crossorigin="anonymous"></script>
                <!-- Bootstrap-->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js" integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD" crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js" integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD" crossorigin="anonymous"></script>
                <link rel="stylesheet" href="../style.css">
            </head>
            <body>
                    <nav class="navbar bg-body-tertiary p-0">
                        <div class="container-fluid ">
                        <svg xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.dev/svgjs" width="10%" height="10%" viewBox="0 0 1000 750"><rect width="1000" height="750" fill=transparent></rect><g transform="matrix(0.834,0,0,0.834,82.49454545454546,115.4193570850203)"><svg viewBox="0 0 396 247" data-background-color="transparent" preserveAspectRatio="xMidYMid meet" height="623" width="1000" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><g id="tight-bounds" transform="matrix(1,0,0,1,0.2400000000000091,-0.09999999999999432)"><svg viewBox="0 0 395.52 247.2" height="247.2" width="395.52"><g><svg></svg></g><g><svg viewBox="0 0 395.52 247.2" height="247.2" width="395.52"><g transform="matrix(1,0,0,1,39.55199999999999,50.72876917736896)"><svg viewBox="0 0 316.416 145.74246164526207" height="145.74246164526207" width="316.416"><g><svg viewBox="0 0 316.416 145.74246164526207" height="145.74246164526207" width="316.416"><g><svg viewBox="0 0 316.416 145.74246164526207" height="145.74246164526207" width="316.416"><g><svg viewBox="0 0 316.416 145.74246164526207" height="145.74246164526207" width="316.416"><g><svg viewBox="0 0 316.416 145.74246164526207" height="145.74246164526207" width="316.416"><g><svg viewBox="0 0 316.416 145.74246164526207" height="145.74246164526207" width="316.416"><g transform="matrix(1,0,0,1,0,0)"><svg width="316.416" viewBox="2.8600001335144043 -32.400001525878906 70.33000183105469 32.400001525878906" height="145.74246164526207" data-palette-color="#135ed7"><path d="M13.65 0L2.86 0 2.86-32.4 13.65-32.4 13.65 0ZM30.49 0L15.36 0 15.36-6.47 20.7-6.47 20.7-10.57 30.49-10.57 30.49 0ZM53.02 0L33.81-32.4 45.29-32.4 53.98-17.99 60.81-29.71 60.81-13.4 53.02 0ZM73.19 0L62.4 0 62.4-32.4 73.19-32.4 73.19 0ZM43.87 0L33.79 0 33.79-29.39 43.87-12.48 43.87 0Z" opacity="1" transform="matrix(1,0,0,1,0,0)" fill="#135ed7" class="undefined-text-0" data-fill-palette-color="primary" id="text-0"></path></svg></g></svg></g></svg></g></svg></g><g></g></svg></g></svg></g></svg></g><g><path xmlns="http://www.w3.org/2000/svg" d="M0 247.2v-247.2h395.52v247.2zM382.377 234.057v-220.914h-369.234v220.914z" fill="transparent" fill-rule="nonzero" stroke="none" stroke-width="1" stroke-linecap="butt" stroke-linejoin="miter" stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0" font-family="none" font-weight="none" font-size="none" text-anchor="none" style="mix-blend-mode: normal" data-fill-palette-color="tertiary"></path></g></svg></g><defs></defs></svg><rect width="395.52" height="247.2" fill="none" stroke="none" visibility="hidden"></rect></g></svg></g></svg>
                    
                        <a href="../table.php" class="me-4 p-2 border rounded"><i class="fas fa-reply"> Zpět</i></a>  
                    </div>
                    </nav>
                    <h1 class="text-center mx-auto rounded mt-4 bg-danger text-white w-25">!Firma již existuje!</h1>  
            </body>  
        </html>';
        $conn -> close();
    } 
    else {
        
        
        
        $query = "insert into firm(active, name, surname, email, phone, subject_id, source, date_of_contact, date_of_2_contact, date_of_meeting, result, workshop, brigade, practice, cv, note)
                 values(".$form_data["active"].", ".$form_data["name"].", ".$form_data["surname"].
                 ", ".$form_data["email"].", ".$phone_number.", ".$form_data["subject"].
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