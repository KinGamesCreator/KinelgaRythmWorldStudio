/// @description Insert description here
// You can write your code in this editor
var diferenciax = display_get_gui_width() / 720
var diferenciay = display_get_gui_height() / 1280
draw_sprite_ext(spr_botones2,image_index,x * diferenciax,y*diferenciay,image_xscale * diferenciax,image_yscale * diferenciay,image_angle,image_blend,image_alpha)
//draw_sprite_ext(spr_botones_iconos,sprite_extra,x * diferenciax,y * diferenciay,-image_xscale * sign(0.5 - tipo) * diferenciax,image_yscale * diferenciay,image_angle,image_blend,image_alpha)

if (nd = 0) {
	nd = 1
	if (tipo = 0) {
		tecla = virtual_key_add((x-180) * diferenciax,(y - 120) * diferenciay,360 * diferenciax,240 * diferenciay,vk_left)
	} else {
		tecla = virtual_key_add((x-180) * diferenciax,(y - 120) * diferenciay,360 * diferenciax,240 * diferenciay,vk_right)
	}
}
if (nd = 2) {
	nd = 0
}
if (room_act != room) {
	room_act = room
	nd = 0
}