<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true" CodeFile="editInfo.aspx.cs" Inherits="editInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <div style="margin-top: 20px; margin-bottom: 20px;"><span class="text">Edit Info</span></div>
        <asp:TextBox ID="editBioTB" class="form-control" placeholder="Tell us about yourself!" runat="server" TextMode="MultiLine"></asp:TextBox><br />

         <asp:TextBox ID="editFacebook" class="form-control" placeholder="Copy and paste your Facebook URL" runat="server" TextMode="Url"></asp:TextBox><br />

         <asp:TextBox ID="editTwitter" class="form-control" placeholder="Copy and paste your Twitter URL" runat="server" TextMode="Url"></asp:TextBox><br />

         <asp:TextBox ID="editInsta" class="form-control" placeholder="Copy and paste your Instagram URL" runat="server" TextMode="Url"></asp:TextBox><br />

        <asp:Button ID="updateBio" class="btn btn-default btn-lg" Text="Update Bio" runat="server" OnClick="updateBio_Click" /><br />
    </div>
</asp:Content>

