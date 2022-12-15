<?php

require_once "dbdriver.php";

Class Service {
private $OutputArray=array();
private $OutputJSON=array();
private $tab_firm="firm";
private $dbdrv;


public function __construct($conn) {
    
    $this->dbdrv=new dbdriver($conn);
    
}



public function getFirm($id) {

$id= intval($id);
return $this->dbdrv->selectWhere($this->tab_firm,"*"," where id=$id");
}



public function processRequest($input) {

$data= json_decode($input);

$idUser="";

}

/*
public function saveDrinks($drinks){

$res=0;

$userID = $drinks["user"][0]; 
for ($i=0;$i<count($drinks["type"]);$i++) {
    if ($drinks["type"][$i]==0) continue;
  $row[0]=date("Y-m-d");
  $row[1]=$userID;
  $row[2]=$i+1;
  $res += $this->dbdrv->insertRow($row);
}

if ($res==0) return -1;else return 1;


}
*/
/*
public function getSummaryOfDrinks() {

    $sql="SELECT types.typ, count(drinks.ID) as pocet,people.name as pocet FROM `drinks` JOIN people on drinks.id_people=people.ID JOIN types on drinks.id_types=types.ID group by types.typ";
    return $this->dbdrv->selectQ($sql);
}
*/
}//class

?>