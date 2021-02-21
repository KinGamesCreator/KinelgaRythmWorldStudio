/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


for (var i = ver_lvls; i < (ver_lvls + 9 - rest(cantidad_lvl,ver_lvls + 9)); i++) {
	
	draw_set_color(merge_color(c_blue,c_black,0.5))
	draw_rectangle(32,8*(i - ver_lvls),95,7 + 8*(i - ver_lvls),0)
	
	if mouse_rectangle(32,8* (i - ver_lvls),95,7 + 8*(i - ver_lvls)) {
		
		draw_set_alpha(0.2)
		draw_set_color(c_white)
		draw_rectangle(32,8*(i - ver_lvls),95,7 + 8*(i - ver_lvls),0)
		draw_set_alpha(1)
		
	}
	
}

