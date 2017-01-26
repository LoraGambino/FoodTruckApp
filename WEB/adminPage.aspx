<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true" CodeFile="adminPage.aspx.cs" Inherits="adminPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
    
    <div>
        <div style="margin-top: 20px; margin-bottom: 20px;"><span class="text"> Welcome Admin! You are the all powerful king. </span></div><br />
            <%--This is the gridview that displays all of the trucks information, editable for the admin--%>
            <div class="adminGV">
                <asp:GridView ID="truckGV" runat="server" AutoGenerateColumns="False" DataKeyNames="truckID" DataSourceID="truckGVdata" AllowPaging="True" AllowSorting="True">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"  />
                        <asp:BoundField DataField="truckID" HeaderText="truckID" InsertVisible="False" ReadOnly="True" SortExpression="truckID" />
                        <asp:BoundField DataField="truckName" HeaderText="truckName" SortExpression="truckName" />
                        <asp:BoundField DataField="ownerFirst" HeaderText="ownerFirst" SortExpression="ownerFirst" />
                        <asp:BoundField DataField="ownerLast" HeaderText="ownerLast" SortExpression="ownerLast" />
                        <asp:BoundField DataField="ownerEmail" HeaderText="ownerEmail" SortExpression="ownerEmail" />
                        <asp:BoundField DataField="ownerPassword" HeaderText="ownerPassword" SortExpression="ownerPassword" />
                        <asp:BoundField DataField="ownerPhone" HeaderText="ownerPhone" SortExpression="ownerPhone" />
                        <asp:BoundField DataField="twitter" HeaderText="twitter" SortExpression="twitter" />
                        <asp:BoundField DataField="facebook" HeaderText="facebook" SortExpression="facebook" />
                        <asp:BoundField DataField="instagram" HeaderText="instagram" SortExpression="instagram" />
                        <asp:BoundField DataField="location" HeaderText="location" SortExpression="location" />
                        <asp:BoundField DataField="truckBio" HeaderText="truckBio" SortExpression="truckBio" />
                        <asp:BoundField DataField="truckPIN" HeaderText="truckPIN" SortExpression="truckPIN" />
                        <asp:BoundField DataField="isValid" HeaderText="isValid" SortExpression="isValid" />
                    </Columns>
                </asp:GridView>
            </div>
        <asp:SqlDataSource ID="truckGVdata" runat="server" ConnectionString="<%$ ConnectionStrings:FoodTruckDBConnectionString %>" SelectCommand="SELECT [truckID], [truckName], [ownerFirst], [ownerLast], [ownerEmail], [ownerPassword], [ownerPhone], [twitter], [facebook], [instagram], [location], [truckBio], [truckPIN], [isValid] FROM [truck]" DeleteCommand="DELETE FROM [truck] WHERE [truckID] = @truckID" InsertCommand="INSERT INTO [truck] ([truckName], [ownerFirst], [ownerLast], [ownerEmail], [ownerPassword], [ownerPhone], [twitter], [facebook], [instagram], [location], [truckBio], [truckPIN], [isValid]) VALUES (@truckName, @ownerFirst, @ownerLast, @ownerEmail, @ownerPassword, @ownerPhone, @twitter, @facebook, @instagram, @location, @truckBio, @truckPIN, @isValid)" UpdateCommand="UPDATE [truck] SET [truckName] = @truckName, [ownerFirst] = @ownerFirst, [ownerLast] = @ownerLast, [ownerEmail] = @ownerEmail, [ownerPassword] = @ownerPassword, [ownerPhone] = @ownerPhone, [twitter] = @twitter, [facebook] = @facebook, [instagram] = @instagram, [location] = @location, [truckBio] = @truckBio, [truckPIN] = @truckPIN, [isValid] = @isValid WHERE [truckID] = @truckID">
            <DeleteParameters>
                <asp:Parameter Name="truckID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="truckName" Type="String" />
                <asp:Parameter Name="ownerFirst" Type="String" />
                <asp:Parameter Name="ownerLast" Type="String" />
                <asp:Parameter Name="ownerEmail" Type="String" />
                <asp:Parameter Name="ownerPassword" Type="String" />
                <asp:Parameter Name="ownerPhone" Type="String" />
                <asp:Parameter Name="twitter" Type="String" />
                <asp:Parameter Name="facebook" Type="String" />
                <asp:Parameter Name="instagram" Type="String" />
                <asp:Parameter Name="location" Type="String" />
                <asp:Parameter Name="truckBio" Type="String" />
                <asp:Parameter Name="truckPIN" Type="Int32" />
                <asp:Parameter Name="isValid" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="truckName" Type="String" />
                <asp:Parameter Name="ownerFirst" Type="String" />
                <asp:Parameter Name="ownerLast" Type="String" />
                <asp:Parameter Name="ownerEmail" Type="String" />
                <asp:Parameter Name="ownerPassword" Type="String" />
                <asp:Parameter Name="ownerPhone" Type="String" />
                <asp:Parameter Name="twitter" Type="String" />
                <asp:Parameter Name="facebook" Type="String" />
                <asp:Parameter Name="instagram" Type="String" />
                <asp:Parameter Name="location" Type="String" />
                <asp:Parameter Name="truckBio" Type="String" />
                <asp:Parameter Name="truckPIN" Type="Int32" />
                <asp:Parameter Name="isValid" Type="Int32" />
                <asp:Parameter Name="truckID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>


        <br />
        <div class="adminGV">
            <%--This is the gridview that displays all of the users information, editable for the admin--%>
            <asp:GridView ID="userGV" runat="server" AutoGenerateColumns="False" DataKeyNames="userID" DataSourceID="userGVdata" AllowPaging="True" AllowSorting="True">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="userID" HeaderText="userID" InsertVisible="False" ReadOnly="True" SortExpression="userID" />
                    <asp:BoundField DataField="userEmail" HeaderText="userEmail" SortExpression="userEmail" />
                    <asp:BoundField DataField="userPassword" HeaderText="userPassword" SortExpression="userPassword" />
                    <asp:BoundField DataField="userFirst" HeaderText="userFirst" SortExpression="userFirst" />
                    <asp:BoundField DataField="userPIN" HeaderText="userPIN" SortExpression="userPIN" />
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="userGVdata" runat="server" ConnectionString="<%$ ConnectionStrings:FoodTruckDBConnectionString %>" DeleteCommand="DELETE FROM [user] WHERE [userID] = @userID" InsertCommand="INSERT INTO [user] ([userEmail], [userPassword], [userFirst], [userPIN]) VALUES (@userEmail, @userPassword, @userFirst, @userPIN)" SelectCommand="SELECT * FROM [user]" UpdateCommand="UPDATE [user] SET [userEmail] = @userEmail, [userPassword] = @userPassword, [userFirst] = @userFirst, [userPIN] = @userPIN WHERE [userID] = @userID">
                <DeleteParameters>
                    <asp:Parameter Name="userID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="userEmail" Type="String" />
                    <asp:Parameter Name="userPassword" Type="String" />
                    <asp:Parameter Name="userFirst" Type="String" />
                    <asp:Parameter Name="userPIN" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="userEmail" Type="String" />
                    <asp:Parameter Name="userPassword" Type="String" />
                    <asp:Parameter Name="userFirst" Type="String" />
                    <asp:Parameter Name="userPIN" Type="String" />
                    <asp:Parameter Name="userID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </div>

        <br />
        <div class="adminGV">
            <%--This is the gridview that displays all of the review information, editable for the admin--%>
            <asp:GridView ID="reviewGV" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="reviewID" DataSourceID="reviewGVdata">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="reviewID" HeaderText="reviewID" InsertVisible="False" ReadOnly="True" SortExpression="reviewID" />
                    <asp:BoundField DataField="truckName" HeaderText="truckName" SortExpression="truckName" />
                    <asp:BoundField DataField="comment" HeaderText="comment" SortExpression="comment" />
                    <asp:BoundField DataField="rating" HeaderText="rating" SortExpression="rating" />
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="reviewGVdata" runat="server" ConnectionString="<%$ ConnectionStrings:FoodTruckDBConnectionString %>" DeleteCommand="DELETE FROM [review] WHERE [reviewID] = @reviewID" InsertCommand="INSERT INTO [review] ([truckName], [comment], [rating]) VALUES (@truckName, @comment, @rating)" SelectCommand="SELECT * FROM [review]" UpdateCommand="UPDATE [review] SET [truckName] = @truckName, [comment] = @comment, [rating] = @rating WHERE [reviewID] = @reviewID">
                <DeleteParameters>
                    <asp:Parameter Name="reviewID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="truckName" Type="String" />
                    <asp:Parameter Name="comment" Type="String" />
                    <asp:Parameter Name="rating" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="truckName" Type="String" />
                    <asp:Parameter Name="comment" Type="String" />
                    <asp:Parameter Name="rating" Type="Int32" />
                    <asp:Parameter Name="reviewID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </div>

        


    </div>

</asp:Content>

