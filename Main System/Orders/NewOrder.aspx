﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewOrder.aspx.cs" Inherits="Main_System_NewOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="\CSS\General\mainstyle.css" />
    <link rel="stylesheet" href="\CSS\General\headerstyle.css" />
    <link rel="stylesheet" href="\CSS\General\menubuttonstyle.css" />
    <link rel="stylesheet" href="\CSS\General\navigationstyle.css" />
    <title>New Product</title>
    <link rel="shortcut icon" href="\Photos\favicon.ico" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 100%;
            float: left;
            border: 1px solid #000000;
        }
    </style>
    <script src="\JavaScript\SQL Query.js"></script>
</head>
<body>
    <!-- Header -->
    <!-- Black header box -->
    <div class="blackheaderright">
        <img src="\Photos/rmslogo.png" alt="RMS Logo" style="width: 10%; height: auto; float: right;" />
        <h1 class="title">Order Record System</h1>
    </div>

    <!-- Breadcrumbs -->
    <div class="navigation">
        <table>
            <tr>
                <th>
                    <p class="header">You are here: </p>
                </th>
                <th>
                    <ul class="breadcrumb">
                        <li><a href="\Default.aspx">Main System</a></li>
                        <li><a href="Main System\Orders.aspx">Orders</a></li>
                        <li>New Order</li>
                    </ul>
                </th>
            </tr>
        </table>
    </div>

    <div class="navigationtable">
    </div>

    <div class="maintext">
        <form id="form1" action="\PHP\dblink.php" method="get">
            <table class="auto-style1">
                <tr>
                    <td>Product ID</td>
                    <td><input id="PID" type="text" style="width: 100%;" /></td>
                </tr>
                <tr>
                    <td>Product Name</td>
                    <td><input id="PName" type="text" style="width: 100%;" /></td>
                </tr>
                <tr>
                    <td>Product Catagory</td>
                    <td><input id="PCat" type="text" style="width: 100%;" /></td>
                </tr>
                <tr>
                    <td>Product Price</td>
                    <td><input id="PPrice" type="text" style="width: 100%;" /></td>
                </tr>
            </table>
            <input id="Submit1" type="submit" value="Submit" />
        </form>
    </div>

</body>
</html>
