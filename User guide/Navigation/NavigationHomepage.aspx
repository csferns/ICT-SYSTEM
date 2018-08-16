<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NavigationHomepage.aspx.vb" Inherits="User_guide_GuideNavigation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta charset="utf-8" />
    <link rel="stylesheet" href="\CSS\Guide\orderrecordstyle.css" />
    <link rel="stylesheet" href="\CSS\General\mainstyle.css" />
    <link rel="stylesheet" href="\CSS\General\headerstyle.css" />
    <link rel="stylesheet" href="\CSS\General\menubuttonstyle.css" />
    <link rel="stylesheet" href="\CSS\General\navigationstyle.css" />
    <title>User guide: Visual Basic Order Record System</title>
    <link rel="shortcut icon" href="\Photos/favicon.ico" />
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
                        <li><a href="\Default.aspx">Main System</a></li>
                        <li><a href="\User Guide\GuideHomepage.aspx">Guide Homepage</a></li>
                        <li>Navigation</li>
                    </ul>
                </th>
            </tr>
        </table>
    </div>

    <div class="navigationtable">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3"><a href="NavigationOrders.aspx" class="sidebarbutton">Orders</a></td>
                <td class="auto-style3"><a href="NavigationProducts.aspx" class="sidebarbutton">Products</a></td>
                <td class="auto-style3"><a href="NavigationCustomers.aspx" class="sidebarbutton">Customers</a></td>
            </tr>
        </table>
    </div>

    <!-- Content -->
    <div class="maintext">
        <p class="text">This is the section of the user guide that tackles navigating the system. In this section, it will explain how to get round the main system, and where things are located.</p>
        <p class="text">To learn more about getting to each section, click the relevant tab at the top of the page.</p>
    </div>
</body>
</html>
