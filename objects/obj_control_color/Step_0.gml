/// @description Insert description here
// You can write your code in this editor

if (room != room_play) and (room != room_charge_play) {
	instance_destroy()
}

global.color_step += (global.color_speed * direccion) * global.time_delta

if (global.color_step > 1) {
	global.color_step = 1
	direccion = -direccion
} else if (global.color_step < 0) {
	global.color_step = 0
	direccion = -direccion
}

#region avanzar colores
global.color_bg = merge_color(global.background_color1,global.background_color2,global.color_step)

global.color_ene = merge_color(global.ene_color1,global.ene_color2,global.color_step)

global.color_cube = merge_color(global.cube_color1,global.cube_color2,global.color_step)

global.color_mark = merge_color(global.mark_color1,global.mark_color2,global.color_step)

global.color_player = merge_color(global.player_color1,global.player_color2,global.color_step)
#endregion
