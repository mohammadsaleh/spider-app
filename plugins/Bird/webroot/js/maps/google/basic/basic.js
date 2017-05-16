$(function() {
	var map;
	// Map settings
	function initialize() {
		// Optinos
		var mapOptions = {
			zoom: 4,
			center: new google.maps.LatLng(28.6139, 77.2090)
		};
		// Apply options
		map = new google.maps.Map($('.map-basic')[0], mapOptions);
	}
	// Load map
	google.maps.event.addDomListener(window, 'load', initialize);
});
