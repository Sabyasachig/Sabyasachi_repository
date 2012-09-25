$(document).ready ->
	mapOptions=
		center: new google.maps.LatLng(-34.397, 150.644)
		zoom: 8
		mapTypeId: google.maps.MapTypeId.ROADMAP
	map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions)
	marker = new google.maps.Marker({
    	position: map.getCenter()
    	map: map
    	title: 'Click to zoom'
  	});

  	google.maps.event.addListener(map,'center_changed',
	(event) => 
 		window.setTimeout (event) => 
			map.panTo(marker.getPosition(), 3000))

	google.maps.event.addListener(marker, 'click', (event) =>
		map.setZoom(8)
		map.setCenter(marker.getPosition()))