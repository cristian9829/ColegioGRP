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
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery3
//= require popper
//= require bootstrap-sprockets

$(document).ready(function() {
  "use strict"; // Start of use strict

  // Smooth scrolling using jQuery easing
  $('a.js-scroll-trigger[href*="#"]:not([href="#"])').click(function() {
    if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
      if (target.length) {
        $('html, body').animate({
          scrollTop: (target.offset().top - 71)
        }, 1000, "easeInOutExpo");
        return false;
      }
    }
  });

  // Scroll to top button appear
  $(document).scroll(function() {
    var scrollDistance = $(this).scrollTop();
    if (scrollDistance > 100) {
      $('.scroll-to-top').fadeIn();
    } else {
      $('.scroll-to-top').fadeOut();
    }
  });

  // Closes responsive menu when a scroll trigger link is clicked
  $('.js-scroll-trigger').click(function() {
    $('.navbar-collapse').collapse('hide');
  });

  // Activate scrollspy to add active class to navbar items on scroll
  $('body').scrollspy({
    target: '#mainNav',
    offset: 80
  });

  // Collapse Navbar
  var navbarCollapse = function() {
    if ($("#mainNav").offset().top > 100) {
      $("#mainNav").addClass("navbar-shrink");
    } else {
      $("#mainNav").removeClass("navbar-shrink");
    }
  };
  // Collapse now if page is not at top
  navbarCollapse();
  // Collapse the navbar when page is scrolled
  $(window).scroll(navbarCollapse);

  // Floating label headings for the contact form
  $(function() {
    $("body").on("input propertychange", ".floating-label-form-group", function(e) {
      $(this).toggleClass("floating-label-form-group-with-value", !!$(e.target).val());
    }).on("focus", ".floating-label-form-group", function() {
      $(this).addClass("floating-label-form-group-with-focus");
    }).on("blur", ".floating-label-form-group", function() {
      $(this).removeClass("floating-label-form-group-with-focus");
    });
  });

}); // End of use strict

function map(){
	//======================= Code JavaScript, API MapBoxGl ======================================

	mapboxgl.accessToken = 'pk.eyJ1IjoiY3Jpc3RpYW4tY2wiLCJhIjoiY2pzYWt3b3FyMDBqcTQzbzdlZ2xjM3FrayJ9.n216NBqfSJBaWNeUnNIUaA';
		var map = new mapboxgl.Map({
		container: 'map',
		style: 'mapbox://styles/mapbox/streets-v11',
		center: [ -74.0920055,  4.5890004], // starting position
		zoom: 15.3,
		pitch: 45,
		bearing: -17.6
	});

	function rotateCamera(timestamp) {
		// clamp the rotation between 0 -360 degrees
		// Divide timestamp by 100 to slow rotation to ~10 degrees / sec
		map.rotateTo((timestamp / 100) % 360, {duration: 0});
		// Request the next frame of the animation.
		requestAnimationFrame(rotateCamera);
	}

	map.on('load', function() {
		// Insert the layer beneath any symbol layer.
		var layers = map.getStyle().layers;
		// disable map zoom when using scroll
		 
		var labelLayerId;
		for (var i = 0; i < layers.length; i++) {
			if (layers[i].type === 'symbol' && layers[i].layout['text-field']) {
			labelLayerId = layers[i].id;
			break;
			}
		}
			 
		map.addLayer({
			'id': '3d-buildings',
			'source': 'composite',
			'source-layer': 'building',
			'filter': ['==', 'extrude', 'true'],
			'type': 'fill-extrusion',
			'minzoom': 15,
			'paint': {
				'fill-extrusion-color': '#aaa',
				 
				// use an 'interpolate' expression to add a smooth transition effect to the
				// buildings as the user zooms in
				'fill-extrusion-height': [
					"interpolate", ["linear"], ["zoom"],
					15, 0,
					15.05, ["get", "height"]
				],
				'fill-extrusion-base': [
					"interpolate", ["linear"], ["zoom"],
					15, 0,
					15.05, ["get", "min_height"]
				],
				'fill-extrusion-opacity': .6
			}
		}, labelLayerId);
	});

	map.loadImage('https://cdn2.iconfinder.com/data/icons/pittogrammi/142/94-512.png', function(error, image) {
		if (error) throw error;
			map.addImage('location', image);
			map.addLayer({
				"id": "points",
				"type": "symbol",
				"source": {
					"type": "geojson",
					"data": {
						"type": "FeatureCollection",
						"features": [{
						"type": "Feature",
							"geometry": {
							"type": "Point",
							"coordinates": [ -74.0920055,  4.5890004]
							}
						}]
					}
				},
				"layout": {
				"icon-image": "location",
				"icon-size": 0.10
				}
			});
		});
	//======================= Code JavaScript, API MapBoxGl ======================================
}