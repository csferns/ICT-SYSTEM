﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="GuideOrderView.aspx.vb" Inherits="User_guide_GuideOrderView" %>

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
    <!-- Black header box -->
    <div class="blackheaderright">
        <img src="data:image/png;base64,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" alt="RMS Logo" style="width:10%; height:auto; float:right;" />
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
                        <li><a href="GuideHomepage.aspx">Guide Homepage</a></li>
                        <li>Viewing an Order</li>
                    </ul>
                </th>
            </tr>
        </table>
    </div>

    <div class="navigationtable">

    </div>
    
    <!-- Content -->
    <div class="maintext">
        <p class="text">This is the section of the user guide that tackles viewing a recorded order on the system. In this section, it will explain how to record a customer order and save it to the database.</p>
    </div>
</body>
</html>