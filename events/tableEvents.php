<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../tableStyle.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>
    <script src="table.js"></script>
    <script src="./clickRow.js"></script>
    <script src="../select.js"></script>
    <title>Udalosti</title>
    <style>
        td{
    max-width: 500px;
  }
    </style>
</head>
<body>               
                    <table id="basic" class="display">
                    <thead id="table-head">                       
                        <tr>
                        <tr>
                            <th><input type="checkbox" id="main-select"></th>
                            <th>
                                Název
                            </th>
                            
                            <th>
                                
                                Firmy
                                
                            </th>
                            <th>
                                
                                Popis
                                
                            </th>
                            <th>
                                
                                Začátek Události
                                
                            </th>                          
                        </tr>
                    </thead>
                    <tbody>
                    <?php
                    include_once("../conn.php");
                    $sql = "SELECT events.id,events.name,events.description,events.time_start FROM events order by time_start";
                    $result = $conn->query($sql);
                    if ($result->num_rows > 0) {
                    
                    while($row = $result->fetch_assoc()) {                  
                        ?>
                        
                            <tr id="<?php echo $row['id']; ?>">
                            <td><input type="checkbox" class="check" id="<?php echo $row['id']; ?>"></td>
                                <td class="name click"><?php echo $row["name"]; ?></td>
                                <?php
                                    $sql2 = "SELECT firm.name FROM firms_in_event inner join firm on firms_in_event.firm_id = firm.id where firms_in_event.event_id = ". $row["id"];
                                    $result2 = $conn->query($sql2);
                                    $firms_text = "";
                                    if ($result2->num_rows > 0) {
                                      while($row2 = $result2->fetch_assoc()) {
                                        $firms_text .= $row2["name"] .", ";
                                      }
                                    } else {
                                        $firms_text = "0 results";
                                    }
                                    ?>
                                <td class="firm click" title="<?php echo $firms_text; ?>"><?php echo $firms_text; ?></td>
                                <td class="description click"><?php echo $row["description"]; ?></td>
                                <td class="time_start click"><?php echo $row["time_start"]; ?></td>                                                                                      
                                </tr>
                            
        <?php
                        }
                    }
        ?>       
        </tbody>
                </table>               
            <a class="bn49" href="addEventForm.php">Přidání události</a>
            <a class="bn49" href="/">Zpět na firmy</a>
           
</body>
</html>