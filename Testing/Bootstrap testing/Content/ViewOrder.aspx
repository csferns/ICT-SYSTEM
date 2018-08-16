<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewOrder.aspx.cs" Inherits="Bootstrap_testing_Content_ViewOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../CSS/StyleSheet.css" />
    <link rel="stylesheet" href="../CSS/PrintStyle.css" media="print"/>

    <!-- Bootstrap import -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
    <!-- Page title -->
    <title></title>
    
</head>
<body>
    <script>
        function printpage() {
            window.print()
        }
    </script>
    <form id="form1" runat="server">
    <div class="no-print">
            <div class="header-container">
                <!-- Header element, logo section -->
                <div class="header-logo">
                    <p class="header-text">RMS Order System</p>
                    <p class="header-text">02380 816000</p>
                    <p class="header-text">contact@retail-manager.com</p>
                </div>
                <div class="header-navigation-desktop">
                    <div class="header-navigation-links">
                        <table style="width: 100%;">
                            <tr>
                                <th><a href="\Bootstrap testing\Default.aspx" class="header">Homepage</a></th>
                                <th></th>
                                <th><a href="\Bootstrap testing\Content\Invoice.aspx" class="header">Invoice</a></th>
                                <th><a href="\Bootstrap testing\Content\ViewOrder.aspx" class="header">View Orders</a></th>
                                <th><a href="\Bootstrap testing\Content\ViewProduct.aspx" class="header">View Products</a></th>
                                <th><a href="\Bootstrap testing\Content\ViewCustomer.aspx" class="header">View Customers</a></th>
                                <th><a href="\" class="header">Legacy Site</a></th>
                            </tr>
                            <tr>
                                <th><a href="\Bootstrap testing\User Guide\Default.aspx" class="header">User Guide</a></th>
                                <th></th>
                                <th></th>
                                <th><a href="\Bootstrap testing\Content\AddOrder.aspx" class="header">Add Orders</a></th>
                                <th><a href="\Bootstrap testing\Content\AddProduct.aspx" class="header">Add Products</a></th>
                                <th><a href="\Bootstrap testing\Content\AddCustomer.aspx" class="header">Add Customers</a></th>
                                <th></th>
                            </tr>
                        </table>
                    </div>
                    <div class="header-navigation-sitenav">
                        <table class="breadcrumbs-table">
                            <tr>
                                <th>
                                    <p class="navigation-text">You are here: </p>
                                </th>
                                <th>
                                    <ul class="navigation">
                                        <li class="navigation-content">Main System</li>
                                        <li class="navigation-content">View Orders</li>
                                    </ul>
                                </th>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="print">
            <div class="header-container">
                <p class="invoice-text">RMS Order Information</p>
                <p class="invoice-text">02380 816000</p>
                <p class="invoice-text">contact@retail-manager.com</p>
            </div>  
        </div>
        <div class="header-navigation-mobile">
            <a href="\Bootstrap testing\Default.aspx" class="header">Homepage</a><br />
            <a href="\Bootstrap testing\Content\Invoice.aspx" class="header">Invoice</a><br />
            <a href="\Bootstrap testing\Content\ViewOrder.aspx" class="header">View Orders</a><br />
            <a href="\Bootstrap testing\Content\AddOrder.aspx" class="header">Add Orders</a><br />
            <a href="\Bootstrap testing\Content\ViewProduct.aspx" class="header">View Products</a><br />
            <a href="\Bootstrap testing\Content\AddProduct.aspx" class="header">Add Products</a><br />
            <a href="\Bootstrap testing\Content\ViewCustomer.aspx" class="header">View Customers</a><br />
            <a href="\Bootstrap testing\Content\AddCustomer.aspx" class="header">Add Customers</a><br />
            <a href="\Bootstrap testing\User Guide\Default.aspx" class="header">User Guide</a><br />
            <a href="\" class="header">Legacy Site</a><br />
        </div>
    <div class="main">

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AzureICT-SYSTEMConnectionString %>" SelectCommand="SELECT * FROM [Order Details]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Order ID" DataSourceID="SqlDataSource1" Width="100%" ClientIDMode="AutoID" ForeColor="#333333">
            <Columns>
                <asp:BoundField DataField="Order ID" HeaderText="Order ID" ReadOnly="True" SortExpression="Order ID" />
                <asp:BoundField DataField="Product ID" HeaderText="Product ID" SortExpression="Product ID" />
                <asp:BoundField DataField="Tracking Number" HeaderText="Tracking Number" SortExpression="Tracking Number" />
                <asp:BoundField DataField="Unit Price" HeaderText="Unit Price" SortExpression="Unit Price" />
                <asp:BoundField DataField="Customer ID" HeaderText="Customer ID" SortExpression="Customer ID" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="Order Date" HeaderText="Order Date" SortExpression="Order Date" />
            </Columns>
            <EditRowStyle BackColor="White" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#3498DB" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <br />
        <div class="no-print">
            <asp:Button ID="Button1" runat="server" OnClientClick="printpage()" Text="Print" />
        </div>
    </div>
    </form>
</body>
</html>
