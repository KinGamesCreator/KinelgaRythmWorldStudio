/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (export = true) {
	export = false
	#region exportar
	
	var g_zip = get_save_filename("archivo de nivel |*.lk2",global.name)
	if (g_zip != "") {
		var zip = zip_create()
		zip_add_file(zip,global.name + ".lvl",working_directory + "levels\\data\\" + global.name + ".lvl")
		zip_add_file(zip,global.name + ".ogg",working_directory + "levels\\music\\" + global.name + ".ogg")
		zip_save(zip,g_zip)
		zip_destroy(zip)
	} else {
		audio_play_sound(snd_error,1,0)
	}
	
	#endregion
}

if (keyboard_check_released(vk_space)) {
	if (!audio_is_paused(global.music)) {
		audio_pause_sound(global.music)
	} else {
		audio_resume_sound(global.music)
	}
}

if (keyboard_check_released(vk_f5)) {
	#region salvar proyecto
		var _notas_save = ""
		for (var i = 0; i < array_length(obj_control_barra_notas.array_notas_der);i++) {
			if (obj_control_barra_notas.array_notas_der[i] != "") or (obj_control_barra_notas.array_notas_isq[i] != "") {
				
				_notas_save = _notas_save + string(i * 10) + ";"
				
				if (obj_control_barra_notas.array_notas_der[i] != "") {
					_notas_save = _notas_save + "R" + obj_control_barra_notas.array_notas_der[i] + ";"
				}
				
				if (obj_control_barra_notas.array_notas_isq[i] != "") {
					_notas_save = _notas_save + "L" + obj_control_barra_notas.array_notas_isq[i] + ";"
				}
				
			}
		}
		var _fx_save = ""
		for (var i = 0; i < array_length(obj_controlador_efectos.efectos); i++) {
			if (obj_controlador_efectos.efectos[i][0] != "") {
				_fx_save = _fx_save + string(i*10) + ";"
			}
			for (var g = 0; g < 3;g++) {
				if (obj_controlador_efectos.efectos[i][g] != "") {
					_fx_save = _fx_save + obj_controlador_efectos.efectos[i][g] + ";"
				}
			}
		}
		
		var escritura = file_text_open_write(working_directory + "levels\\data\\" + global.name + ".lvl")
		file_text_write_string(escritura,_notas_save)
		file_text_writeln(escritura)
		file_text_write_string(escritura,_fx_save)
		file_text_close(escritura)
	#endregion
	if (_notas_save = "") {
		audio_play_sound(snd_error,1,0)
		show_message("ERROR: No hay notas que reproducir.")
	} else {
	audio_stop_sound(global.music)
		
		var cargando = file_text_open_read(working_directory + "levels\\data\\" + global.name + ".lvl")
		global.carga_notes = file_text_read_string(cargando)
		file_text_readln(cargando)
		global.carga_effects = file_text_read_string(cargando)
		file_text_close(cargando)
		audio_destroy_stream(global.carga_music)
		global.carga_music = audio_create_stream(working_directory + "levels\\music\\" + global.name + ".ogg")
		
		room_goto(room_charge_play)
	}
}

for(var i = 0; i <= 5; i++) {
	
	if (mouse_check_button_pressed(mb_left)) {
		if (i < 5) {
			if (mouse_rectangle(8 * i,0,8*i + 7,7)) {
				switch(i) {
					case 0: //volver al inicio
						audio_sound_set_track_position(global.music,0)
						refresh_speed_color()
					break;
					case 1: //pausar
						if (!audio_is_paused(global.music)) {
							audio_pause_sound(global.music)
						} 
					break;
					case 2: //reproducir
						if (audio_is_paused(global.music)) {
							audio_resume_sound(global.music)
						}
					break;
					case 3: //exportar
						audio_play_sound(snd_export,1,0)
						#region salvar antes de exportar
						var _notas_save = ""
						for (var i = 0; i < array_length(obj_control_barra_notas.array_notas_der);i++) {
							if (obj_control_barra_notas.array_notas_der[i] != "") or (obj_control_barra_notas.array_notas_isq[i] != "") {
								
								_notas_save = _notas_save + string(i * 10) + ";"
								
								if (obj_control_barra_notas.array_notas_der[i] != "") {
									_notas_save = _notas_save + "R" + obj_control_barra_notas.array_notas_der[i] + ";"
								}
								
								if (obj_control_barra_notas.array_notas_isq[i] != "") {
									_notas_save = _notas_save + "L" + obj_control_barra_notas.array_notas_isq[i] + ";"
								}
								
							}
						}
						var _fx_save = ""
						for (var i = 0; i < array_length(obj_controlador_efectos.efectos); i++) {
							if (obj_controlador_efectos.efectos[i][0] != "") {
								_fx_save = _fx_save + string(i*10) + ";"
							}
							for (var g = 0; g < 3;g++) {
								if (obj_controlador_efectos.efectos[i][g] != "") {
									_fx_save = _fx_save + obj_controlador_efectos.efectos[i][g] + ";"
								}
							}
						}
						
						var escritura = file_text_open_write(working_directory + "levels\\data\\" + global.name + ".lvl")
						file_text_write_string(escritura,_notas_save)
						file_text_writeln(escritura)
						file_text_write_string(escritura,_fx_save)
						file_text_close(escritura)
						#endregion
						
						export = true
						audio_pause_sound(global.music)
						
					break;
					case 4: //salvar
						#region salvando
						var _notas_save = ""
						for (var i = 0; i < array_length(obj_control_barra_notas.array_notas_der);i++) {
							if (obj_control_barra_notas.array_notas_der[i] != "") or (obj_control_barra_notas.array_notas_isq[i] != "") {
								
								_notas_save = _notas_save + string(i * 10) + ";"
								
								if (obj_control_barra_notas.array_notas_der[i] != "") {
									_notas_save = _notas_save + "R" + obj_control_barra_notas.array_notas_der[i] + ";"
								}
								
								if (obj_control_barra_notas.array_notas_isq[i] != "") {
									_notas_save = _notas_save + "L" + obj_control_barra_notas.array_notas_isq[i] + ";"
								}
								
							}
						}
						var _fx_save = ""
						for (var i = 0; i < array_length(obj_controlador_efectos.efectos); i++) {
							if (obj_controlador_efectos.efectos[i][0] != "") {
								_fx_save = _fx_save + string(i*10) + ";"
							}
							for (var g = 0; g < 3;g++) {
								if (obj_controlador_efectos.efectos[i][g] != "") {
									_fx_save = _fx_save + obj_controlador_efectos.efectos[i][g] + ";"
								}
							}
						}
						
						var escritura = file_text_open_write(working_directory + "levels\\data\\" + global.name + ".lvl")
						file_text_write_string(escritura,_notas_save)
						file_text_writeln(escritura)
						file_text_write_string(escritura,_fx_save)
						file_text_close(escritura)
						if (!audio_is_playing(snd_save)) {
							audio_play_sound(snd_save,1,0)
						}
						#endregion
					break;
				}
			}
		} else {
			if (mouse_rectangle(121,0,127,7)) { //Volver al menu
				audio_stop_sound(global.music)
				audio_destroy_stream(global.music)
				room_goto(room_menu_inicial)
			}
		}
	}
	
}


