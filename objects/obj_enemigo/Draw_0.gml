/// @description Insert description here
// You can write your code in this editor
if (cola > 0) {
	draw_set_color(global.color_ene)
	draw_set_alpha(0.7)
	draw_rectangle(x - 45,y,x+45,y-(global.veloc_ene * cola),0)
}
draw_self()
