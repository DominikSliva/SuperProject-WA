<?php

include("../conn.php");

class TableModel
{

    private $tableName;
    private $sql;
    public $headers = array();
    public $rows = array();


    function __construct($tableName, $sql)
    {
        $this->tableName = $tableName;
        $this->sql = $sql;
        $conn = ConnectionSingleton::getConnection();
        $viewQuery = $conn->query($sql);
        $fields = mysqli_fetch_fields($viewQuery);

        foreach ($fields as $field) {
            array_push($this -> headers, $field->name);
        }
        
        while ($row = $viewQuery->fetch_assoc()) {
            array_push($this -> rows, new TableRow($row));
        }

    }

    function createTableHTML()
    {
        $tHead = "<thead><tr>";
        foreach ($this -> headers as $title){
            $tHead .= "<th>" . $title . "</th>";
        }
        $tHead .= "</tr></thead>";

        $tBody = "<tbody>";
        foreach ($this -> rows as $row){
            $tBody .= $row->createRowHtml();
        }
        $tBody .= "</tbody>";
        return "<table id=\"MainTable\">" . $tHead . $tBody . "</table>";
    }



}

class TableRow
{

    public $columns;

    function __construct($columns)
    {
        $this->columns = $columns;

    }

    function createRowHtml()
    {
        $rowData = "";

        foreach ($this->columns as $data) {
            $rowData .= "<td>" . $data . "</td>";
        }

        return "<tr>" . $rowData . "</tr>";
    }

}
