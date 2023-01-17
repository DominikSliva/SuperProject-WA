<?php

session_start();

if (isset($_SESSION["is_logged"])) {
    if ($_SESSION["is_logged"] == true) {
        header("Location: table.php");
    }
}

if (isset($_POST["username"]) && isset($_POST["password"])  ) {
    include_once("conn.php");

    $conn = ConnectionSingleton::getConnection();

    $result = $conn -> query("SELECT count(*) as total from user WHERE username = '" . $_POST['username'] . "' AND password = '" . $_POST['password'] . "'");
    $data = mysqli_fetch_assoc($result);
    if ($data['total'] == 1){
        $_SESSION["is_logged"] = true;
        $_SESSION["username"] = $_POST['username'];
        header("Location: table.php");
        exit();
    } 
}
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LoginForm</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
</head>

<body>
    <form action="" method="POST">
        <h3>Přihlašovací Formulář</h3>

        <label for="username">Uživatelské Jméno</label>
        <input type="text" placeholder="Jmeno" name="username" id="username">

        <label for="password">Heslo</label>
        <input type="password" placeholder="heslo" name="password" id="password">

        <input type="submit" value="Přihlásit se">
    </form>

</body>

</html>