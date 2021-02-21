/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

var dif = display_get_gui_width() / 128
draw_sprite_ext(spr_visual,0,118 * dif,18 * dif,dif,dif,0,c_white,1)
draw_set_color(c_white)
if (color_isq != 0) {
	draw_set_alpha(color_isq / 5)
	draw_rectangle(0,43 * dif,128 * dif,56 * dif,0)
	draw_sprite_ext(spr_visual,2,118 * dif,18 * dif,dif,dif,0,c_white,draw_get_alpha())
}
if (color_der != 0) {
	draw_set_alpha(color_der / 5)
	draw_rectangle(0,57 * dif,128 * dif,70 * dif,0)
	draw_sprite_ext(spr_visual,3,118 * dif,18 * dif,dif,dif,0,c_white,draw_get_alpha())
}

draw_set_alpha(1)

