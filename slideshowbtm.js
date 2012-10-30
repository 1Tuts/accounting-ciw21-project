$(document).ready(function(){
	var slidesWidth = Math.ceil(800/4);

	slides = $('div.slideshowbtm div.trainbtm > div');
	slides.css({width:slidesWidth+'px'});
	slides.last().css({'padding-right':'200px'});
	slides.mouseover(function(){
		slides.css({opacity:1});
		slides.animate({width:'60px'},500);
		$(this).animate({width:'600px'},500);
	});
	$('div.slideshowbtm').mouseout(function(){
		slides.css({opacity:0.65});
		slides.animate({width:slidesWidth+'px'},500);
	});
})