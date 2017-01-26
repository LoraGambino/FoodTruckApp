<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true" CodeFile="userdashboard.aspx.cs" Inherits="userdashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="inside">
    <div>You are logged in as: <asp:Label ID="userSession" runat="server" Text="Label"></asp:Label></div>
    <div style="margin-top: 20px; margin-bottom: 20px;"><span class="text">User Dashboard</span></div>
    <asp:Button ID="userFoodButton" class="btn btn-default btn-lg" runat="server" OnClick="userFoodButton_Click" Text="Find Food" />
    <asp:Button ID="userReviewButton" class="btn btn-default btn-lg" runat="server" OnClick="userReviewButton_Click" Text="Leave a Review" />
    <asp:Button ID="userEventsButton" class="btn btn-default btn-lg" runat="server" OnClick="userEventsButton_Click" Text="Events" />
    <div style="margin-top:10px"><asp:Button ID="signOutButton" CssClass="btn btn-default btn-lg" runat="server" Text="Sign Out" OnClick="signOutButton_Click" /></div>
    </div>
</asp:Content>

