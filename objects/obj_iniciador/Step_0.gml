/// @description Inserte aquí la descripción
// Puede escribir su código en este editor



if (estado = 0) {
	
	if (image_xscale > 1) {
		image_xscale -= 0.05
	} else {
		estado = 1
	}
	
} else if (estado = 1) {
	cont += 1
	if (cont >= 180) {
		estado = 2
	}
} else {
	if (image_xscale < 2) {
		image_xscale += 0.05
	} else {
		room_goto(room_menu_inicial)
	}
}

image_yscale = image_xscale

