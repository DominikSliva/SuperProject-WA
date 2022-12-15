<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .columns-box {
            width: 30%;
        }
        .column-form {
            display: flex;
            flex-wrap: wrap;
            border: 1px solid black;
        }
        .column-item {
            width: 50%;
        }
        .column-submit {
           margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="columns-box">
        <form action="../addColumn.php">
        <h3>Přidat sloupec</h3>
        <div class="column-form">
            <div class="column-item">
                <label for="name_of_column">Název:</label><br>
                <input type="text" name="name_of_column">                
            </div>
        <div class="column-item">
            <!--<label for="type_of_column">Typ:</label><br>
            <select name="type_of_column">
                <option value="1">Text</option>
                <option value="2">Číslo</option>
            </select>-->
        </div>
        <div class="column-submit">
            <input type="submit" value="Přidat">
        </div>
        </div>
        </form>

        <form action="../removeColumn.php">
        <h3>Odebrat sloupec</h3>
        <div class="column-form">
        <div class="column-item">
            <label for="id_of_column">Slupce:</label><br>
            <select name="id_of_column" multiple>
                <?php
                include_once("../conn.php");
                $sql = "SELECT id,name FROM columns";
                $result = $conn->query($sql);

                if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    ?>
                    <option value="<?php echo $row["id"] ?>"><?php echo $row["name"] ?></option>
                    <?php
                }
                } else {
                    ?>

                    <option value="0"> Žádne sloupce</option>
                    <?php
                }
                ?>
            </select>
            </div>
            <div class="column-item">
                <input type="submit" value="Odstranit">
            </div>
        </div>
        </form>

    </div>
</body>
</html>