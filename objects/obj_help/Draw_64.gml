/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var dif = display_get_gui_width() / 128

draw_set_valign(fa_middle)
draw_set_halign(fa_left)
draw_set_alpha(1)
draw_set_color(c_yellow)
draw_set_font(font_pix1)

var decir = obj_control_editor.mouse_selected_data[0]

if (decir = "efecto") {
	decir = "effect"
	switch(string_char_at(obj_control_editor.mouse_selected_data[3],1)) {
		case "F":
			decir = decir + "_flash"
		break;
		case "L":
			decir = decir + "_beat"
		break;
		case "C":
			decir = decir + "_color"
		break;
	}
}
if (decir = "nota") {
	decir = "pulse_"
	if (obj_control_editor.mouse_selected_data[1] = "isq") {
		decir = decir + "left_[" + obj_control_barra_notas.array_notas_isq[obj_control_editor.mouse_selected_data[2]] + "]"
	} else {
		decir = decir + "right_[" + obj_control_barra_notas.array_notas_der[obj_control_editor.mouse_selected_data[2]] + "]"
	}
}
if (decir = "") {
	decir = global.name
}

if ((string_width(string_upper(decir)) * dif * (3 / 60)) > (71 * dif)) {
	var escala_pasa = (71 * dif) / (string_width(string_upper(decir)) * dif * (3/60))
} else {
	var escala_pasa = 1
}

draw_text_transformed(dif * (x + 7),dif * (y+3.5),string_upper(decir),dif * (3 / 60) * escala_pasa,dif * (3 / 60) * escala_pasa,0)
