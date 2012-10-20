window.onload=function(){
	var slideshow = document.getElementsByClassName('slideshow').item(0),
	train = slideshow.getElementsByClassName('train').item(0),
	list = slideshow.getElementsByClassName('btn').item(0).getElementsByTagName("li"),
	n1=train.getElementsByClassName('n').item(0).getElementsByClassName('n1'),
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