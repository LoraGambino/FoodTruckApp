<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true" CodeFile="passwordconfirmation.aspx.cs" Inherits="passwordconfirmation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div>
    
        Thanks! Your form has been submitted.
        <asp:Button ID="confirmLoginButton" runat="server" OnClick="confirmLoginButton_Click" Text="Login" />
    
    </div>


</asp:Content>

