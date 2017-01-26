﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OpenTruckProfile.aspx.cs" Inherits="OpenTruckProfile" %>


<!DOCTYPE html>
<html>
  <head>
      <title> Profile </title>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
      <link href="CSS/bootstrap.min.css" rel="stylesheet" />
      <link href="CSS/TruckProfile.css" rel="stylesheet" />
  
  </head>
  <body class="background">
      <form id="form1" runat="server">
          <%--<div id="floating-panel">
      <input id="address" type="textbox" value="Sydney, NSW">
      <input id="submit" type="button" value="Geocode">
    </div--%>

      <div class="box3">
        <asp:Label ID="location"  CssClass="truckprof" runat="server" Text="Label"></asp:Label>
      </div>  

      <div class="box">
            
            <div id="map" class="">
            </div>
        </div>

      <div class="box2">
          <asp:Label ID="truckName" CssClass="truckprof" runat="server" Text="Label"></asp:Label><br />
          <asp:Label ID="truckBio"  CssClass=" text" runat="server" Text="Label"></asp:Label><br />
          <asp:Label ID="ownerPhone"  CssClass=" text" runat="server" Text="Label"></asp:Label>
          <br />
          <br />
          <br />
          <asp:ImageButton ID="FacebookButton" CSSClass="truckIMG" runat="server" Height="40px" ImageUrl="~/Pics/Facebook.png" Width="40px" OnClick="FacebookButton_Click" />
&nbsp;<asp:ImageButton ID="InstaButton" CSSClass="truckIMG" runat="server" Height="40px" ImageUrl="~/Pics/instagram.png" Width="40px" OnClick="InstaButton_Click" />
          <asp:ImageButton ID="TwitterButton" CSSClass="truckIMG" runat="server" Height="40px" ImageUrl="~/Pics/twitter.jpg" Width="40px" OnClick="TwitterButton_Click" />
          <br />
          

        &nbsp;<br />
          <br />
          <asp:GridView ID="GridView1" class="mydatagrid" HorizontalAlign="Center"  PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="truckProfileReviews">
              <Columns>
                  <asp:BoundField DataField="comment" HeaderText="Comment" SortExpression="comment" />
                  <asp:BoundField DataField="rating" HeaderText="Rating" SortExpression="rating" />
              </Columns>
          </asp:GridView>
          <asp:SqlDataSource ID="truckProfileReviews" runat="server" ConnectionString="Data Source=stillwaterfoodtruck.database.windows.net;Initial Catalog=FoodTruckDB;User ID=foodtruckadmin;Password=password1!" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [comment], [rating] FROM [review] WHERE ([truckName] = @truckName)">
              <SelectParameters>
                  <asp:SessionParameter Name="truckName" SessionField="selectedTruck" Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>
          </div>




      <script>
          var locationcheck = "<%=myAddress%>"
          if (locationcheck == "Closed") {
          }
          else {
              function initMap() {
                  var map = new google.maps.Map(document.getElementById('map'), {
                      zoom: 16,
                      center: { lat: 36.1156, lng: 97.0584 }
                  });
                  var geocoder = new google.maps.Geocoder();
                  window.onload = geocodeAddress(geocoder, map)
              }
          }
          function geocodeAddress(geocoder, resultsMap) {
              var address = "<%=myAddress%>"
          //var address = document.getElementById('address').value;
          geocoder.geocode({ 'address': address }, function (results, status) {
              if (status === 'OK') {
                  resultsMap.setCenter(results[0].geometry.location);
                  var marker = new google.maps.Marker({
                      map: resultsMap,
                      position: results[0].geometry.location
                  });
              } else {
                  alert('Geocode was not successful for the following reason: ' + status);
              }
          });
      }
      </script>
      <script async defer
          src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAkmrKVFt4BUDfMyfvC7_uHJ9HmpVCoe38&callback=initMap">
      </script>


     
      



      </form>


     
      



  </body>
</html>