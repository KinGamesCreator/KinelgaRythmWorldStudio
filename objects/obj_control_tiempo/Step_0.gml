/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if mouse_rectangle(0,y,128,y + 2) and (global.mouse_pulse = "none") and (mouse_check_button(mb_left)) {
	global.mouse_pulse = "move_time"
}

if (global.mouse_pulse = "move_time") {
	audio_sound_set_track_position(global.music,-(obj_control_barra_notas.x - mouse_x) * (audio_sound_length(global.music) / (24 * audio_sound_length(global.music))))
	if (!mouse_check_button(mb_left)) {
		global.mouse_pulse = "none"
	}
	refresh_speed_color()
}
