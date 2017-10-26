var locations =[
{lat: 33.9416, lng: -118.4085}, //lax
{lat:22.3186, lng:114.1796}, //hk
{lat: 18.7061, lng: 98.9817}, //chiang mai
{lat: 19.0760, lng: 72.8777}, //mumbai
{lat: -26.2041, lng: 28.0473}, //johannesberg
{lat: -34.6037, lng: -58.3816}, //buenos aires
{lat: 40.7128, lng: -74.0059} //nyc
]

function testTest(){
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 3,
    center: {lat:22.3186, lng:114.1796}
  });

  var markers = locations.map(function(location) {
      return new google.maps.Marker({
        position: location,
        map : map
    });
  });
}
