<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeFile="trucklogin.aspx.cs" Inherits="trucklogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="inside">
        <div style="margin-top: 20px; margin-bottom: 20px;"><span class="text">Sign In</span></div>
        <asp:RequiredFieldValidator ID="ownerEmailvalidator" runat="server" ErrorMessage="The email field can't be blank" ControlToValidate="ownerEmailTextbox"></asp:RequiredFieldValidator>
        <asp:TextBox ID="ownerEmailTextbox" CssClass="form-control" placeholder="Email" runat="server"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="ownerPasswordValidator" runat="server" ErrorMessage="The password field can't be blank" ControlToValidate="ownerPasswordTextbox"></asp:RequiredFieldValidator>
        <asp:TextBox ID="ownerPasswordTextbox" CssClass="form-control" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox><br />
        <asp:Button ID="loginButton" runat="server" CssClass="btn btn-default btn-lg" Text="Login" OnClick="truckLoginButton_Click" />
        <div style="margin-top: 20px;">
            <a href="createTruck.aspx">Create Account<br />
            <a href="resetTruckPassword.aspx">Forgot Password</a>
        </div>
    </div>
</asp:Content>

