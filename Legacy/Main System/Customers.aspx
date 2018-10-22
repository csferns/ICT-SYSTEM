<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Customers.aspx.vb" Inherits="ASPX_Files_Customers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no, width=device-width" /> 
    <link rel="stylesheet" href="\CSS\General\mainstyle.css" />
    <link rel="stylesheet" href="\CSS\General\headerstyle.css" />
    <link rel="stylesheet" href="\CSS\General\menubuttonstyle.css" />
    <script src="scripts/jquery.responsivetable.min.js"></script> 
    <title>Customers</title>
    <link rel="shortcut icon" href="\Photos\favicon.ico" />
</head>
<body>
    <!-- Responsive table -->
    <script>
        $(document).ready(function () {
            // Default settings
            $('.myTable1').responsiveTable();

            // Custom settings
            $('.myTable2').responsiveTable({
                staticColumns: 2,
                scrollRight: true,
                scrollHintEnabled: true,
                scrollHintDuration: 2000
            });
        });  
    </script>

    <!-- Header -->
    <!-- Black header box -->
    <div class="blackheaderright">
        <img src="\Photos/rmslogo.png" alt="RMS Logo" align="right" style="width:10%;height:auto;" />
        <h1 class="title" align="left">Order Record System</h1>
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
                        <li><a href="\Default.aspx">Homepage</a></li>
                        <li>Customers</li>
                    </ul>
                </th>
            </tr>
        </table>
    </div>
    <form id="form1" runat="server">
        <div>
        </div>
        <div>
            <asp:SqlDataSource
            ID="SqlDataSource1" 
            runat="server" 
            ConnectionString="<%$ ConnectionStrings:AzureICT-SYSTEMConnectionString %>" 
            SelectCommand="SELECT * FROM [Customers]">  
            </asp:SqlDataSource>
        </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Width="100%">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
    </form>
</body>
</html>
