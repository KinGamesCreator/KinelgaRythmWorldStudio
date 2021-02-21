/// @description Insert description here
// You can write your code in this editor
if (activate = true) {
	
	visible = 1
	image_blend = global.color_ene
	
	image_angle += speed_rotation * global.time_delta
	
	if (y > 1500) {
		activate = false
	}
	
	if (pulsado = false) or (soltado_antes) {
		vspeed = global.veloc_ene * global.time_delta;
	} else {
		vspeed = 0
	}
	
} else {
	cola = 0
	vspeed = 0
	visible = 0
	pulsado = false
	soltado_antes = false
}