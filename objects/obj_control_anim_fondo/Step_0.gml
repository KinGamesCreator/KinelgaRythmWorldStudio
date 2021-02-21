/// @description Insert description here
// You can write your code in this editor
if (room != room_play) and (room != room_charge_play) {
	instance_destroy()
}
if (activado = true) {
	crear += 0.5 * global.time_delta
	crear += 50 * abs(global.color_speed) * global.time_delta
	
	if crear >= 60
	{
		crear = 0
		randomize()
		var xc = choose(-100, 820)
		var confirm = true
		var objeto_actual = 0
		while(confirm = true) {
			confirm = objetos_fondo[objeto_actual].activate
			if (confirm = true) {
				objeto_actual += 1
			}
		}
		objetos_fondo[objeto_actual].x = xc
		objetos_fondo[objeto_actual].y = irandom(1280)
		objetos_fondo[objeto_actual].visible = 1
		objetos_fondo[objeto_actual].activate = true
		objetos_fondo[objeto_actual].image_index = irandom(3)
		if (objetos_fondo[objeto_actual].x < 640) {
			objetos_fondo[objeto_actual].hspeed = 2 + 150 * abs(global.color_speed)
		} else {
			objetos_fondo[objeto_actual].hspeed = -2 + -150 * abs(global.color_speed)
		}
		
	}
	
}