<html>
<head>
<?php
// PHP Data Objects(PDO) Sample Code:
try {
     $conn = new PDO("sqlsrv:server = tcp:cameronsict.database.windows.net,1433; Database = ICT-SYSTEM", "serveradmin", "Judge.eye12");
     $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}
catch (PDOException $e) {
    print("Error connecting to SQL Server.");
    die(print_r($e));
}

$productid = $_POST['PID'];
$productname = $_POST['PName'];
$productcatagory = $_POST['PCat'];
$productprice = $_POST['PPrice'];
$params = array($productid, $productname, $productcatagory, $productcatagory);

$tsql = "INSERT INTO Products (Product ID, Product Name, Product Catagory, Product Price) VALUES (?, ?, ?, ?);";

$result = sqlsrv_query($conn, $tsql, $params);

sqlsrv_close ($conn)
?>
</head>
<body>
<table>
	<tr>
		<td>Product ID is</td>
		<td><?php echo $productid ?></td>
	</tr>
	<tr>
		<td>Product Name is</td>
		<td><?php echo $productname ?></td>
	</tr>
	<tr>
		<td>Product Catagory is</td>
		<td><?php echo $productcatagory ?></td>
	</tr>
	<tr>
		<td>Product Price is</td>
		<td><?php echo $productprice ?></td>
	</tr>
</table>
<?php
echo "<br>"
echo $tsql;
?>
</body>
</html>