if(nearbyNPC and !instance_exists(obj_textbox) and global.isPlayerControllable){
	i_textBox = instance_create_depth(x, y, -10000, obj_textbox);
	i_textBox.textToShow = nearbyNPC.myText;
} 
else if(instance_exists(obj_textbox) and !global.isPlayerControllable and !obj_textbox.isReadyToDestroy){
		obj_textbox.fadeMe = 2;
}
