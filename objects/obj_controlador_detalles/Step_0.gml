/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
veloc_usar = global.realspeed
visible = 1
image_alpha = 1

switch(obj_control_editor.mouse_selected_data[0]) {
	
	case "nota":
		#region notas
			
			//definir apariencia
			sprite_index = spr_control_nota
			image_index = 0
			if (mouse_rectangle(43,y+1,51,y+18)) {
				image_index = 1
			} else if (mouse_rectangle(75,y+1,83,y+18)) {
				image_index = 2
			}
			
			if (mouse_check_button_released(mb_left)) {
			
				if (mouse_rectangle(43,y+1,51,y+18)) { //bajar
					if (obj_control_editor.mouse_selected_data[1] = "isq") {
						if (real(obj_control_barra_notas.array_notas_isq[obj_control_editor.mouse_selected_data[2]]) > 1) {
							obj_control_barra_notas.array_notas_isq[obj_control_editor.mouse_selected_data[2]] = string(real(obj_control_barra_notas.array_notas_isq[obj_control_editor.mouse_selected_data[2]]) - 1)
						}
					} else {
						if (real(obj_control_barra_notas.array_notas_der[obj_control_editor.mouse_selected_data[2]]) > 1) {
							obj_control_barra_notas.array_notas_der[obj_control_editor.mouse_selected_data[2]] = string(real(obj_control_barra_notas.array_notas_der[obj_control_editor.mouse_selected_data[2]]) - 1)
						}
					}
				} else if (mouse_rectangle(75,y+1,83,y+18)) { //subir
					if (obj_control_editor.mouse_selected_data[1] = "isq") {
						obj_control_barra_notas.array_notas_isq[obj_control_editor.mouse_selected_data[2]] = string(real(obj_control_barra_notas.array_notas_isq[obj_control_editor.mouse_selected_data[2]]) + 1)
						for (var i = 0;i < real(obj_control_barra_notas.array_notas_isq[obj_control_editor.mouse_selected_data[2]] - 1);i++) {
							if (i + 1 + obj_control_editor.mouse_selected_data[2] < array_length(obj_control_barra_notas.array_notas_isq)) {
								obj_control_barra_notas.array_notas_isq[i + 1 + obj_control_editor.mouse_selected_data[2]] = ""
							} else {
								obj_control_barra_notas.array_notas_isq[obj_control_editor.mouse_selected_data[2]] = string(real(obj_control_barra_notas.array_notas_isq[obj_control_editor.mouse_selected_data[2]]) - 1)
								break;
							}
						}
					} else {
						obj_control_barra_notas.array_notas_der[obj_control_editor.mouse_selected_data[2]] = string(real(obj_control_barra_notas.array_notas_der[obj_control_editor.mouse_selected_data[2]]) + 1)
						for (var i = 0;i < real(obj_control_barra_notas.array_notas_der[obj_control_editor.mouse_selected_data[2]] - 1);i++) {
							if (i + 1 + obj_control_editor.mouse_selected_data[2] < array_length(obj_control_barra_notas.array_notas_der)) {
								obj_control_barra_notas.array_notas_der[i + 1 + obj_control_editor.mouse_selected_data[2]] = ""
							} else {
								obj_control_barra_notas.array_notas_der[obj_control_editor.mouse_selected_data[2]] = string(real(obj_control_barra_notas.array_notas_der[obj_control_editor.mouse_selected_data[2]]) - 1)
								break;
							}
						}
					}
				}
			}
			
		#endregion
	break;
	case "efecto":
		#region efecto
		sprite_index = spr_botones_efectos
		visible = 1
		image_index = 0
		switch(string_char_at(obj_control_editor.mouse_selected_data[3],1)) {
			case "": //si el efecto no fue definido
				if (mouse_rectangle(39,11,54,24)) {
					image_index = 1
				} else if (mouse_rectangle(56,11,70,24)) {
					image_index = 2
				} else if (mouse_rectangle(72,11,87,24)) {
					image_index = 3
				}
			break;
			case "C": //Si es tipo Time/Color
				sprite_index = spr_control_nota
				image_index = 0
				if (mouse_rectangle(43,y+1,51,y+18)) {
					image_index = 1
				} else if (mouse_rectangle(75,y+1,83,y+18)) {
					image_index = 2
				}
				var obtener_time = real(string_copy(obj_controlador_efectos.efectos[real(obj_control_editor.mouse_selected_data[1])][real(obj_control_editor.mouse_selected_data[2])],2,5))
				veloc_usar = obtener_time
			break;
			case "F":
				image_alpha = 0
			break;
			case "L":
				image_alpha = 0
			break;
		}
		if (mouse_check_button_released(mb_left)) {
			switch(string_char_at(obj_control_editor.mouse_selected_data[3],1)) {
				case "": //si no esta definido el efecto
					if (mouse_rectangle(39,11,54,24)) {
						set_effect_selected("C0.010")
						reset_mouse_pulse_effect()
					} else if (mouse_rectangle(56,11,70,24)) {
						set_effect_selected("F")
						reset_mouse_pulse_effect()
					} else if (mouse_rectangle(72,11,87,24)) {
						set_effect_selected("L")
						reset_mouse_pulse_effect()
					}
				break;
				case "C": //Si es tipo Time/color
					
					if (mouse_rectangle(43,y+1,51,y+18)) { //bajar
						if (obtener_time > 0.000) {
							set_effect_selected("C" + string_format(obtener_time - 0.002,1,3))
							reset_mouse_pulse_effect()
						}
					} else if (mouse_rectangle(75,y+1,83,y+18)) { //subir
						if (obtener_time < 0.026) {
							set_effect_selected("C" + string_format(obtener_time + 0.002,1,3))
							reset_mouse_pulse_effect()
						}
					}
				break;
			}
		}
		#endregion
	break;
	case "":
		image_alpha = 0
	break;
	
}


#region cambio de color y flash

c_act += c_sign * veloc_usar
if (c_act > 1) {
	c_sign = -1
	c_act = 1
} else if (c_act < 0) {
	c_sign = 1
	c_act = 0
}

if (flash > 0) {
	flash -= 0.025
}

if (beat > 1) {
	beat -= 0.02
}


#endregion