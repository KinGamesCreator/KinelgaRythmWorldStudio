/// @description Insert description here
// You can write your code in this editor

if (room != room_play) and (room != room_charge_play) {
	instance_destroy()
}
var tocando = 0

#region controles moviles
/*
for (var i = 0; i < 5; i++) { //detectar si se está pulsando
	if (tocando = 0) {
		if collision_point(device_mouse_x(i),device_mouse_y(i),id,1,0) {
			if device_mouse_check_button_pressed(i,mb_left) {
				tocando = 2
			} else if device_mouse_check_button_released(i,mb_left) {
				tocando = -1
			} else if device_mouse_check_button(i,mb_left) {
				tocando = 1
			} else {
				tocando = 0
			}
		} else {
			tocando = 0
		}
	}
}
*/
#endregion

#region controles PC

if (tipo = 0) {
	var tecla = vk_left
} else {
	var tecla = vk_right
}

if (tocando = 0) {
	if keyboard_check_pressed(tecla) {
		tocando = 2
	} else if keyboard_check_released(tecla) {
		tocando = -1
	} else if keyboard_check(tecla) {
		tocando = 1
	} else {
		tocando = 0
	}
}

if (tocando = 0) {
	if (tipo = 0) {
		var tecla = ord("A")
	} else {
		var tecla = (ord("D"))
	}
	if keyboard_check_pressed(tecla) {
		tocando = 2
	} else if keyboard_check_released(tecla) {
		tocando = -1
	} else if keyboard_check(tecla) {
		tocando = 1
	} else {
		tocando = 0
	}
}

#endregion

//definir la variable de si se esta tocando o que.

if (tipo = 1) {
	global.b2 = tocando
} else {
	global.b1 = tocando
}

if (tocando <= 0) {
	image_alpha = 0.6
	image_xscale = 1
	image_yscale = 1
} else {
	image_alpha = 1
	image_xscale = 0.95
	image_yscale = 0.95
}

image_blend = global.color_mark

sprite_extra = 2

