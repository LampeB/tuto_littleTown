/// @description Insert description here
// You can write your code in this editor
walkSpeed = 16;
vx = 0;
vy = 0;
dir = 3;
moveR = 0;
moveL = 0;
moveU = 0;
moveD = 0;

//Collision
nearbyNPC = noone;
lookRange = 30;
hasGreated = false;

//set audio listener
audio_listener_set_position(0,x,y,0);
audio_listener_set_orientation(0,0,1,0,0,0,1);


time_before_idle = 180;
is_idle = false;

npcPrompt = noone;