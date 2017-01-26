<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeFile="leavereview.aspx.cs" Inherits="leavereview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div style="margin-top: 20px; margin-bottom: 20px;"><span class="text">Leave a review</span></div>
        <asp:RequiredFieldValidator ID="truckRequiredValidator" runat="server" ErrorMessage="Please select a truck." ControlToValidate="truckButtonList"></asp:RequiredFieldValidator>
        <asp:RadioButtonList ID="truckButtonList" runat="server" Font-Bold="False" DataSourceID="truckRadio" DataTextField="truckName" DataValueField="truckName">
        </asp:RadioButtonList>
        <asp:SqlDataSource ID="truckRadio" runat="server" ConnectionString="<%$ ConnectionStrings:FoodTruckDBConnectionString %>" SelectCommand="SELECT [truckName] FROM [truck] WHERE ([isValid] = @isValid)">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="isValid" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:RequiredFieldValidator ID="commentRequiredValidator" runat="server" ErrorMessage="The comment field can't be blank." ControlToValidate="commentTextbox"></asp:RequiredFieldValidator>
        <asp:TextBox ID="commentTextbox" class="form-control" runat="server" TextMode="MultiLine"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="ratingRequiredValidator" runat="server" ErrorMessage="Please select a rating." ControlToValidate="ratingButtonList"></asp:RequiredFieldValidator><br />
        Rating
        <asp:RadioButtonList ID="ratingButtonList" runat="server" RepeatDirection="Horizontal" CellSpacing="-1" CellPadding="-1" Width="20">
            <asp:ListItem Value="1" class="radio-inline" style="margin-right: 20px">1</asp:ListItem>
            <asp:ListItem Value="2" class="radio-inline" style="margin-right: 20px">2</asp:ListItem>
            <asp:ListItem Value="3" class="radio-inline" style="margin-right: 20px">3</asp:ListItem>
            <asp:ListItem Value="4" class="radio-inline" style="margin-right: 20px">4</asp:ListItem>
            <asp:ListItem Value="5" class="radio-inline" style="margin-right: 20px">5</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Button ID="reviewButton" class="btn btn-default btn-md " runat="server" Text="Submit" OnClick="reviewButton_Click" />
    </div>
</asp:Content>

