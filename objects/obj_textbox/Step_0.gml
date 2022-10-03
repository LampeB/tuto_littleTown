
switch(fadeMe) {
 case 0: 
	if (image_alpha < 1) image_alpha += fadeSpeed;
   break;
 case 2: 
	if (image_alpha > 0) image_alpha -= fadeSpeed;
	else {
		global.isPlayerControllable = true;
		instance_deactivate_object(obj_textbox);
	}	
   break;
}


