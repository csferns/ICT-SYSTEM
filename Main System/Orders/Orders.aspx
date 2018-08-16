<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Orders.aspx.cs" Inherits="Main_System_NewOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="\CSS\General\mainstyle.css" />
    <link rel="stylesheet" href="\CSS\General\headerstyle.css" />
    <link rel="stylesheet" href="\CSS\General\menubuttonstyle.css" />
    <link rel="stylesheet" href="\CSS\General\navigationstyle.css" />
    <title>New Product</title>
    <link rel="shortcut icon" href="\Photos\favicon.ico" />
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
                        <li>Orders</li>
                    </ul>
                </th>
            </tr>
        </table>
    </div>

    <div class="navigationtable">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3"><a href="ViewOrder.aspx" class="sidebarbutton" style="width: 100%; height: auto">View Order</a></td>
                <td class="auto-style3"><a href="AddOrder.aspx" class="sidebarbutton" style="width: 100%; height: auto">Add an Order</a></td>
            </tr>
        </table>
    </div>

    <div class="maintext">
        <p class="text">Welcome to the Orders section. Select the relevant section from the bar above.</p>
    </div>

</body>
</html>
