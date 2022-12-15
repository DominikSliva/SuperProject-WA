<?
$array_columns = array();
$array_columns_names = array();
$array_columns_types = array();
$columns = "SELECT columns.id,columns.name, type_of_column.type FROM columns inner join type_of_column on columns.type = type_of_column.id";
$result = $conn->query($columns);

if ($result->num_rows > 0) {
while($row = $result->fetch_assoc()) {
    $sql .= ",c". $row["id"];
    array_push($array_columns,"c".$row["id"]);
    array_push($array_columns_names,$row["name"]);
    array_push($array_columns_types,$row["type"]);
 }
}



?>
<div id="dialog-confirm" title="Empty the recycle bin?" style="display:none">
  <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>These items will be permanently deleted and cannot be recovered. Are you sure?</p>
</div>
  <form action="" class="form" id="">
   

      <?php
      if(isset($_GET["data"])){
        ?>
         <label class="label required" for="name" style="color:green">Upraveno</label>
        <?php
      }
      ?>
    </p>
  <p class="field required">
    <label class="label required" for="name">Firma</label>
    <input class="text-input" id="name" name="name" required="" type="text" value="">
  </p>
  <p class="field half">
    <label class="label" for="surname">Kontaktní Osoba</label>
    <input class="text-input" name="surname" type="text" >
  </p>
  <p class="field half">
    <label class="label" for="email">E-mail</label>
    <input class="text-input" name="email" type="email" >
  </p>
  <p class="field half">
    <label class="label" for="phone">Telefon</label>
    <input class="text-input" name="phone" type="tel" >
  </p>
  <p class="field half">
    <label class="label" for="source">Zdroj</label>
    <input class="text-input" name="source" type="text" >
  </p>
  <div class="field half">
    <label class="label">Obor</label>
    <select class="select" name="subject_id">
   
      <?php
      $sql2 = "SELECT id, name FROM subject";
      $result2 = $conn->query($sql2);

      if ($result2->num_rows > 0) {
        while($row2 = $result2->fetch_assoc()) {
          if($row2["name"] != $row["subject"]){
         ?>
            <option value="<?php echo $row2["id"]; ?>"><?php echo $row2["name"]; ?></option>
         <?php
          }
        }
      }
      ?>
    </select>
  </div>
  <div class="field half">
    <label class="label">Aktivní</label>
        <input class="text-input" type="number" name="active"  >
  </div>
  <div class="field half">
    <label class="label">Datum 1. Kontaktu</label>
    <input class="text-input" name="date_of_contact" type="date" >
  </div>

  <div class="field half">
    <label class="label">Datum 2. Kontaktu</label>
    
    <input class="text-input"name="date_of_2_contact" type="date" >
  </div>

  <div class="field half">
    <label class="label">Datum Schůzky</label>
    <input class="text-input" name="date_of_meeting" type="date" >
  </div>

  <div class="field half">
    <label class="label">Výsledek</label>
    <input class="text-input" name="result" type="text" >
  </div>

  <div class="field half">
    <label class="label">Workshop</label>
    <input class="text-input" name="workshop" type="text" >
  </div>

  <div class="field half">
    <label class="label">Brigáda</label>
    <input class="text-input" name="brigade" type="text" >
  </div>

  <div class="field half">
    <label class="label">Praxe</label>
    <input class="text-input" name="practice" type="text" >
  </div>
  <div class="field half">
    <label class="label">CV</label>
    <select class="select" name="cv">
      <?php
      if($row["cv"] == 1){
        ?>
        <option >ANO</option>
        <option >NE</option>
        <?php
      }else {
        ?>
        <option >NE</option>
        <option >ANO</option>
        <?php
      }
      ?>
    </select>
  </div>
  <?php
  for($i=0;$i <count($array_columns);$i++){
    ?>
    <div class="field half">
    <label class="label"><?php echo $array_columns_names[$i]; ?></label>
    <input class="text-input" name="<?php echo $array_columns[$i]; ?>" type="<?php echo $array_columns_types[$i]; ?>" >
  </div>
    <?php
}
  ?>
  <p class="field">
    <label class="label" for="about">Poznámka</label>
    <textarea class="textarea" cols="50" id="about" name="note" rows="4"></textarea>
  </p>
  <p class="field buttons">
    <button class="button" id="send-button" >Uložit</button>

  </p>
  
  </form>

