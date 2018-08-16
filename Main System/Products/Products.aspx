<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Main_System_Products_Products" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no, width=device-width" /> 
    <link rel="stylesheet" href="\CSS\General\mainstyle.css" />
    <link rel="stylesheet" href="\CSS\General\headerstyle.css" />
    <link rel="stylesheet" href="\CSS\General\menubuttonstyle.css" />
    <link rel="stylesheet" href="\CSS\General\navigationstyle.css" />
    <script src="scripts/jquery.responsivetable.min.js"></script> 
    <title>Customers</title>
    <link rel="shortcut icon" href="\Photos\favicon.ico" />
</head>
<body>
    <!-- Header -->
    <!-- Black header box -->
    <div class="blackheaderright">
        <img src="\Photos/rmslogo.png" alt="RMS Logo" style="width:10%; height:auto; float:right;" />
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
                        <li><a href="\">Main System</a></li>
                        <li>Products</li>
                    </ul>
                </th>
            </tr>
        </table>
    </div>

    <div class="navigationtable">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3"><a href="ProductView.aspx" class="sidebarbutton" style="width: 100%; height: auto">View Products</a></td>
                <td class="auto-style3"><a href="ProductAdd.aspx" class="sidebarbutton" style="width: 100%; height: auto">Add a Product</a></td>
            </tr>
        </table>
    </div>
    <div class="maintext">
        <p class="text">Welcome to the Products section of the system. Please choose the appropriate section from the bar above.</p>
    </div>
</body>
</html>
