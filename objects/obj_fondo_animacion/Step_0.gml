/// @description Insert description here
// You can write your code in this editor
if (room != room_play) and (room != room_charge_play) {
	instance_destroy()
}
if (activate = true) {
	
	if (obj_control_anim_fondo.activado = false) {
		visible = 0
	}
	
	hspeed = ((sign(hspeed) * 1) + (sign(hspeed) * 160 * (abs(global.color_speed)))) * global.time_delta
	image_angle += 2 * sign(hspeed) * global.time_delta
	
	if (sign(hspeed) = 1) and (x > 820){
		activate = false
		visible = 0
	} else if (sign(hspeed) = -1) and (x < -100) {
		activate = false
		visible = 0
	}
	
} else  {
	hspeed = 0
}