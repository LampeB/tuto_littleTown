/// @description Insert description here
// You can write your code in this editor

if(image_speed > 0){ //if animated
	if(image_index >= image_number-1){ //if end of animation
		image_speed = 0;
		alarm[0] = irandom_range(loopRange01,loopRange02);
	}
}

depth = -y;