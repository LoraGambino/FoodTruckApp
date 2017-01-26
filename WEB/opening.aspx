<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true" CodeFile="opening.aspx.cs" Inherits="opening" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="inside" >
        <div style="margin-bottom:20px;"><span class="text">Who are you?</span></div><br/>
        <asp:Button ID="truckownerbutton" class="btn btn-default btn-lg" runat="server" Text="Truck Owner" OnClick="truckbutton_Click" />
        <asp:Button id="userbutton"  class="btn btn-default btn-lg" runat="server" text="User" onclick="userbutton_Click" /><br />
    </div>
</asp:Content>

