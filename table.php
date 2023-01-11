<?php
include_once("conn.php");
include_once("session.php");
if (isset($_GET["search"])) {
    $search_val = $_GET["search"];
    setcookie("search", $search_val, time() + (86400 * 0.5));
}

?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Cache-Control" content="no-store" />
    <meta http-equiv='cache-control' content='no-cache'>
    <meta http-equiv='expires' content='0'>
    <meta http-equiv='pragma' content='no-cache'>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script type="text/javascript" charset="utf8"
        src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>

    <link rel="stylesheet" href="Redesign/style.css">
    <script src="editFirm/edit.js"></script>
    <script src="ajax.js?v=<?php echo filemtime("ajax.js") ?>"></script>
    <script src="table.js?v=<?php echo filemtime("table.js") ?>"></script>
    <script src="clickRow.js?v=<?= time() ?>"></script>
    <script src="select.js"></script>
    <script defer src="https://kit.fontawesome.com/54a65f4c40.js" crossorigin="anonymous"></script>


    <title>CMR</title>
    <style>
        <?php
    
    $sql = "SELECT name FROM hidden_columns";
    $result = $conn->query($sql);
    $style_string = "";
    $count = mysqli_num_rows($result);
    $i = 0;
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $style_string .= "." . $row["name"];
            if ($i != $count - 1) {
                $style_string .= ",";
            }
            $i++;
        }
    }

    ?>
        
    </style>
    <!--<script>
        url = "<? echo "https://".$_SERVER['HTTP_HOST'];?>/";
    </script>-->
</head>

<body>

<?php 
include("navigation.php")
?>

<main id="main-content">
        <div class="action-bar">
            <div class="action-group">
                <a href="#" class="btn">
                    <i></i>
                    <p>Přidat firmu</p>
                </a>
                <a href="#" class="btn secondary">
                    <i class="fas fa-edit"></i>
                    <p>Upravit firmy</p>

                </a>
                <a href="#" class="btn danger disabled">
                    <i></i>
                    <p>Odstranit firmu</p>

                </a>
            </div>
            <div class="action-group">
                <a href="#" class="btn danger disabled">
                    <i></i>
                    <p>Odstranit firmu</p>
                </a>
            </div>
        </div>
        <table>
            <thead>
                <tr>
                    <th>
                        <input type="checkbox" id="MarkAll">
                    </th>
                    <th>
                        Název
                    </th>
                    <th>
                        Kontaktní osoba
                    </th>
                    <th>
                        Email
                    </th>
                    <th>
                        Aktivní
                    </th>
                    <th>
                        Telefon
                    </th>
                    <th>
                        Obor
                    </th>
                    <th>
                        Zdroj
                    </th>
                    <th>
                        Datum 1. kontaktu
                    </th>
                    <th>
                        Datum 2. kontaktu
                    </th>
                    <th>
                        Datum posl. schůzky
                    </th>
                    <th>
                        Výsledek
                    </th>
                    <th>
                        Brigáda 2019
                    </th>
                    <th>
                        Workshop 2019
                    </th>
                    <th>
                        Praxe 2019
                    </th>
                    <th>
                        CV 2019
                    </th>
                    <th>
                        Poznámka
                    </th>
                </tr>
            </thead>
            <tbody>
                <?php

                $sql = "SELECT f.id, `active`, f.name, `surname`, `email`, `phone`, s.name, `source`, `date_of_contact`, `date_of_2_contact`, `date_of_meeting`, `result`, `workshop`, `brigade`, `practice`, `cv`, `note` FROM firm as f LEFT JOIN subject as s ON f.subject_id = s.id";
                $result = $conn->query($sql);

                if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {
                ?>
                        <tr id="<?php echo $row['id'];?>">
                            <td><input type="checkbox" id="Mark_1"></td>
                            <td><?php echo $row['name'];?></td>
                            <td><?php echo $row['surname'];?></td>
                            <td><?php echo $row['email'];?></td>
                            <td><?php echo $row['phone'];?></td>
                            <td><?php echo $row['name'];?></td>
                            <td><?php echo $row['source'];?></td>
                            <td><?php echo $row['date_of_contact'];?></td>
                            <td><?php echo $row['date_of_2_contact'];?></td>
                            <td><?php echo $row['date_of_meeting'];?></td>
                            <td><?php echo $row['result'];?></td>
                            <td><?php echo $row['workshop'];?></td>
                            <td><?php echo $row['brigade'];?></td>
                            <td><?php echo $row['practice'];?></td>
                            <td><?php echo $row['cv'];?></td>
                            <td><?php echo $row['note'];?></td>
                        </tr>
                <?php
                    }
                }
                ?>
            </tbody>
        </table>
    </main>



    <div class="overlay">
        <button> x </button>
        <main>
            <?php
include "editFirm/editFirmForm2.php"; ?>
        </main>

    </div>


</body>

</html>