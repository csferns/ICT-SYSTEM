<?php
try {
    $conn = new PDO("sqlsrv:server = tcp:cameronsict.database.windows.net,1433; Database = ICT-SYSTEM", "serveradmin", "{your_password_here}");
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}
catch (PDOException $e) {
    print("Error connecting to SQL Server.");
    die(print_r($e));
}

$tsql = 
?>