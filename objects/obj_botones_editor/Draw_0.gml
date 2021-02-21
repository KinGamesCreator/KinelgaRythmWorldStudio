/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

draw_set_alpha(1)
for(var i = 0;i <= 5;i++) {
	draw_set_alpha(1)
	if (i < 5) {
		draw_sprite(spr_botones,i,8 * i,0)
		if (mouse_rectangle(8 * i,0,8*i + 7,7)) {
			draw_set_alpha(0.5)
			draw_set_color(c_white)
			draw_rectangle(8*i,0,8*i + 6,6,0)
		}
	} else {
		draw_sprite(spr_botones,5,128 - 8,0)
		if (mouse_rectangle(121,0,127,7)) {
			draw_set_alpha(0.5)
			draw_set_color(c_white)
			draw_rectangle(121,0,127,6,0)
		}
	}
}

