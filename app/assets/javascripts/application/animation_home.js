$(document).ready(function() {
	$('#menu a').click( function(event) {
		event.preventDefault();
		url = $(this).attr('href');
		$('#menu').animate({
			top: '100px'
		}, 1000, false, function(){
			window.location = url;
		})
	});
});