$(document).ready(function() {
	$('#article_pictures input[type=file]').hide();

	var wrapper = $('<div/>').css({height:0,width:0,'overflow':'hidden'});
	var fileInput
	$('#thumb0 img').click(function(){
		$('#thumb0 input').click();
	}).show();

	$('#thumb1 img').click(function(){
		$('#thumb1 input').click();
	}).show();

	$('#thumb2 img').click(function(){
		$('#thumb2 input').click();
	}).show();

	$('#thumb0 input').change(function(){
		readURL(this, '#thumb0 img');
	});

	$('#thumb1 input').change(function(){
		readURL(this, '#thumb1 img');
	});

	$('#thumb2 input').change(function(){
		readURL(this, '#thumb2 img');
	});
});


function readURL(input, imgSelector) {
  if (input.files && input.files[0]) {
    var reader = new FileReader();

	  reader.onload = function (e) {
      $(imgSelector).attr('src', e.target.result);
    }

    reader.readAsDataURL(input.files[0]);
  }
}