/// @description Insert description here
// You can write your code in this editor
if (room != room_play) and (room != room_charge_play) {
	instance_destroy()
}
if os_is_paused () or ((delta_time * room_speed * 0.000001) > 10) {
	ok = false
	if (room = room_play) and (audio_is_playing(obj_control_juego.music)) {
		audio_pause_sound(obj_control_juego.music_play)
		m = true
	}
} else {
	if (ok = false) {
		ok = true
		if (m = true) {
			m = false
			audio_resume_sound(obj_control_juego.music_play)
			audio_sound_set_track_position(obj_control_juego.music_play, obj_control_juego.time / 60)
		}
	} else {
		global.time_delta = delta_time * room_speed * 0.000001;
	}
}

