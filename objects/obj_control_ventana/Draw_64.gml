/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (keyboard_check(ord("I"))) {
	draw_set_color(c_black)
	draw_set_alpha(0.7)
	draw_rectangle(0,0,display_get_gui_width(),display_get_gui_height(),0)
	draw_set_color(c_white)
	draw_set_font(font_pix1)
	draw_set_valign(fa_middle)
	draw_set_halign(fa_center)
	var dif = display_get_gui_width() / 1280
	draw_text_transformed(640 * dif, 360 * dif, string_upper("Programming: King! GC (@KinGamesCreator)\nDesign: King! GC (@KinGamesCreator)\nCover page: Joaquin (@Cerocreativo1)"),dif / 3,dif / 3,0)
	draw_set_alpha(1)
}