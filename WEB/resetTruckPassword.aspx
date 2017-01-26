<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true"  UnobtrusiveValidationMode="None" CodeFile="resetTruckPassword.aspx.cs" Inherits="resetTruckPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div style="margin-top: 20px; margin-bottom: 20px;"><span class="text">Reset Password</span></div>
        <asp:RequiredFieldValidator ID="emailRequiredValidator" runat="server" ErrorMessage="Email field can't be blank." ControlToValidate="resetEmailTextbox"></asp:RequiredFieldValidator>
        <asp:TextBox ID="resetEmailTextbox" class="form-control" placeholder="Email" runat="server"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="pinRequiredValidator" runat="server" ErrorMessage="PIN field can't be blank." ControlToValidate="resetPINTextbox"></asp:RequiredFieldValidator>
        <asp:TextBox ID="resetPINTextbox" class="form-control" placeholder="Recovery PIN" runat="server" TextMode="Password"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="passwordRequiredValidator" runat="server" ErrorMessage="Password field can't be blank." ControlToValidate="newPasswordTextbox"></asp:RequiredFieldValidator>
        <asp:TextBox ID="newPasswordTextbox" class="form-control" placeholder="New Password" runat="server" TextMode="Password"></asp:TextBox><br />
        <asp:Button ID="resetPasswordButton" class="btn btn-default btn-lg" runat="server" Text="Reset Password" OnClick="resetPasswordButton_Click" />
    </div>
</asp:Content>

