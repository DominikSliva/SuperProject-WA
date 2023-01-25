<?php 
include("../conn.php");

$conn = ConnectionSingleton::getConnection();

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
    <title>Přidání noové firmy</title>
</head>
<body>
    <form action="addFirm.php" method="post">
        
        <label for="active">Active:</label>
        <input type="checkbox" name="active" onclick="checkboxHelper(this)" value="0">

        <label for="name">Name:</label>
        <input type="text" name="name">

        <label for="surname">Surname:</label>
        <input type="text" name="surname">

        <label for="email">E-mail:</label>
        <input type="email" name="email" id="">

        <label for="phone">Phone number:</label>
        <input type="text" name="phone">

        <label for="subject">Subject:</label>
        <select name="subject" id="">
            <option value="1"><?php echo $subjects[1];?></option>
            <option value="2"><?php echo $subjects[2];?></option>
            <option value="3"><?php echo $subjects[3];?></option>
        </select>

        <label for="source">Source:</label>
        <input type="text" name="source">

        <label for="date_of_contact">Date of contact:</label>
        <input type="date" name="date_of_contact" id="">

        <label for="date_of_2_contact">Date of 2nd contact:</label>
        <input type="date" name="date_of_2_contact" id="">

        <label for="date_of_meeting">Date of meeting:</label>
        <input type="date" name="date_of_meeting">

        <label for="result">Result:</label>
        <input type="textarea" name="result">

        <label for="workshop">Workshop:</label>
        <input type="text" name="workshop">

        <label for="brigade">Brigáda:</label>
        <input type="text" name="brigade">

        <label for="practice">Practice:</label>
        <input type="text" name="practice">

        <label for="cv">CV:</label>
        <input type="checkbox" name="cv" onclick="checkboxHelper(this)" value="0">

        <label for="note">Poznámka:</label>
        <textarea name="note" id="" cols="40" rows="4">
            
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