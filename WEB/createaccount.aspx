<%@ Page Title="" Language="C#" MasterPageFile="~/master.master"  UnobtrusiveValidationMode="None"AutoEventWireup="true" CodeFile="createaccount.aspx.cs" Inherits="createaccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
      <div style="margin-top: 20px; margin-bottom: 20px;"><span class="text">Create an account</span></div>
        <asp:RequiredFieldValidator ID="emailRequiredValidator" runat="server" ErrorMessage="Email field can't be blank" ControlToValidate="newEmailTextbox"></asp:RequiredFieldValidator>
        <asp:TextBox ID="newEmailTextbox" class="form-control" runat="server" placeholder="Email" ></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="passwordRequiredValidator" runat="server" ErrorMessage="Password field can't be blank" ControlToValidate="newPasswordTextbox"></asp:RequiredFieldValidator>
        <asp:TextBox ID="newPasswordTextbox" class="form-control" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="firstRequiredValidator" runat="server" ErrorMessage=" First name field can't be blank" ControlToValidate="newFirstTextbox"></asp:RequiredFieldValidator>
        <asp:TextBox ID="newFirstTextbox" class="form-control" runat="server" placeholder="First Name"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="pinRequiredValidator" runat="server" ErrorMessage="Recovery PIN field can't be blank" ControlToValidate="newPinTextbox"></asp:RequiredFieldValidator>
        <asp:TextBox ID="newPINTextbox" class="form-control" runat="server" placeholder="Recovery PIN" TextMode="Password"></asp:TextBox><br />
        <asp:Button ID="createAccountButton" CssClass="btn btn-default btn-lg" runat="server" Text="Create Account" OnClick="createAccountButton_Click" />
    </div>
</asp:Content>

