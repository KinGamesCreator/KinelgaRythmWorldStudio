/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (collision_point(mouse_x,mouse_y,id,1,0) and (mouse_check_button_released(mb_left))) {
	room_goto(room_menu_inicial)
}
if (collision_point(mouse_x,mouse_y,id,1,0)) and (mouse_check_button(mb_left)) {
	image_index = 1
} else {
	image_index = 0
}

