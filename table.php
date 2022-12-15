<?php
include_once("session.php");
if(isset($_GET["search"])){
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
    <link rel="stylesheet" href="tableStyle.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">
<link rel="stylesheet" href="editFirm/editFirmForm2.css?v=<?php echo filemtime("editFirm/editFirmForm2.css") ?>">">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>
  
   
   <script src="editFirm/edit.js"></script>
   <script src="ajax.js?v=<?php echo filemtime("ajax.js") ?>"></script>
  <script src="table.js?v=<?php echo filemtime("table.js") ?>"></script>
  <script src="clickRow.js?v=<?=time()?>"></script>
   <script src="select.js"></script>
     
    
    <title>CMR</title>
    <style>
    <?php
    include_once("conn.php");

    $sql = "SELECT name FROM hidden_columns";
    $result = $conn->query($sql);
    $style_string = "";
    $count = mysqli_num_rows($result);
    $i = 0;
    if ($result->num_rows > 0) {
      while($row = $result->fetch_assoc()) {
        $style_string .= ".". $row["name"];
        if($i != $count-1){
            $style_string .= ",";
        }
        $i++;
      }
    }
    if($count != 0){
    ?>
    <?php echo $style_string; ?>{
        display: none;
    }
        <?php
    }
        ?>
    </style>
    <script>
     url="<? echo "https://".$_SERVER['HTTP_HOST'];?>/";
    </script>
</head>
<body>

                <table id="basic" class="display">                         
                    <thead id="table-head">
                       
                        <tr>
                            <th><input type="checkbox" id="main-select"></th>
                            <th class="name">
                                Název
                            </th>
                            
                            <th class="surname">
                                
                                Kontaktní osoba
                                
                            </th>
                            <th class="email">
                                
                                Email
                                
                            </th>
                            <th class="active">
                                
                                Aktivní
                                
                            </th>
                            <th class="phone">
                                
                                Telefon
                                
                            </th>
                            <th class="subject_id">
                                
                                Obor
                                
                            </th>
                            <th class="source">
                                
                                Zdroj
                                
                            </th>

                            <th class="hidec date_of_contact">
                                
                                Datům 1. kontaktu
                                
                            </th>

                            <th class="hidec date_of_2_contact">
                            Datum 2. kontaktu
                                
                            </th>
                            <th class="hidec date_of_meeting">

                                
                                Datum posl. schůzky
                                
                            </th>
                            <th class="hidec result">

                                Výsledek
                                
                            </th>
                            <th class="brigade">
                                                               
                                Brigáda  2019
                                
                            </th>
                            <th class="workshop">
                                
                             WorkShop  2019
                                
                            </th>
                            <th class="practice">
                                
                                Praxe  2019
                                
                            </th>
                            <th class="cv">
                                
                                CV  2019
                                
                            </th>
                            <th class="note">
                                
                                Poznamka
                                
                            </th>
                            <?php                         
                            $sql = "SELECT  firm.id,firm.name,firm.surname,firm.email,firm.active,firm.phone,firm.source,firm.date_of_contact,firm.date_of_2_contact,firm.date_of_meeting,firm.result,firm.workshop,firm.brigade,firm.practice,firm.cv,firm.note,subject.name as subject";

                            $array_columns = array();
                            $columns = "SELECT id,name,type FROM columns";
                            $result = $conn->query($columns);

                            if ($result->num_rows > 0) {
                            while($row = $result->fetch_assoc()) {
                                $sql .= ",c". $row["id"];
                                array_push($array_columns,"c".$row["id"]);
                                ?>
                            <th class="<?php echo "c".$row["id"]; ?>  ">                    
                                <?php echo $row["name"]; ?>                             
                            </th>
                                <?php
                             }
                            } else {
                                echo "0 results";
}

                            $sql .= " FROM firm inner join subject on firm.subject_id = subject.id order by active desc, firm.name";
                            

                            ?>
                        </tr>
                    </thead>
                    <tbody>
                    <?php
                        
                        $result = $conn->query($sql);
                        $count = mysqli_num_rows($result);
        
                        while($row = $result->fetch_assoc()) {                  
                        ?>
                        
                            <tr id="<?php echo $row['id']; ?>" class="rownum<?php echo $row['id']; ?>">
                                <td><input type="checkbox" class="check" id="<?php echo $row['id']; ?>"></td>
                                <td class="name click" title="<?php echo $row["name"]; ?>"><?php echo $row["name"]; ?></td>
                                <td class="surname click" title="<?php echo $row["surname"]; ?>"><?php echo $row["surname"]; ?></td>
                                <td class="email click" title="<?php echo $row["email"]; ?>"><?php echo $row["email"]; ?></td>
                                <td class="active click" title="<?php echo $row["active"]; ?>"><?php echo $row["active"]; ?></td>
                                <td class="phone click" title="<?php echo $row["phone"]; ?>"><?php echo $row["phone"]; ?></td>
                                <td class="subject_id click" title="<?php echo $row["subject"]; ?>"><?php echo $row["subject"]; ?></td>
                                <td class="source click" title="<?php echo $row["source"]; ?>"><?php echo $row["source"]; ?></td>
                                <td class="date_of_contact hidec lick" title="<?php echo $row["date_of_contact"]; ?>"><?php echo $row["date_of_contact"]; ?></td>
                                <td class="date_of_meeting hidec click" title="<?php echo $row["date_of_meeting"]; ?>"><?php echo $row["date_of_meeting"]; ?></td>
                                <td class="date_of_2_contact hidec click" title="<?php echo $row["date_of_2_contact"]; ?>"><?php echo $row["date_of_2_contact"]; ?></td>
                                <td class="result  hidec click" title="<?php echo $row["result"]; ?>"><?php echo $row["result"]; ?></td>
                                <td class="brigade click" title="<?php echo $row["brigade"]; ?>"><?php echo $row["brigade"]; ?></td>
                                <td class="workshop click" title="<?php echo $row["workshop"]; ?>"><?php echo $row["workshop"]; ?></td>
                                <td class="practice click" title="<?php echo $row["practice"]; ?>"><?php echo $row["practice"]; ?></td>
                                <td class="cv click" title="<?php echo $row["cv"]; ?>"><?php echo $row["cv"]; ?></td>
                                <td class="note click"title="<?php echo $row["note"]; ?>"><?php echo $row["note"]; ?></td>
                                <?php
                                foreach($array_columns as $column_name){
                                    ?>
                                    <td class="<?php echo $column_name; ?> click"><?php echo $row[$column_name]; ?></td>
                                    <?php
                                }
                                ?>
                                </tr>
                            
        <?php
                        }
        ?>       
        </tbody>
        <tfoot></tfoot>
</table>
             
                </div>
       
       <div class="overlay">
       <button> x </button> 
<main>
<?php 
include "editFirm/editFirmForm2.php";?>
</main>

</div>
          

</body>
</html>