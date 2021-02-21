/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (obj_control_menu.estado = 0) {
	visible = 1
	if (collision_point(mouse_x,mouse_y,id,1,0)) {
		image_index = 1
		if mouse_check_button_released(mb_left) {
			obj_control_menu.estado = 4
		}
	} else {
		image_index = 0
	}
} else {
	visible = 0
}
