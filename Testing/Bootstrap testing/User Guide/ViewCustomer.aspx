<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewCustomer.aspx.cs" Inherits="Bootstrap_testing_User_Guide_ViewCustomer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Own stylesheet import -->
    <link rel="stylesheet" href="../CSS/StyleSheet.css" />

    <!-- Ability for the page to be resized -->
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Bootstrap import -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
    <!-- Page title -->
    <title>Bootstrap testing - Guide - View Customers</title>
    
</head>
<body>
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
                        <th><a href="\Bootstrap testing\User Guide\Invoice.aspx" class="header">Invoice</a></th>
                        <th><a href="\Bootstrap testing\User Guide\ViewOrder.aspx" class="header">View Orders</a></th>
                        <th><a href="\Bootstrap testing\User Guide\ViewProduct.aspx" class="header">View Products</a></th>
                        <th><a href="\Bootstrap testing\User Guide\ViewCustomer.aspx" class="header">View Customers</a></th>
                        <th><a href="\" class="header">Legacy Site</a></th>
                    </tr>
                    <tr>
                        <th><a href="\Bootstrap testing\User Guide\Default.aspx" class="header">User Guide</a></th>
                        <th></th>
                        <th></th>
                        <th><a href="\Bootstrap testing\User Guide\AddOrder.aspx" class="header">Add Orders</a></th>
                        <th><a href="\Bootstrap testing\User Guide\AddProduct.aspx" class="header">Add Products</a></th>
                        <th><a href="\Bootstrap testing\User Guide\AddCustomer.aspx" class="header">Add Customers</a></th>
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
    <div class="header-navigation-mobile">
        <a href="\Bootstrap testing\Default.aspx" class="header">Homepage</a><br />
        <a href="\Bootstrap testing\User Guide\Invoice.aspx" class="header">Invoice</a><br />
        <a href="\Bootstrap testing\User Guide\ViewOrder.aspx" class="header">View Orders</a><br />
        <a href="\Bootstrap testing\User Guide\AddOrder.aspx" class="header">Add Orders</a><br />
        <a href="\Bootstrap testing\User Guide\ViewProduct.aspx" class="header">View Products</a><br />
        <a href="\Bootstrap testing\User Guide\AddProduct.aspx" class="header">Add Products</a><br />
        <a href="\Bootstrap testing\User Guide\ViewCustomer.aspx" class="header">View Customers</a><br />
        <a href="\Bootstrap testing\User Guide\AddCustomer.aspx" class="header">Add Customers</a><br />
        <a href="\Bootstrap testing\User Guide\Default.aspx" class="header">User Guide</a><br />
        <a href="\" class="header">Legacy Site</a><br />
    </div>
    <div class="main">
        <p class="page-text">This part of the user guide shows how to view customers on the database.<br />From the homepage or any page on the system, you need to go onto the <b>View Customers</b> section on the navigation bar on the top of the page. <br />The page looks like this:<br /></p>
        <img style="border: 1px solid black; width: 65%;" src="Guide Screenshots/View Customer Screen.png" />
        <p class="page-text">The page also has a <i>PRINT</i> button at the bottom of the page for easy printing of the items on the table.</p>
    </div>
</body>
</html>

