<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta charset="utf-8" />
    <link rel="stylesheet" href="\CSS\Main System\homepagestyle.css" />
    <link rel="stylesheet" href="\CSS\General\headerstyle.css" />
    <link rel="stylesheet" href="\CSS\General\menubuttonstyle.css" />
    <link rel="stylesheet" href="\CSS\General\mainstyle.css" />
    <title>Homepage</title>
    <link rel="shortcut icon" href="\Photos/favicon.ico" />
    <style type="text/css">

        .auto-style3 {
            margin: auto;
            width: 20%;
            height: 100%;
        }

        .auto-style4 {
            background-color: white;
            width: 100%;
            margin: auto auto;
            height: 100%;
        }

    </style>
</head>
<body>
    <!-- Black header box -->
    <div class="blackheaderright">
        <img src="\Photos\rmslogo.png" />
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
                        <li>Homepage</li>
                    </ul>
                </th>
            </tr>
        </table>
    </div>
    <div class="navigationtable">
        <table class="auto-style4">
            <tr>
                <td class="auto-style3"><a href="Main System\NewOrder.aspx" class="sidebarbutton" style="width: 100%; height: auto">New Order</a></td>
                <td class="auto-style3"><a href="Main System\Orders.aspx" class="sidebarbutton" style="width: 100%; height: auto">Placed Orders</a></td>
                <td class="auto-style3"><a href="Main System\Products.aspx" class="sidebarbutton" style="width: 100%; height: auto">Products</a></td>
                <td class="auto-style3"><a href="Main System\Customers.aspx" class="sidebarbutton" style="width: 100%; height: auto">Customers</a></td>
                <td class="auto-style3"><a href="User guide\GuideHomepage.aspx" class="sidebarbutton" style="width: 100%; height: auto">User Guide</a></td>
            </tr>
        </table>
    </div>

    <!-- Main content -->
    <div class="maintext">
        <p class="text" style="height: 22px">Welcome to the order system. Choose the section you want from the top of the page</p>
    </div>
</body>
</html>
