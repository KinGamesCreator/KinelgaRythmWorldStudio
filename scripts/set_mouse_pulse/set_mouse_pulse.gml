// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function set_mouse_pulse(datos){
	
	var finale = false
	var recorrido = 1
	var contenedor = ""
	var espacio = 0
	
	while(finale = false) {
		if (string_char_at(datos,recorrido) != ";") {
			contenedor += string_char_at(datos,recorrido)
		} else {
			obj_control_editor.mouse_selected_data[espacio] = contenedor
			contenedor = ""
			espacio += 1
		}
		recorrido += 1
		if (recorrido > string_length(datos)) {
			finale = true
			obj_control_editor.mouse_selected_data[espacio] = contenedor
			contenedor = ""
			espacio += 1
		}
	}
	
}

function reset_mouse_pulse_effect() {
	set_mouse_pulse("efecto;" + string(obj_control_editor.mouse_selected_data[1]) + ";" + obj_control_editor.mouse_selected_data[2] + ";" + obj_controlador_efectos.efectos[obj_control_editor.mouse_selected_data[1]] [obj_control_editor.mouse_selected_data[2]]);
}

function set_effect_selected (new_effect) {
	if (check_effects(obj_control_editor.mouse_selected_data[1],new_effect)) {
		obj_controlador_efectos.efectos [obj_control_editor.mouse_selected_data[1]] [obj_control_editor.mouse_selected_data[2]] = new_effect;
	}
}

function refresh_speed_color() {
	var complete = false
	var posicion_aproximada = round(audio_sound_get_track_position(global.music) * 6)
	for (var i = posicion_aproximada; i > -1; i--) {
		for (var q = 0; q < 3; q++) {
			if (string_char_at(obj_controlador_efectos.efectos[i,q],1) = "C") {
				global.realspeed = real(string_copy(obj_controlador_efectos.efectos[i,q],2,5))
				complete = true
				break;
			}
			if (i = 0) and ((complete = false) and (q = 2)) {
				global.realspeed = 0.010
			}
		}
		if (complete = true) {
			break;
		}
	}
}

function rest (num,maxim) {
	var _result = num - maxim
	if (_result >= 0) {
		return(0)
	} else {
		return(abs(_result))
	}
}
