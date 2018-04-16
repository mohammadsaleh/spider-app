$(function() {
	// Initialize
	function initialize() {
		// Set coordinates
		var myLatlng = new google.maps.LatLng(28.6139, 77.2090);
		// Options
		var mapOptions = {
			zoom: 11,
			center: myLatlng
		}
		// Apply options
		var map = new google.maps.Map($('.map-layer-transit')[0], mapOptions);
		// Add layers
		var transitLayer = new google.maps.TransitLayer();
			transitLayer.setMap(map);
	}
	// Load map
	google.maps.event.addDomListener(window, 'load', initialize);
});