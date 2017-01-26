<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeFile="userlogin.aspx.cs" Inherits="userlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div>
    
    <div style="margin-top: 20px; margin-bottom: 20px;"><span class="text">Sign In</span></div>
   <%-- <asp:Label ID="emailLabel" runat="server" Text="Email: " CssClass="control-label"></asp:Label>--%>
    <asp:RequiredFieldValidator ID="field" runat="server" ErrorMessage="The email field can't be blank." ControlToValidate="emailTextbox"></asp:RequiredFieldValidator>

    <asp:TextBox ID="emailTextbox" runat="server" class="form-control" placeholder="Email" ></asp:TextBox><br />


   <%-- <asp:Label ID="passwordLabel" runat="server" Text="Password: " CssClass="control-label"></asp:Label>--%>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="The password field can't be blank. " ControlToValidate="passwordTextbox"></asp:RequiredFieldValidator>
    <asp:TextBox ID="passwordTextbox" runat="server" class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox><br />
    <asp:Button ID="loginButton" CssClass="btn btn-default btn-lg" runat="server" Text="Login" OnClick="loginButton_Click" /><br />

    <div style="margin-top: 20px;">
    <a href="createaccount.aspx">Create Account<br />
    <a href="resetpassword.aspx">Forgot Password</a>
    </div>
        

    <%--Create Account
    Forgot pass--%>

</div>

</asp:Content>

