/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

var diference = display_get_gui_width() / 1280



draw_set_alpha(1)
draw_set_color(make_color_rgb(0,250,255))
draw_rectangle(0,700 * diference,1280 * diference,720 * diference,0)

draw_set_color(make_color_rgb(0,89,255))
draw_rectangle( -x * multiplic * diference,700 * diference, diference * ((-x * multiplic) + (128 * multiplic)), 720 * diference,0)

#region mover barra
/*
if (global.mouse_pulse = "none") and (mouse_rectangle_window((-x * multiplic) * diference,700 * diference, diference * (((-x * multiplic) + (128 * multiplic))), 720 * diference)) and (mouse_check_button(mb_left)) {
	global.mouse_pulse = "slide_bar"
	pos_click = window_mouse_get_x()
	pos_bar_ant = x
}

if (global.mouse_pulse = "slide_bar") {
	x = (-(window_mouse_get_x()- pos_click) / (multiplic)) + pos_bar_ant
	
	if (!mouse_check_button(mb_left)) {
		global.mouse_pulse = "none"
	}
}
*/

#endregion

draw_set_color(c_red)
draw_set_alpha(1)
draw_line((1280 / audio_sound_length(global.music)) * audio_sound_get_track_position(global.music) * diference,700 * diference, (1280 / audio_sound_length(global.music)) * audio_sound_get_track_position(global.music) * diference, 720 * diference)
