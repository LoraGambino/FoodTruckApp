<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true" CodeFile="userConfirmation.aspx.cs" Inherits="userConfirmation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="inside">
    <div class="text" style="margin-bottom:20px;">Thanks! Your form has been submitted!</div><br /><br /><br />
    <div class="text" style="margin-bottom:20px;">User Dashboard</div><br />
    <asp:ImageButton ID="dashboardButton" runat="server" Height="96px" ImageUrl="~/Pics/truckLogo.png" OnClick="dashboardButton_Click" Width="119px" />
    </div>
</asp:Content>

