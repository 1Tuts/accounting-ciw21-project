/*
 slideshow
 -------------------------------------------------------------------*/
 window.onload=function(){
	var slideshow = document.getElementsByClassName('slideshow').item(0),
	train = slideshow.getElementsByClassName('train').item(0),
	list = slideshow.getElementsByClassName('btn').item(0).getElementsByTagName("li"),
	currentslide=0;	
	(gotoslide=function(x){
			if(x>=list.length) x=0;
			if(x<0) x=list.length-1;
			train.style.left=(-900*x)+'px';
			currentslide=x;
	})(0);
	
	nextslide=function(){
		gotoslide(currentslide+1);	
	}
	
	backslide=function(){
		gotoslide(currentslide-1);
	}
	var iv=false;
	(autostart=slideshow.onmouseout=function(){
		if(iv!=false) return ;
		iv=setInterval(nextslide,3000);	
	})()
	autostop=slideshow.onmouseover=function(){
		clearInterval(iv);
		iv=false;
	}
	slideshow.getElementsByClassName('next').item(0).onclick=nextslide;
	slideshow.getElementsByClassName('previous').item(0).onclick=backslide;

}

/*
 slideshow btm
 -------------------------------------------------------------------*/
 $(document).ready(function(){
	var slidesWidth = Math.ceil(800/4);

	slides = $('div.slideshowbtm div.trainbtm > div');
	slides.css({width:slidesWidth+'px'});
	slides.last().css({'padding-right':'200px'});
	slides.mouseover(function(){
		slides.animate({width:'60px'},500);
		$(this).animate({width:'600px'},500);
	});
	$('div.slideshowbtm').mouseout(function(){
		slides.animate({width:slidesWidth+'px'},500);
	});
})

 /*
 Scroll Up
 -------------------------------------------------------------------*/

function currentYPosition() {
// Firefox, Chrome, Opera, Safari

if (document.body.scrollTop) return document.body.scrollTop;
return 0;
}
function elmYPosition(eID) {
var elm = document.getElementById(eID);
var y = elm.offsetTop;
var node = elm;
while (node.offsetParent && node.offsetParent != document.body) {
node = node.offsetParent;
y += node.offsetTop;
} return y;
}
function smoothScroll(eID) {
var startY = currentYPosition();
var stopY = elmYPosition(eID);
var distance = stopY > startY ? stopY - startY : startY - stopY;
if (distance < 100) {
scrollTo(0, stopY); return;
}
var speed = Math.round(distance / 100);
if (speed >= 20) speed = 20;
var step = Math.round(distance / 25);
var leapY = stopY > startY ? startY + step : startY - step;
var timer = 0;
if (stopY > startY) {
for ( var i=startY; i<stopY; i+=step ) {
setTimeout("window.scrollTo(0, "+leapY+")", timer * speed);
leapY += step; if (leapY > stopY) leapY = stopY; timer++;
} return;
}
for ( var i=startY; i>stopY; i-=step ) {
setTimeout("window.scrollTo(0, "+leapY+")", timer * speed);
leapY -= step; if (leapY < stopY) leapY = stopY; timer++;
}
}

/*
 Contact Page
 -------------------------------------------------------------------*/

 function validateText(str,len){
	return str.length >= len;
}

function validateEmail(str){
	var emailPattern = /^[a-z0-9+_%.-]+@(?:[a-z0-9-]+\.)+[a-z]{2,6}$/i ;

	return emailPattern.test(str);
}

$(function(){
	$('#contact-form').submit(function(){
		var target, err = false;

		target = $('#name');
		if( validateText(target.val(),3) ){
			target.removeClass('err').addClass('ok');
		}else{
			target.removeClass('ok').addClass('err');
			err = true;
		}


		target = $('#mail');
		if( validateEmail(target.val()) ){
			target.removeClass('err').addClass('ok');
		}else{
			target.removeClass('ok').addClass('err');
			err = true;
		}

		if(!err){
			$('#ifrm').animate({
				height:'75px'
			},500);
		}

		return !err;

	});

	$('#reset').click(function(){
		$('#ifrm').animate({
			height:'0px'
		},200);
	});
});