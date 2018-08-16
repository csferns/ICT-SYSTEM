<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Printing.aspx.cs" Inherits="Main_System_Printing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no, width=device-width" /> 
    <link rel="stylesheet" href="\CSS\General\mainstyle.css" />
    <link rel="stylesheet" href="\CSS\General\headerstyle.css" />
    <link rel="stylesheet" href="\CSS\General\menubuttonstyle.css" />
    <link rel="stylesheet" href="\CSS\General\navigationstyle.css" />
    <link rel="stylesheet" href="\CSS\General\printstyle.css" media="print"/>
    <script src="scripts/jquery.responsivetable.min.js"></script> 
    <title>Invoice</title>
    <link rel="shortcut icon" href="\Photos\favicon.ico" />
</head>
<body>
    <script>
        function printpage() {
            window.print()
        }
    </script>
    <form id="form1" runat="server">
        <!-- Header -->
        <!-- Black header box -->
        <div class="blackheaderright">
            <img src="\Photos/rmslogo.png" alt="RMS Logo" style="width: 10%; height: auto; float: right;" />
            <h1 class="title">Order Record System</h1>
        </div>

        <div class="no-print">
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
                                <li>Invoice</li>
                            </ul>
                        </th>
                    </tr>
                </table>
            </div>

            <div class="navigationtable">
            </div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AzureICT-SYSTEMConnectionString %>" SelectCommand="SELECT * FROM [Order Details]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AzureICT-SYSTEMConnectionString %>" SelectCommand="SELECT [Customer ID] AS Customer_ID, [Company Name] AS Company_Name, [Address Line 1] AS Address_Line_1, [Address Line 2] AS Address_Line_2, [Location], [Postcode] FROM [Customers]"></asp:SqlDataSource>
        <div class="maintext">
            <h2>Order Details</h2>
            <asp:DetailsView ID="DetailsView2" runat="server" AllowPaging="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" Font-Names="'lato',sans-serif" ForeColor="Black" GridLines="Horizontal" Height="100%" Width="100%" AutoGenerateRows="False" DataKeyNames="Order ID">
                <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="Order ID" HeaderText="Order ID" ReadOnly="True" SortExpression="Order ID" ItemStyle-Width="50%"/>
                    <asp:BoundField DataField="Product ID" HeaderText="Product ID" SortExpression="Product ID" />
                    <asp:BoundField DataField="Tracking Number" HeaderText="Tracking Number" SortExpression="Tracking Number" />
                    <asp:BoundField DataField="Unit Price" HeaderText="Unit Price" SortExpression="Unit Price" />
                    <asp:BoundField DataField="Customer ID" HeaderText="Customer ID" SortExpression="Customer ID" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                    <asp:BoundField DataField="Order Date" HeaderText="Order Date" SortExpression="Order Date" />
                </Fields>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            </asp:DetailsView>
            <br />
            <h2>Customer Details</h2>
            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource2" Font-Names="'lato',sans-serif" ForeColor="Black" GridLines="Horizontal" Height="100%" Width="100%" DataKeyNames="Customer_ID">
                <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="Customer_ID" HeaderText="Customer_ID" SortExpression="Customer_ID" ReadOnly="True" ItemStyle-Width="50%"/>
                    <asp:BoundField DataField="Company_Name" HeaderText="Company_Name" SortExpression="Company_Name" />
                    <asp:BoundField DataField="Address_Line_1" HeaderText="Address_Line_1" SortExpression="Address_Line_1" />
                    <asp:BoundField DataField="Address_Line_2" HeaderText="Address_Line_2" SortExpression="Address_Line_2" />
                    <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                    <asp:BoundField DataField="Postcode" HeaderText="Postcode" SortExpression="Postcode" />
                </Fields>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            </asp:DetailsView>
            <br />
            <div class="no-print">
                <asp:Button ID="Button1" runat="server" OnClientClick="printpage()" Text="Print" />
            </div>
            
        </div>
    </form>
</body>
</html>