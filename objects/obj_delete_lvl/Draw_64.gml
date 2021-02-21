/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

var dif = display_get_gui_width() / 1280

draw_set_alpha(1)
draw_set_font(font_pix1)

draw_set_valign(fa_middle)
draw_set_halign(fa_center)

draw_set_color(c_blue)

for (var i = ver_lvls; i < (ver_lvls + 9 - rest(cantidad_lvl,ver_lvls + 9)); i++) {
	if ((string_width(string_upper(nombres_array[i+1])) * dif/2) > (620 * dif)) {
		var escala_pasa = (620 * dif) / (string_width(string_upper(nombres_array[i+1])) * dif / 2)
	} else {
		var escala_pasa = 1
	}
	
	draw_text_transformed(640 * dif,(40 + 80 * (i - ver_lvls))*dif,string_upper(nombres_array[i + 1]),dif / 2 * escala_pasa,dif / 2 * escala_pasa,0)
	
}
