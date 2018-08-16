<%@ Page Language="VB" AutoEventWireup="false" CodeFile="GuideDownload.aspx.vb" Inherits="User_guide_GuideDownload" %>

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
    <style type="text/css">

        .auto-style1 {
            background-color: white;
            width: 100%;
            margin: auto auto;
            height: 100%;
        }

        .auto-style3 {
            margin: auto;
            width: 20%;
            height: 100%;
        }

    </style>
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
                        <li><a href="GuideHomepage.aspx">Guide Homepage</a></li>
                        <li>Download</li>
                    </ul>
                </th>
            </tr>
        </table>
    </div>

    <div class="navigationtable">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3"><a href="https://corfehills-my.sharepoint.com/personal/13fernsc_corfehills_net/_layouts/15/guestaccess.aspx?docid=08cfe2725d98d4b108bcb36144df2f608&authkey=ARPmkneCavc9fr4ez5YmtCY&e=dce11589ab8242828ca1394dea43dcce" class="sidebarbutton">Word Online Document</a><br></td>
                <td class="auto-style3"><a href="User guide.docx" download class="sidebarbutton">Download as Word Document</a><br></td>
                <td class="auto-style3"><a href="User guide.pdf" download class="sidebarbutton">Download as a PDF Document</a><br></td> <!-- Not completed pdf yet -->
                <td class="auto-style3"><a href="mailto:13FernsC@corfehills.net?subject=RE: User guide: Visual Basic Order Record System&body=https://corfehills-my.sharepoint.com/personal/13fernsc_corfehills_net/_layouts/15/guestaccess.aspx?docid=08cfe2725d98d4b108bcb36144df2f608&authkey=ARPmkneCavc9fr4ez5YmtCY&e=dce11589ab8242828ca1394dea43dcce" class="sidebarbutton">Email the Document</a></td>
            </tr>
        </table>
    </div>

    <div class="maintext">
        <p class="text">This is the downloads section. Choose from the section to the left the option you would like to use to get a downloadable copy of this user guide.</p>
    </div>

</body>
</html>
