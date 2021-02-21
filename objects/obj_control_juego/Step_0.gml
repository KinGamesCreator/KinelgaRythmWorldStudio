/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(vk_space)) {
	audio_destroy_stream(music)
	audio_stop_all()
	room_goto(room_editor)
}
if (keyboard_check_pressed(ord("R"))) {
	audio_destroy_stream(music)
	audio_stop_all()
	room_restart()
}
switch(estado) {
	case 0:
		#region estado mostrar creditos y nombre
		if (pos_x_nom > 360) {
			pos_x_nom -= 20 * global.time_delta
			pos_x_cred += 20 * global.time_delta
		} else if (alarm[0] < 0) {
			alarm[0] = 120 / global.time_delta
		} else {
			pos_x_cred += 0.25 * global.time_delta
			pos_x_nom -= 0.25 * global.time_delta
		}
		#endregion
	break;
	case 1:
		#region estado ocultar texto
		if (pos_x_nom > -360) {
			pos_x_nom -= 20 * global.time_delta
			pos_x_cred += 20 * global.time_delta
		} else {
			estado = 2
		}
		#endregion
	break;
	case 2:
		#region estado mostrar porcentaje
			if (pos_y_porcent < 0) {
				pos_y_porcent += 1 * global.time_delta
				if (pos_y_porcent > 0) {
					pos_y_porcent = 0
				}
			} else {
				if (pos_y_linea < 1280) {
					pos_y_linea += 80 * global.time_delta
					if (pos_y_linea > 1280) {
						pos_y_linea = 1280
					}
				} else {
					estado = 3
				}
			}
		#endregion
	break;
	case 3:
		if (time >= 0) and (!audio_is_playing(music)) and (comenzo = false) {
			music_play = audio_play_sound(music,1,0)
			comenzo = true
		}
		time += global.time_delta
		if vamos < (array_length(creaciones) - 1) {
			if time >= (real(creaciones[vamos]) - round(1184 / global.veloc_ene)) 
			{
				#region crear enemigo
					repeat (2) {
						if (vamos + 1) < array_length(creaciones) {
							if (string_char_at(creaciones[vamos + 1],1) = "L") {
								enemy_create(180,-144,real(string_replace(creaciones[vamos + 1],"L","")))
								vamos += 1
							} else if (string_char_at(creaciones[vamos + 1],1) = "R") {
								enemy_create(540,-144,real(string_replace(creaciones[vamos + 1],"R","")))
								vamos += 1
							}
						}
					}
					vamos += 1
				#endregion
			}
		} else if (vamos = 0) or (!audio_is_playing(music_play)) {
			if (vamos = 0) {
				audio_play_sound(snd_error,1,0)
				show_message("ERROR: No hay notas que reproducir.")
			}
			room_goto(room_editor)
		}
		
	break;
}

#region efectos y disparos

if (enemigos_dados < 0) {
	enemigos_dados = 0
}
if (clave) {
	clave = false
	enemigos_dados += 1
}
if (clave2 = true) and (enemigos_dados > 0) {
	clave2 = false
	enemigos_dados -= 1
}

porcentaje = round(enemigos_dados * valor_ene)

if (global.b1 > 1) {
	var laser_active = true
	var laser_actual = 0
	while(laser_active) {
		laser_active = laser_l[laser_actual].activate
		if (laser_active) {
			laser_actual += 1
		}
	}
	laser_l[laser_actual].activate = true
	laser_l[laser_actual].visible = 1
}
if (global.b2 > 1) {
	var laser_active = true
	var laser_actual = 0
	while(laser_active) {
		laser_active = laser_r[laser_actual].activate
		if (laser_active) {
			laser_actual += 1
		}
	}
	laser_r[laser_actual].activate = true
	laser_r[laser_actual].visible = 1
}

#endregion

