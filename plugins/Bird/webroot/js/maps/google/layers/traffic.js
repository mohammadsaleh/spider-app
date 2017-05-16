$(function() {
	// Initialize
	function initialize() {
		// Set coordinates
		var myLatlng = new google.maps.LatLng(28.6139, 77.2090);
		// Options
		var mapOptions = {
			zoom: 12,
			center: myLatlng
		}
		// Apply options
		var map = new google.maps.Map($('.map-layer-traffic')[0], mapOptions);
		// Add layers
		var trafficLayer = new google.maps.TrafficLayer();
			trafficLayer.setMap(map);
	}
	// Load map
	google.maps.event.addDomListener(window, 'load', initialize);
});