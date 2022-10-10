
switch(fadeMe) {
 case "fadeIn": 
	if (image_alpha < 1) image_alpha += fadeSpeed;
   break;
 case "fadeOut": 
	if (image_alpha > 0) {
		image_alpha -= fadeSpeed;
	}
	else {
		global.isPlayerControllable = true;
		isReadyToDestroy = true;
	}	
   break;
}


