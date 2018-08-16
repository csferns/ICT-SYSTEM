<%@ Page Title="" Language="VB" MasterPageFile="~/Testing/Master page testing/MasterPage.master" AutoEventWireup="false" CodeFile="ViewOrder.aspx.vb" Inherits="Testing_Master_page_testing_Content_ViewOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
</asp:Content>

