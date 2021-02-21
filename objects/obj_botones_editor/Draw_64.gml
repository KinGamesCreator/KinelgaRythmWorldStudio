/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (export) {
	var diference = display_get_gui_width() / 128
	draw_set_alpha(1)
	draw_set_color(1)
	draw_rectangle(0,0,128 * diference,72 * diference,0)
	draw_set_font(font_pix1)
	draw_set_color(c_white)
	draw_set_valign(fa_middle)
	draw_set_halign(fa_center)
	draw_text_transformed(64 * diference,36 * diference,"EXPORTANDO...",0.5,0.5,0)
}