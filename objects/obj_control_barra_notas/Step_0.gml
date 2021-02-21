/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

#region colocar notas
for(var i = 0; i < array_length(array_notas_isq) ; i++) {
	
	if (mouse_rectangle(round(x + 4 * i),y,round(x + 4 * i + 3),y + 12)) { //colocar notas isq
		if mouse_check_button_released(mb_left) {
			if (array_notas_isq[i] = "") {
				var busq = true
				for (var F = (i - 1); F > 0; F--) {
					
					if (array_notas_isq[F] != "") {
						if ((real(array_notas_isq[F]) + F - 1) < i) {
							busq = true
						} else {
							busq = false
						}
						break;
					}
				}
				if (busq = true) {
					array_notas_isq[i] = "1"
					set_mouse_pulse("nota;isq;" + string(i))
				}
			} else {
				set_mouse_pulse("nota;isq;" + string(i))
			}
		} else if (mouse_check_button_released(mb_right)) {
			array_notas_isq[i] = ""
			if (obj_control_editor.mouse_selected_data[0] = "nota") {
				set_mouse_pulse("")
			}
		}
	}
	if (array_notas_isq[i] != "") and (real(array_notas_isq[i]) > 1) and (obj_visual.nota_actual >= i) and (obj_visual.nota_actual <= (i + array_notas_isq[i] - 1.5)) {
		obj_visual.mantener_isq = true
	}
	
	if (mouse_rectangle(round(x + 4 * i),y + 14,round(x + 4 * i + 3),y + 26)) { //colocar notas der
		if mouse_check_button_released(mb_left) {
			if (array_notas_der[i] = "") {
				var busq = true
				for (var F = (i - 1); F > 0; F--) {
					
					if (array_notas_der[F] != "") {
						if ((real(array_notas_der[F]) + F - 1) < i) {
							busq = true
						} else {
							busq = false
						}
						break;
					}
				}
				if (busq = true) {
					array_notas_der[i] = "1"
					set_mouse_pulse("nota;der;" + string(i))
				}
			} else {
				set_mouse_pulse("nota;der;" + string(i))
			}
		} else if (mouse_check_button_released(mb_right)) {
			array_notas_der[i] = ""
			if (obj_control_editor.mouse_selected_data[0] = "nota") {
				set_mouse_pulse("")
			}
		}
	}
	if (array_notas_der[i] != "") and (real(array_notas_der[i]) > 1) and (obj_visual.nota_actual >= i) and (obj_visual.nota_actual <= (i + array_notas_der[i] - 1.5)) {
		obj_visual.mantener_der = true
	}
}
#endregion

#region mover barra


var diference = display_get_gui_width() / 1280

if (global.mouse_pulse = "none") and (mouse_rectangle_window((-x * multiplic) * diference,700 * diference, diference * (((-x * multiplic) + (128 * multiplic))), 720 * diference)) and (mouse_check_button(mb_left)) {
	global.mouse_pulse = "slide_bar"
	pos_click = window_mouse_get_x()
	pos_bar_ant = x
}

if (global.mouse_pulse = "slide_bar") {
	x = (-(window_mouse_get_x() - pos_click) / (multiplic)) / diference + pos_bar_ant
	
	if (!mouse_check_button(mb_left)) {
		global.mouse_pulse = "none"
	}
}

//refinar

if (x > 0) {
	x = 0
} else if (x < (-tam_total + 128)) {
	x = (-tam_total + 128)
}

#endregion

#region mover barra 2

if (global.mouse_pulse = "none") and (mouse_rectangle(0,y,128,y + 26)) and (mouse_check_button(mb_middle)) {
	global.mouse_pulse = "slide_bar2"
	pos_click_mov2 = mouse_x
	pos_bar_ant2 = x
}

if (global.mouse_pulse = "slide_bar2") {
	x = (mouse_x - pos_click_mov2) + pos_bar_ant2
	
	if (!mouse_check_button(mb_middle)) {
		global.mouse_pulse = "none"
	}
}

//refinar

if (x > 0) {
	x = 0
} else if (x < (-tam_total + 128)) {
	x = (-tam_total + 128)
}

#endregion


