<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Orders.aspx.vb" Inherits="ASPX_Files_OrderView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="\CSS\General\mainstyle.css" />
    <link rel="stylesheet" href="\CSS\General\headerstyle.css" />
    <link rel="stylesheet" href="\CSS\General\menubuttonstyle.css" />
    <title>Orders</title>
    <link rel="shortcut icon" href="\Photos\favicon.ico" />
</head>
<body>
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
                        <li>Orders</li>
                    </ul>
                </th>
            </tr>
        </table>
  </div>
    <form id="form1" runat="server">
        <div>
        </div>
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AzureICT-SYSTEMConnectionString %>" SelectCommand="SELECT * FROM [Order Details]"></asp:SqlDataSource>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Order ID" DataSourceID="SqlDataSource1" ForeColor="Black" Width="100%" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="Order ID" HeaderText="Order ID" ReadOnly="True" SortExpression="Order ID" />
                <asp:BoundField DataField="Product ID" HeaderText="Product ID" SortExpression="Product ID" />
                <asp:BoundField DataField="Tracking Number" HeaderText="Tracking Number" SortExpression="Tracking Number" />
                <asp:BoundField DataField="Unit Price" HeaderText="Unit Price" SortExpression="Unit Price" />
                <asp:BoundField DataField="Customer ID" HeaderText="Customer ID" SortExpression="Customer ID" />
            </Columns>
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
