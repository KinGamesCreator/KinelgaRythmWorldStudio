/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

x = obj_control_barra_notas.x

for(var i = 0; i < (array_length(efectos)); i++) {
	for (var s = 2; s >= 0; s--) {
		
		if (s != 0) {
			
			if (efectos[i][s] != "") and (efectos[i][s - 1] = "") {
				
				efectos[i][s - 1] = efectos[i][s]
				efectos[i][s] = ""
				
			}
			
		}
		if (round(audio_sound_get_track_position(global.music) * 6) = i) {
			switch (string_char_at(efectos[i][s],1)) {
				
				case "C":
					
						global.realspeed = real(string_copy(obj_controlador_efectos.efectos[i,s],2,5))
					
				break;
				case "F":
					if (ult_flash != i) {
						ult_flash = i
						obj_controlador_detalles.flash = 0.5
					}
				break;
				case "L":
					if (ult_beat != i) {
						ult_beat = i
						obj_controlador_detalles.beat = 1.1
					}
				break;
			}
		}
	}
	
}
if (round(audio_sound_get_track_position(global.music) * 6) != ult_flash) {
	ult_flash = -1
}
if (round(audio_sound_get_track_position(global.music) * 6) != ult_beat) {
	ult_beat = -1
}