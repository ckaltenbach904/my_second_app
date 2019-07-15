// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets

//= require activestorage
//= require turbolinks
//= require_tree

function initMap() {
  console.log(document.getElementById("map"));
  var myLatLng = { lat: 50.115126, lng: 8.538058 };
  var latlng = new google.maps.LatLng(50.115126, 8.538058);
  var map = new google.maps.Map(document.getElementById("map"), {
    center: latlng,
    zoom: 16
  });
  // The marker, positioned in FRA-Hoechst
  var marker = new google.maps.Marker({
    position: myLatLng,
    map: map,
    // title: "my office",
    animation: google.maps.Animation.DROP
    // icon: image
  });
}



