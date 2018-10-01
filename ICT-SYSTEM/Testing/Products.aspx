<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Testing_Products" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="\CSS\General\mainstyle.css" />
    <link rel="stylesheet" href="\CSS\General\headerstyle.css" />
    <link rel="stylesheet" href="\CSS\General\menubuttonstyle.css" />
    <title>View Product</title>
    <link rel="shortcut icon" href="\Photos\favicon.ico" />
    </head>
<body>
    <script>
        function getFormDetails() {
            a = document.getElementById("PID").value
            if (a = "") {
                window.alert("No value in box 'Product ID'!")
                console.log("No value in box 'Product ID'!")
            }
            b = document.getElementById("PName").value
            if (b = "") {
                window.alert("No value in box 'Product Name'!")
                console.log("No value in box 'Product Name'!")
            }
            c = document.getElementById("PCat").value
            if (c = "") {
                window.alert("No value in box 'Product Category'!")
                console.log("No value in box 'Product Category'!")
            }
            d = document.getElementById("PPrice").value
            if (d = "") {
                window.alert("No value in box 'Product Price'!")
                console.log("No value in box 'Product Price'!")
            }
        }
        function clearFields() {
            a = document.getElementById("PID").value = ''
            b = document.getElementById("PName").value = ''
            c = document.getElementById("PCat").value = ''
            d = document.getElementById("PPrice").value = ''
        }
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
                        <li>Products</li>
                    </ul>
                </th>
            </tr>
        </table>
    </div>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AzureICT-SYSTEMConnectionString %>" SelectCommand="SELECT * FROM [Products]" DeleteCommand="DELETE FROM Products WHERE ProductID = @ProductID">
                <DeleteParameters>
                    <asp:Parameter Name="ProductID" />
                </DeleteParameters>
            </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Product ID" DataSourceID="SqlDataSource1" ForeColor="Black" Width="100%" table-layout="fixed" word-wrap="break-word" AllowPaging="True" BorderColor="#CCCCCC" GridLines="Horizontal" Height="345px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="Product ID" HeaderText="Product ID" ReadOnly="True" SortExpression="Product ID" />
                <asp:BoundField DataField="Product Name" HeaderText="Product Name" SortExpression="Product Name" />
                <asp:BoundField DataField="Product Catagory" HeaderText="Product Catagory" SortExpression="Product Catagory" />
                <asp:BoundField DataField="Product Price" HeaderText="Product Price" SortExpression="Product Price" />
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
        </div>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AzureICT-SYSTEMConnectionString %>" DeleteCommand="DELETE FROM [Products] WHERE [Product ID] = @Product_ID" InsertCommand="INSERT INTO [Products] ([Product ID], [Product Name], [Product Catagory], [Product Price]) VALUES (@Product_ID, @Product_Name, @Product_Catagory, @Product_Price)" SelectCommand="SELECT * FROM [Products]" UpdateCommand="UPDATE [Products] SET [Product Name] = @Product_Name, [Product Catagory] = @Product_Catagory, [Product Price] = @Product_Price WHERE [Product ID] = @Product_ID">
            <DeleteParameters>
                <asp:Parameter Name="Product_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Product_ID" Type="Int32" />
                <asp:Parameter Name="Product_Name" Type="String" />
                <asp:Parameter Name="Product_Catagory" Type="String" />
                <asp:Parameter Name="Product_Price" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Product_Name" Type="String" />
                <asp:Parameter Name="Product_Catagory" Type="String" />
                <asp:Parameter Name="Product_Price" Type="Decimal" />
                <asp:Parameter Name="Product_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Product ID" DataSourceID="SqlDataSource2" ForeColor="Black" Height="50px" Width="300px">
            <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="Product ID" HeaderText="Product ID" ReadOnly="True" SortExpression="Product ID" />
                <asp:BoundField DataField="Product Name" HeaderText="Product Name" SortExpression="Product Name" />
                <asp:BoundField DataField="Product Catagory" HeaderText="Product Catagory" SortExpression="Product Catagory" />
                <asp:BoundField DataField="Product Price" HeaderText="Product Price" SortExpression="Product Price" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
        </asp:DetailsView>
    </form>
</body>
</html>
