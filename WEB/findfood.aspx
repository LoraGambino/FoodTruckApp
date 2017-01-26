<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true" CodeFile="findfood.aspx.cs" Inherits="findfood" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="inside">
            <asp:GridView ID="GridView1" class="mydatagrid" Width="600px" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" HorizontalAlign="Justify">
                <Columns>
                    <asp:CommandField SelectText="Profile" ShowSelectButton="True" ControlStyle-ForeColor="Black" />
                    <asp:BoundField DataField="truckName" HeaderText="Truck"  SortExpression="truckName" />
                    <asp:BoundField DataField="location" HeaderText="Location"  SortExpression="location" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FoodTruckDBConnectionString %>" SelectCommand="SELECT [truckName], [location] FROM [truck] WHERE ([isValid] = @isValid)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="1" Name="isValid" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
    </div>
</asp:Content>

