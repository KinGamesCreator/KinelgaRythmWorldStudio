// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_explosion(objeto,posx,posy){
	randomize()
	var ran = (irandom(360))
	var num_parts = irandom_range(5,7)
	for(var i = 0; i < num_parts; i++) {
		var confirm = true
		var num_particle = 0
		while(confirm = true) {
			confirm = obj_control_juego.particulas[num_particle].activate
			if (confirm =  true) {
				num_particle += 1
			}
		}
		xlr8 = obj_control_juego.particulas[num_particle]
		xlr8.direction = ((360 / num_parts) * i) + ran
		xlr8.image_index = objeto.image_index
		xlr8.speed = 12 * (global.time_delta)
		xlr8.cont = 8
		xlr8.activate = true
		xlr8.visible = 1
		xlr8.image_alpha = 1
		xlr8.x = posx
		xlr8.y = posy
	}
	
}