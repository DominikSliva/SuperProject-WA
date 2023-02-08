<?php 
include("../conn.php");

$id = $_GET["id"];

$conn = ConnectionSingleton::getConnection();
$firmQuery = $conn -> query(
    "select * from firm where firm.id=$id");
$firmValues = mysqli_fetch_array($firmQuery);

$subjectQuery = $conn -> query("select * from subject");
while($subRow = mysqli_fetch_assoc($subjectQuery)){
    $subjects[$subRow["id"]] = $subRow["name"];

}

?>

<!DOCTYPE html>
<html>
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
    <link rel="stylesheet" href="style.css">
    <title><?php echo $firmValues["name"]. " Detail";?></title>
</head>
<body>
    <header>
        <nav class="navbar bg-body-tertiary">
            <div class="container-fluid ">
                
                <svg xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.dev/svgjs" width="10%" height="10%" viewBox="0 0 1000 750"><rect width="1000" height="750" fill=transparent></rect><g transform="matrix(0.834,0,0,0.834,82.49454545454546,115.4193570850203)"><svg viewBox="0 0 396 247" data-background-color="transparent" preserveAspectRatio="xMidYMid meet" height="623" width="1000" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><g id="tight-bounds" transform="matrix(1,0,0,1,0.2400000000000091,-0.09999999999999432)"><svg viewBox="0 0 395.52 247.2" height="247.2" width="395.52"><g><svg></svg></g><g><svg viewBox="0 0 395.52 247.2" height="247.2" width="395.52"><g transform="matrix(1,0,0,1,39.55199999999999,50.72876917736896)"><svg viewBox="0 0 316.416 145.74246164526207" height="145.74246164526207" width="316.416"><g><svg viewBox="0 0 316.416 145.74246164526207" height="145.74246164526207" width="316.416"><g><svg viewBox="0 0 316.416 145.74246164526207" height="145.74246164526207" width="316.416"><g><svg viewBox="0 0 316.416 145.74246164526207" height="145.74246164526207" width="316.416"><g><svg viewBox="0 0 316.416 145.74246164526207" height="145.74246164526207" width="316.416"><g><svg viewBox="0 0 316.416 145.74246164526207" height="145.74246164526207" width="316.416"><g transform="matrix(1,0,0,1,0,0)"><svg width="316.416" viewBox="2.8600001335144043 -32.400001525878906 70.33000183105469 32.400001525878906" height="145.74246164526207" data-palette-color="#135ed7"><path d="M13.65 0L2.86 0 2.86-32.4 13.65-32.4 13.65 0ZM30.49 0L15.36 0 15.36-6.47 20.7-6.47 20.7-10.57 30.49-10.57 30.49 0ZM53.02 0L33.81-32.4 45.29-32.4 53.98-17.99 60.81-29.71 60.81-13.4 53.02 0ZM73.19 0L62.4 0 62.4-32.4 73.19-32.4 73.19 0ZM43.87 0L33.79 0 33.79-29.39 43.87-12.48 43.87 0Z" opacity="1" transform="matrix(1,0,0,1,0,0)" fill="#135ed7" class="undefined-text-0" data-fill-palette-color="primary" id="text-0"></path></svg></g></svg></g></svg></g></svg></g><g></g></svg></g></svg></g></svg></g><g><path xmlns="http://www.w3.org/2000/svg" d="M0 247.2v-247.2h395.52v247.2zM382.377 234.057v-220.914h-369.234v220.914z" fill="transparent" fill-rule="nonzero" stroke="none" stroke-width="1" stroke-linecap="butt" stroke-linejoin="miter" stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0" font-family="none" font-weight="none" font-size="none" text-anchor="none" style="mix-blend-mode: normal" data-fill-palette-color="tertiary"></path></g></svg></g><defs></defs></svg><rect width="395.52" height="247.2" fill="none" stroke="none" visibility="hidden"></rect></g></svg></g></svg>
                
                <a href="../table.php"><i class="fas fa-reply"> Zpět</i></a>
                
                

            </div>
          </nav>
    </header>

    <form action="updateFirm.php" method="post" class="d-flex flex-column w-75 mx-auto align-items-center fs-6">
        <input type='hidden' name='id' <?php echo "value='".$id."'"; ?>>
        
        <div class="d-flex flex-row w-75 justify-content-between mt-2">
            <div class="d-flex">
                <label style="margin-right: 10px;" for="active">Aktivní</label>

                <div class="form-check form-switch">
                    <input class="form-check-input" type="checkbox" name="active" onclick="checkboxHelper(this)" <?php if($firmValues["active"] == 1){echo "checked";} echo " value='".$firmValues["active"]."'";?>>
                </div>

            </div>

            <div class="d-flex">
                <label style="margin-right: 10px;" for="cv">CV</label>
                <div class="form-check form-switch">
                    <input class="form-check-input" type="checkbox" name="cv" onclick="checkboxHelper(this)" <?php if($firmValues["cv"] == 1){echo "checked";} echo " value='".$firmValues["cv"]."'"; ?>>
                </div>
            </div>
        </div>

        <div class="d-flex flex-row w-75 justify-content-between">
            <div>
                <label for="name">Název</label>
                <br>
                <input class="border border-dark-subtle rounded p-1" type="text" name="name" <?php echo "value='".$firmValues["name"]."'";?>>
            </div>

            <div>
                <label for="surname">Zastupitel</label>
                <br>
                <input class="border border-dark-subtle rounded p-1" type="text" name="surname" <?php echo "value='".$firmValues["surname"]."'";?>>
            </div>
        </div>

        <div class="d-flex flex-row w-75 justify-content-between mt-2">
            <div>
                <label for="email">E-mail</label>
                <br>
                <input class="border border-dark-subtle rounded p-1" type="email" name="email" id="" <?php echo "value='".$firmValues["email"]."'";?>>
            </div>
            <div>
                <label for="phone">Telefon</label>
                <br>
                <input class="border border-dark-subtle rounded p-1" type="text" name="phone" <?php echo "value='".$firmValues["phone"]."'";?>>
            </div>
        </div>

        <div class="d-flex flex-row w-75 justify-content-between mt-2">
            <div>
            <label for="subject">Předmět</label>
                <br>
                <select name="subject" id="" class="bg-white p-1 border rounded border-dark-subtle">
                  <option value="1" <?php if($firmValues["subject_id"] == 1){echo "selected";} ?> ><?php echo $subjects[1];?></option>
                  <option value="2" <?php if($firmValues["subject_id"] == 2){echo "selected";} ?>><?php echo $subjects[2];?></option>
                  <option value="3" <?php if($firmValues["subject_id"] == 3){echo "selected";} ?>><?php echo $subjects[3];?></option>
                </select>
            </div>
            
            <div>
                <label for="source">Zdroj</label>
                <br>
                <input class="border border-dark-subtle rounded p-1" type="text" name="source" <?php echo "value='".$firmValues["source"]."'"; ?>>
            </div>
        </div>

        <div class="d-flex flex-row w-75 justify-content-between mt-2">
            <div>
                <label for="date_of_contact">Datum kontaktu</label>
                <input class="border border-dark-subtle rounded p-1" type="date" name="date_of_contact" id="" <?php echo "value='".$firmValues["date_of_contact"]."'"; ?>>
            </div>
            <div>
                <label for="date_of_2_contact">Datum 2. kontaktu</label>
                <input class="border border-dark-subtle rounded p-1" type="date" name="date_of_2_contact" id="" <?php echo "value='".$firmValues["date_of_2_contact"]."'"; ?>>
            </div>
            <div>
                <label for="date_of_meeting">Datum schůzky</label>
                <input class="border border-dark-subtle rounded p-1" type="date" name="date_of_meeting" <?php echo "value='".$firmValues["date_of_meeting"]."'"; ?>>
            </div>
        </div>
        
        <div class="d-flex flex-row w-75 justify-content-between mt-2">
            <div>
                <label for="result">Výsledek</label>
                <br>
                <input class="border border-dark-subtle rounded p-1" type="text" name="result" <?php echo "value='".$firmValues["result"]."'"; ?>>
            </div>
            <div>
                <label for="workshop">Workshop</label>
                <br>
                <input class="border border-dark-subtle rounded p-1" type="text" name="workshop" <?php echo "value='".$firmValues["workshop"]."'" ?>>
            </div>
        </div>

        <div class="d-flex flex-row w-75 justify-content-between mt-2">
            <div>
                <label for="brigade">Brigáda</label>
                <br>
                <input class="border border-dark-subtle rounded p-1" type="text" name="brigade" <?php echo "value='".$firmValues["brigade"]."'"; ?>>
            </div>
            <div>
                <label for="practice">Praxe</label>
                <br>
                <input class="border border-dark-subtle rounded p-1" type="text" name="practice" <?php echo "value='".$firmValues["practice"]."'"; ?>>
            </div>
        </div>            
        

        <div class="d-flex flex-column w-75 mt-2">
            <label for="note">Poznámka</label>
            <br>
            <textarea class="border border-dark-subtle rounded p-1" name="note" id="" cols="40" rows="4" class="w-100">
                <?php echo $firmValues["note"]; ?>
            </textarea>
        </div>

        <input type="submit" value="Uložit" class="w-25 mt-3 mx-auto btn btn-success"">
    </form>

    <script>
        const checkboxHelper = checkbox => {
            const output = checkbox.checked ? 1 : 0;
            console.log(output);
            checkbox.value = output;
        }
    </script>
    
</body>
</html>