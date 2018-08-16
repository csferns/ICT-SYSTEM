<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ProductView.aspx.vb" Inherits="Main_System_Products_ProductView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="\CSS\General\mainstyle.css" />
    <link rel="stylesheet" href="\CSS\General\headerstyle.css" />
    <link rel="stylesheet" href="\CSS\General\menubuttonstyle.css" />
    <link rel="stylesheet" href="\CSS\General\navigationstyle.css" />
    <title>View Product</title>
    <link rel="shortcut icon" href="\Photos\favicon.ico" />
    </head>
<body>
    <!-- Header -->
    <!-- Black header box -->
    <div class="blackheaderright">
        <img src="\Photos/rmslogo.png" alt="RMS Logo" style="width:10%;height:auto; float:right;" />
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
                        <li>Products</li>
                    </ul>
                </th>
            </tr>
        </table>
    </div>

    <div class="navigationtable">

    </div>

    <form id="form1" runat="server">
        <div class="maintext">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AzureICT-SYSTEMConnectionString %>" SelectCommand="SELECT * FROM [Products]" DeleteCommand="DELETE FROM Products WHERE ProductID = @ProductID">
                <DeleteParameters>
                    <asp:Parameter Name="ProductID" />
                </DeleteParameters>
            </asp:SqlDataSource>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Product ID" DataSourceID="SqlDataSource1" ForeColor="Black" Width="100%" table-layout="fixed" word-wrap="break-word" AllowPaging="True" BorderColor="#CCCCCC" GridLines="Horizontal">
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
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="Product ID" DataSourceID="SqlDataSource2" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <li style="background-color: #FAFAD2; color: #284775;">Product ID:
                    <asp:Label ID="Product_IDLabel" runat="server" Text='<%# Eval("[Product ID]") %>' />
                    <br />
                    Product Name:
                    <asp:Label ID="Product_NameLabel" runat="server" Text='<%# Eval("[Product Name]") %>' />
                    <br />
                    Product Catagory:
                    <asp:Label ID="Product_CatagoryLabel" runat="server" Text='<%# Eval("[Product Catagory]") %>' />
                    <br />
                    Product Price:
                    <asp:Label ID="Product_PriceLabel" runat="server" Text='<%# Eval("[Product Price]") %>' />
                    <br />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                </li>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <li style="background-color: #FFCC66; color: #000080;">Product ID:
                    <asp:Label ID="Product_IDLabel1" runat="server" Text='<%# Eval("[Product ID]") %>' />
                    <br />
                    Product Name:
                    <asp:TextBox ID="Product_NameTextBox" runat="server" Text='<%# Bind("[Product Name]") %>' />
                    <br />
                    Product Catagory:
                    <asp:TextBox ID="Product_CatagoryTextBox" runat="server" Text='<%# Bind("[Product Catagory]") %>' />
                    <br />
                    Product Price:
                    <asp:TextBox ID="Product_PriceTextBox" runat="server" Text='<%# Bind("[Product Price]") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </li>
            </EditItemTemplate>
            <EmptyDataTemplate>
                No data was returned.
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <li style="">Product ID:
                    <asp:TextBox ID="Product_IDTextBox" runat="server" Text='<%# Bind("[Product ID]") %>' />
                    <br />
                    Product Name:
                    <asp:TextBox ID="Product_NameTextBox" runat="server" Text='<%# Bind("[Product Name]") %>' />
                    <br />
                    Product Catagory:
                    <asp:TextBox ID="Product_CatagoryTextBox" runat="server" Text='<%# Bind("[Product Catagory]") %>' />
                    <br />
                    Product Price:
                    <asp:TextBox ID="Product_PriceTextBox" runat="server" Text='<%# Bind("[Product Price]") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </li>
            </InsertItemTemplate>
            <ItemSeparatorTemplate>
                <br />
            </ItemSeparatorTemplate>
            <ItemTemplate>
                <li style="background-color: #FFFBD6; color: #333333;">Product ID:
                    <asp:Label ID="Product_IDLabel" runat="server" Text='<%# Eval("[Product ID]") %>' />
                    <br />
                    Product Name:
                    <asp:Label ID="Product_NameLabel" runat="server" Text='<%# Eval("[Product Name]") %>' />
                    <br />
                    Product Catagory:
                    <asp:Label ID="Product_CatagoryLabel" runat="server" Text='<%# Eval("[Product Catagory]") %>' />
                    <br />
                    Product Price:
                    <asp:Label ID="Product_PriceLabel" runat="server" Text='<%# Eval("[Product Price]") %>' />
                    <br />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                </li>
            </ItemTemplate>
            <LayoutTemplate>
                <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                    <li runat="server" id="itemPlaceholder" />
                </ul>
                <div style="text-align: center; background-color: #FFCC66; font-family: Verdana, Arial, Helvetica, sans-serif; color: #333333;">
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <li style="background-color: #FFCC66; font-weight: bold; color: #000080;">Product ID:
                    <asp:Label ID="Product_IDLabel" runat="server" Text='<%# Eval("[Product ID]") %>' />
                    <br />
                    Product Name:
                    <asp:Label ID="Product_NameLabel" runat="server" Text='<%# Eval("[Product Name]") %>' />
                    <br />
                    Product Catagory:
                    <asp:Label ID="Product_CatagoryLabel" runat="server" Text='<%# Eval("[Product Catagory]") %>' />
                    <br />
                    Product Price:
                    <asp:Label ID="Product_PriceLabel" runat="server" Text='<%# Eval("[Product Price]") %>' />
                    <br />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                </li>
            </SelectedItemTemplate>
        </asp:ListView>

    </form>
</body>
</html>