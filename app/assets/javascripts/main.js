$(document).ready(function () {
  $('[data-toggle=offcanvas]').click(function () {
    $('.row-offcanvas').toggleClass('active')
  });

  $('.bxslider').bxSlider({
	  mode: 'fade',
	  captions: true,
	  adaptiveHeight: true,
	});


});