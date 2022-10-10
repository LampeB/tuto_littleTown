/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_set_font(font_textbox);
draw_set_halign(fa_center);//alignement horizontal
draw_set_valign(fa_middle);// alignement vertical

if(fadeMe != "fadeOut"){
	draw_text_ext_color(x, y, textToShow, lineHeight, textWidth, c_black, c_black, c_black, c_black,1); //c1: haut-gauche, c2:haut-droit, c3: bas-gauche, c4: bas-droit
}