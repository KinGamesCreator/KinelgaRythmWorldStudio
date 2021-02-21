/// @description Insert description here
// You can write your code in this editor
if (estado < 2) {
	draw_set_font(font_name)
	draw_set_valign(fa_bottom)
	draw_set_halign(fa_center)
	draw_set_color(c_orange)
	
	var scale_nom = 1
	if (string_width(nombre) > 650) {
		scale_nom = 650 / string_width(nombre)
	}
	
	draw_text_transformed(pos_x_nom,240,nombre,scale_nom,scale_nom,0)
	draw_set_color(c_white)
	draw_set_font(font_credits)
	draw_set_valign(fa_top)
	draw_text(pos_x_cred,245,creditos)
} else {
	draw_sprite_ext(spr_puntaje,0,360,pos_y_porcent,1,1,0,global.color_player,1)
	draw_set_font(font_porcent)
	draw_set_color(global.color_cube)
	draw_set_valign(fa_middle)
	draw_text(360,pos_y_porcent + 40, string(porcentaje) + "%")
	if (pos_y_linea > 80) {
		draw_set_color(global.color_player)
		draw_rectangle(357,80,363,pos_y_linea,0)
	}
}