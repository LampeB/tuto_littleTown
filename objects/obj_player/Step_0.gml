/// @description Insert description here
// You can write your code in this editor

moveR = keyboard_check(vk_right)
moveL = keyboard_check(vk_left)
moveU = keyboard_check(vk_up)
moveD = keyboard_check(vk_down)

vx = walkSpeed * (moveR-moveL);
vy = walkSpeed * (moveD-moveU);

if (vx == 0 and vy == 0){
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
			default:
			sprite_index = spr_player_idle_down;
			break;
		}
}
else{
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
}

depth = -y;