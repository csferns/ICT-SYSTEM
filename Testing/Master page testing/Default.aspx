<%@ Page Title="" Language="VB" MasterPageFile="MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="Master_page_testing_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="main">
        <table class="breadcrumbs-table">
            <tr>
                <th>
                    <p class="navigation-text">You are here: </p>
                </th>
            </tr>
            <tr>
                <th>
                    <ul class="navigation">
                        <li class="navigation-content">Main System</li>
                        <li class="navigation-content">View Orders</li>
                    </ul>
                </th>
            </tr>
        </table>
    </div>
    
</asp:Content>

