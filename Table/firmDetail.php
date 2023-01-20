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
    <title><?php echo $firmValues["name"]. " Detail";?></title>
</head>
<body>
    <form action="updateFirm.php" method="post">
        <input type='hidden' name='id' <?php echo "value='".$id."'"; ?>>
        
        <label for="active">Active:</label>
        <input type="checkbox" name="active" onclick="checkboxHelper(this)" <?php if($firmValues["active"] == 1){echo "checked";} echo " value='".$firmValues["active"]."'";?>>

        <label for="name">Name:</label>
        <input type="text" name="name" <?php echo "value='".$firmValues["name"]."'";?>>

        <label for="surname">Surname:</label>
        <input type="text" name="surname" <?php echo "value='".$firmValues["surname"]."'";?>>

        <label for="email">E-mail:</label>
        <input type="email" name="email" id="" <?php echo "value='".$firmValues["email"]."'";?>>

        <label for="phone">Phone number:</label>
        <input type="text" name="phone" <?php echo "value='".$firmValues["phone"]."'";?>>

        <label for="subject">Subject:</label>
        <select name="subject" id="">
            <option value="1" <?php if($firmValues["subject_id"] == 1){echo "selected";} ?> ><?php echo $subjects[1];?></option>
            <option value="2" <?php if($firmValues["subject_id"] == 2){echo "selected";} ?>><?php echo $subjects[2];?></option>
            <option value="3" <?php if($firmValues["subject_id"] == 3){echo "selected";} ?>><?php echo $subjects[3];?></option>
        </select>

        <label for="source">Source:</label>
        <input type="text" name="source" <?php echo "value='".$firmValues["source"]."'"; ?>>

        <label for="date_of_contact">Date of contact:</label>
        <input type="date" name="date_of_contact" id="" <?php echo "value='".$firmValues["date_of_contact"]."'"; ?>>

        <label for="date_of_2_contact">Date of 2nd contact:</label>
        <input type="date" name="date_of_2_contact" id="" <?php echo "value='".$firmValues["date_of_2_contact"]."'"; ?>>

        <label for="date_of_meeting">Date of meeting:</label>
        <input type="date" name="date_of_meeting" <?php echo "value='".$firmValues["date_of_meeting"]."'"; ?>>

        <label for="result">Result:</label>
        <input type="textarea" name="result" <?php echo "value='".$firmValues["result"]."'"; ?>>

        <label for="workshop">Workshop:</label>
        <input type="text" name="workshop" <?php echo "value='".$firmValues["workshop"]."'" ?>>

        <label for="brigade">Brigáda:</label>
        <input type="text" name="brigade" <?php echo "value='".$firmValues["brigade"]."'"; ?>>

        <label for="practice">Practice:</label>
        <input type="text" name="practice" <?php echo "value='".$firmValues["practice"]."'"; ?>>

        <label for="cv">CV:</label>
        <input type="checkbox" name="cv" onclick="checkboxHelper(this)" <?php if($firmValues["cv"] == 1){echo "checked";} echo " value='".$firmValues["cv"]."'"; ?>>

        <label for="note">Poznámka:</label>
        <textarea name="note" id="" cols="40" rows="4">
            <?php echo $firmValues["note"]; ?>
        </textarea>

        <input type="submit" value="Uložit">
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