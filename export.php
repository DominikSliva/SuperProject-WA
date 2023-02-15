
<?php
include_once("conn.php");
$conn = ConnectionSingleton::getConnection();
mysqli_set_charset($conn, "utf8");

$query = $conn->query("SELECT firm.id AS ID, COALESCE(firm.name, '') AS 'Firma', IF(active = 1, 'ANO', 'NE') AS 'Aktivní', COALESCE(surname, '') AS 'Zastupitel', COALESCE(email, '') AS 'E-mail', COALESCE(phone, '') AS Telefon, subject.name AS Předmět, COALESCE(source, '') AS Zdroj, COALESCE(date_of_contact, '') AS 'Datum kontaktu', COALESCE(date_of_2_contact, '') AS 'Datum 2. kontaku', COALESCE(date_of_meeting, '') AS 'Datum schůzky', COALESCE(result, '') AS 'Výsledek', COALESCE(workshop, '') AS Workshop, COALESCE(brigade, '') AS 'Brigáda', COALESCE(practice, '') AS 'Praxe', IF(cv = 1, 'ANO', 'NE') AS 'CV', COALESCE(note, '') AS 'Poznámka' FROM firm INNER JOIN subject ON subject.id = subject_id ORDER BY firm.id");

if($query->num_rows > 0) {
    $delimiter = ",";
    $filename = "firms_data_" . date('Y-m-d') . ".csv";
    $f = fopen('php://memory', 'w');
    $fields = array('ID', 'Firma', 'Aktivní', 'Zastupitel', 'E-mail', 'Telefon', 'Předmět', 'Zdroj','Datum kontaktu','Datum 2. kontaku', 'Datum schůzky','Výsledek', 'Workshop','Brigáda','Praxe','Poznámka');
    fputcsv($f, $fields, $delimiter);
    while($row = $query->fetch_assoc()) {
        $lineData = array($row['ID'], $row['Firma'] ,$row['Aktivní'], $row['Zastupitel'], $row['E-mail'], $row['Telefon'], $row['Předmět'], $row['Zdroj'], $row['Datum kontaktu'], $row['Datum 2. kontaku'], $row['Datum schůzky'], $row['Výsledek'], $row['Workshop'],  $row['Brigáda'],  $row['Praxe'],  $row['Poznámka'] );
        fputcsv($f, $lineData, $delimiter);
    }
    fseek($f, 0);
    header('Content-Encoding: UTF-8');
    header('Content-Type: text/csv; charset=UTF-8');
    header('Content-Disposition: attachment; filename="' . $filename . '";');
    echo "\xEF\xBB\xBF"; // UTF-8 BOM
    fpassthru($f);
    exit;
}
?>
