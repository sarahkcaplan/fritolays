$(document).ready(function() {

});
var locations =[
  {lat: 33.9416, lng: -118.4085, name: 'LAX', picture: '../images/laxlays.jpg'},
  {lat:22.3186, lng:114.1796, name: 'Hong Kong', picture: '../images/hklays.jpg'},
  {lat: 18.7061, lng: 98.9817, name: 'Chiang Mai', picture: '../images/thailandlays.jpg'},
  {lat: 19.0760, lng: 72.8777, name: 'Mumbai', picture: '../images/mumbailays.jpg'},
  {lat: -26.2041, lng: 28.0473, name:'Johannesberg', picture: '../images/laxlays.jpg'},
  {lat: -34.6037, lng: -58.3816, name: 'Buenos Aires', picture: '../images/argentinalays.jpg'},
  {lat: 40.7128, lng: -74.0059, name: 'NYC', picture: '../images/newyorklays.jpg'}
]

function initMap(){
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 1,
    center: {lat:22.3186, lng:114.1796}
  });

  function markerPictureSearch(latLng, map, marker, contentString) {
    return function(){
      var infowindow = new google.maps.InfoWindow({
        content: contentString
      });
      infowindow.open(map, marker);
      var request = $.ajax({
        url: '/locations',
        data: latLng
      })

      request.done(function(response){
        $(".stores").a
      })

      request.fail(function(response){
        console.log(response);
        console.log("Well, this is embarrassing :[")
      })
    };
  }

  for(city in locations){
    var latLng = {lat: locations[city].lat, lng: locations[city].lng};
    var contentString = locations[city].picture;
    var marker = new google.maps.Marker({
      position: latLng,
      map : map
    });
    marker.addListener('click', markerPictureSearch(latLng, map, marker, contentString))
  }
};









