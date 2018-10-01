<?php
$dbName = $_SERVER["DOCUMENT_ROOT"] . "System Database.accdb";
if (!file_exists($dbName)) {
    die("Could not find database file.");
}
$db = new PDO("odbc:DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=$dbName; Uid=; Pwd=;");

<?