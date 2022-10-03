/// @description Insert description here
// You can write your code in this editor
if(global.isPlayerControllable){
	moveR = keyboard_check(vk_right)
	moveL = keyboard_check(vk_left)
	moveU = keyboard_check(vk_up)
	moveD = keyboard_check(vk_down)
}

vx = walkSpeed * (moveR-moveL);
vy = walkSpeed * (moveD-moveU);

//Movement and IDLE
if (vx == 0 and vy == 0){
	if(!is_idle and alarm[0] == -1){
		alarm[0]= time_before_idle;
		image_speed = 0;
	}
	
	switch (dir){
		case "up":
			sprite_index = spr_player_idle_up;
		break;
			
		case "left":
			sprite_index = spr_player_idle_left;
		break;
			
		case "right":
			sprite_index = spr_player_idle_right;
		break;
			
		case "down":
			sprite_index = spr_player_idle_down;
		default:
		break;
	}
}
else{
	is_idle = false;
		image_speed = 1;
	if !collision_point(x+vx, y, obj_par_env, true, true){	x += vx;	}
	
	if !collision_point(x, y+vy, obj_par_env, true, true){	y += vy;	}
	
	if(vx > 0) {
		sprite_index = spr_player_walk_right;
		dir = "right";
	} else if(vx < 0){
		sprite_index = spr_player_walk_left;
		dir = "left";
	}
	
	if(vy > 0) {
		sprite_index = spr_player_walk_down;
		dir = "down";
	}else if(vy < 0){
		sprite_index = spr_player_walk_up;
		dir = "up";
	}
	
	//update audio listener position
	audio_listener_set_position(0,x,y,0);
}


//Check collision with NPC
/*get the instance of the obj_par_npc our object is 'colliding' with*/
nearbyNPC = collision_rectangle(x-lookRange, y-lookRange, x+lookRange, y+lookRange, obj_par_npc, false, true)

if (nearbyNPC) {
	if(!hasGreated){
		hasGreated = true;
		audio_play_sound(snd_greeting01, 1, 0);
	}
}
else{
	hasGreated = false;
}

depth = -y;