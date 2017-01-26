<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true" CodeFile="truckdashboard.aspx.cs" Inherits="truckdashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="inside">
        <div>You are logged in as:
            <asp:Label ID="emailSession" runat="server" Text="Label"></asp:Label></div>
        <div style="margin-top: 20px; margin-bottom: 20px;"><span class="text">Truck Dashboard</span></div>
        <br />
        <asp:Button ID="truckOpenButton" class="btn btn-default btn-lg" runat="server" OnClick="truckOpenButton_Click" Text="Open/Update" />
        <asp:Button ID="truckCloseButton" class="btn btn-default btn-lg" runat="server" Text="Close" OnClick="truckCloseButton_Click" />
        <asp:Button ID="truckEditButton" class="btn btn-default btn-lg" runat="server" Text="Edit Info" OnClick="truckEditButton_Click" /><br />
        <div style="margin-top:10px"><asp:Button ID="signOutButton" CssClass="btn btn-default btn-lg" runat="server" Text="Sign Out" OnClick="signOutButton_Click" /></div>
    </div>
</asp:Content>

