<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TruckProfile.aspx.cs" Inherits="TruckProfile" %>

<!DOCTYPE html>
<html>
  <head>
    <title>Geocoding service</title>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
      <link href="CSS/bootstrap.min.css" rel="stylesheet" />
    <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 70%;
        /*width: 100%;*/
        margin-left:20px;
        margin-right:20px;
        padding: 0;
      }
      #floating-panel {
        position: absolute;
        top: 10px;
        left: 25%;
        z-index: 5;
        background-color: #fff;
        padding: 5px;
        border: 1px solid #999;
        text-align: center;
        font-family: 'Roboto','sans-serif';
        line-height: 30px;
        padding-left: 10px;
      }


      
    </style>
  </head>
  <body>
    <%--<div id="floating-panel">
      <input id="address" type="textbox" value="Sydney, NSW">
      <input id="submit" type="button" value="Geocode">
    </div--%>

        
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


     
      



  </body>
</html>
