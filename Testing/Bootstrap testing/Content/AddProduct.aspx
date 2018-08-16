<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="Bootstrap_testing_Content_AddProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../CSS/StyleSheet.css" />

    <!-- Bootstrap import -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>

    <!-- Page title -->
    <title></title>
    
</head>
<body>
    <?php

    ?>
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
        
    </div>
</body>
</html>