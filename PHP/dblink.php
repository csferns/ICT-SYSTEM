<?php
// PHP Data Objects(PDO) Sample Code:
try {
    $conn = new PDO("sqlsrv:server = tcp:cameronsict.database.windows.net,1433; Database = ICT-SYSTEM", "serveradmin", "{Judge.eye12}");
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}
catch (PDOException $e) {
    print("Error connecting to SQL Server.");
    die(print_r($e));
}

$productid = $_GET['PID'];
$productname = $_GET['PName'];
$productcatagory = $_GET['PCat'];
$productprice = $_GET['PPrice'];


$sql = "INSERT INTO Products VALUES ($productid, $productname, $productcatagory, $productprice)";


?>