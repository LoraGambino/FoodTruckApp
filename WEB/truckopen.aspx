<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true" CodeFile="truckopen.aspx.cs" Inherits="truckopen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <div style="margin-top: 20px; margin-bottom: 20px;"><span class="text">Open At This Location</span></div><br />
        <asp:TextBox ID="openAddress" class="form-control" runat="server"></asp:TextBox><br />
        <asp:Button ID="openButton" CssClass="btn btn-default btn-lg" runat="server" Text="Open" OnClick="openButton_Click" />

    
    </div>

</asp:Content>

