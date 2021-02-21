/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
//global.music = snd_music_test
global.music = audio_play_sound(global.carga_music,1,1)
/*audio_pause_sound(global.music)
audio_sound_set_track_position(global.music,0)*/
global.mouse_pulse = "none"

for (var i = 0; i < 10; i++) {
	mouse_selected_data[i] = ""
	//[0] = tipo de seleccionado
	//[1-9] = datos extra
}

