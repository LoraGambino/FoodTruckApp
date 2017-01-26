<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true" CodeFile="TruckOpenProfile.aspx.cs" Inherits="TruckOpenProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


      <div id="map" class="">
            </div>

            <div>THis is other stuff. </div>
     




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


</asp:Content>

