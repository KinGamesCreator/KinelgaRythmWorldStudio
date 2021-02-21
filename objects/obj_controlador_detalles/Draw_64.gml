/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


if (obj_control_editor.mouse_selected_data[0] = "nota") {
	draw_set_font(font_pix1)
	draw_set_alpha(1)
	draw_set_color(c_white)
	draw_set_valign(fa_middle)
	draw_set_halign(fa_center)
	
	var diference = display_get_gui_width() / 1280
	
	var mensaje = ""
	
	if (obj_control_editor.mouse_selected_data[1] = "isq") {
		mensaje = string(obj_control_barra_notas.array_notas_isq[obj_control_editor.mouse_selected_data[2]])
	} else {
		mensaje = string(obj_control_barra_notas.array_notas_der[obj_control_editor.mouse_selected_data[2]])
	}
	
	draw_text_transformed((x + sprite_width / 2) * 10 * diference,(y + (sprite_height / 2)) * diference * 10,mensaje,diference /2,diference/2,0)
	
} else if (obj_control_editor.mouse_selected_data[0] = "efecto") and (string_char_at(obj_control_editor.mouse_selected_data[3],1) = "C") {
	draw_set_font(font_pix1)
	draw_set_alpha(1)
	draw_set_color(c_white)
	draw_set_valign(fa_middle)
	draw_set_halign(fa_center)
	var diference = display_get_gui_width() / 1280
	var mensaje = "x" + string_format(real(string_copy(obj_controlador_efectos.efectos[real(obj_control_editor.mouse_selected_data[1])][real(obj_control_editor.mouse_selected_data[2])],2,5))/0.010,1,1)
	draw_text_transformed((x + sprite_width / 2) * 10 * diference,(y + (sprite_height / 2)) * diference * 10,mensaje,diference /2,diference/2,0)
}