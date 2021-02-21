/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (collision_point(mouse_x,mouse_y,id,1,0) and (mouse_check_button_released(mb_left))) {
	
	if (tipo = 0) {
		objeto.ver_lvls -= 1
		if (objeto.ver_lvls < 0) {
			objeto.ver_lvls = 0
		}
	} else {
		objeto.ver_lvls += 1
		if (objeto.ver_lvls > (objeto.cantidad_lvl - 1)) {
			objeto.ver_lvls = (objeto.cantidad_lvl - 1)
		}
	}
	
}

if (collision_point(mouse_x,mouse_y,id,1,0) and (mouse_check_button(mb_left))) {
	if (tipo = 0) {
		image_index = 1
	} else {
		image_index = 3
	}
} else {
	if (tipo = 0) {
		image_index = 0
	} else {
		image_index = 2
	}
}
