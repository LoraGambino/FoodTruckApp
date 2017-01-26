<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true" CodeFile="createTruck.aspx.cs" Inherits="createTruck" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <div style="margin-top: 20px; margin-bottom: 20px;"><span class="text">Register a truck</span></div>
        <asp:TextBox ID="ownerEmailTB" class="form-control" placeholder="Email" runat="server"></asp:TextBox><br />
        <asp:TextBox ID="ownerPasswordTB" class="form-control" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox><br />
        <asp:TextBox ID="truckPINTB" class="form-control" placeholder="PIN (Used to reset password)" runat="server"></asp:TextBox><br />
        <asp:TextBox ID="truckNameTB" class="form-control" placeholder="Truck Name" runat="server"></asp:TextBox><br />
        <asp:TextBox ID="truckBIOTB" class="form-control" placeholder="Tell us about your truck." runat="server" TextMode="MultiLine"></asp:TextBox><br />
        <asp:TextBox ID="ownerFirstTB" class="form-control" placeholder="Owner First Name" runat="server"></asp:TextBox><br />
        <asp:TextBox ID="ownerLastTB" class="form-control" placeholder="Owner Last Name" runat="server"></asp:TextBox><br />
        <asp:TextBox ID="ownerPhoneTB" class="form-control" placeholder="Phone number" runat="server"></asp:TextBox><br />
        <asp:Button ID="createTruckButton"  CssClass="btn btn-default btn-lg" runat="server" Text="Register" OnClick="createTruckButton_Click" />
    </div>
</asp:Content>

