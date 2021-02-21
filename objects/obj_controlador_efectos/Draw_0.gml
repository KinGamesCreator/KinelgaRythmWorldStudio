/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

draw_set_alpha(1)
draw_set_color(c_white)

for(var i = 0; i < (array_length(efectos)); i++) {
	for (var s = 2; s >= 0; s--) {
		
		if (efectos[i][s] != "") {
			draw_sprite(spr_bloques_efectos,1,x + 3 + 4*i,y - 1 - 4*s)
		} else if (s = 0) {
			draw_sprite(spr_bloques_efectos,0,x + 3 + 4*i,y - 1 - 4*s)
		} else if (efectos[i][s - 1] != "") {
			draw_sprite(spr_bloques_efectos,0,x + 3 + 4*i,y - 1 - 4*s)
		}
		
	}
	if ((x + 3 + 4 * i) > 132) { //detener for si es inecesario el resto.
		i = array_length(efectos)
	}
}

for(var i = 0; i < (array_length(efectos)); i++) {
	
	for (var s = 2; s >= 0; s--) {
		if (s = 0) or (efectos[i][s - 1] != "") {
			if mouse_rectangle(x + 4*i,y - 4 - 4 * s,x + 3 + 4*i,y - 1 - 4*s) {
				
				draw_sprite(spr_bloques_efectos,2,x + 3 + 4*i,y - 1 - 4*s)
				
				if (mouse_check_button_released(mb_left)) {
					set_mouse_pulse("efecto;" + string(i) + ";" + string(s) + ";" + efectos[i][s])
				} else if mouse_check_button_released(mb_right) {
					efectos[i][s] = ""
					set_mouse_pulse("");
				}
				
			}
		}
	}
	if ((x + 3 + 4 * i) > 132) { //detener for si es inecesario el resto.
		i = array_length(efectos)
	}
}

if (obj_control_editor.mouse_selected_data[0] = "efecto") {
	var posx_ef = real(obj_control_editor.mouse_selected_data[1])
	var posy_ef = real(obj_control_editor.mouse_selected_data[2])
	draw_sprite(spr_bloques_efectos,2,x + 3 + 4*posx_ef,y - 1 - 4*posy_ef)
}
