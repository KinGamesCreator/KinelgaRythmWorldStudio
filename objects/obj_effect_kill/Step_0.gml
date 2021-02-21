/// @description Insert description here
// You can write your code in this editor
if (activate) {
	
	if note_touch(x - 140,y - 80, x + 140, y + 80,obj_enemigo) and (image_alpha = 0.5) and (enganchado = false) {
		ene = note_touch(x - 140,y - 80, x + 140, y + 80,obj_enemigo)
		ene.pulsado = true
		encontro = 1
		enganchado = true //definir que se ha encontrado con un enemigo
	} else if (encontro = 0) {
		encontro = 2
		obj_control_juego.clave2 = true
	}
	
	/*
	if collision_rectangle(x - 140,y - 80, x + 140, y + 80,obj_enemigo,1,0) and (image_alpha = 0.5) and (enganchado = false) {
		ene = collision_rectangle(x - 140,y - 80, x + 140, y + 80,obj_enemigo,1,0)
		ene.pulsado = true
		encontro = 1
		enganchado = true //definir que se ha encontrado con un enemigo
	} else if (encontro = 0) {
		encontro = 2
		obj_control_juego.clave2 = true
	}
	*/
	
	if (enganchado = true) {
		ene.cola -= global.time_delta
		if (ene.cola <= 0) {
			create_explosion(ene,ene.x,ene.y) //Crear explosion de nota
			ene.activate = false //desactivar nota
			ene.x = -100 //sacar nota de pantalla
			ene.y = -700
			ene.cola = 0
			obj_control_juego.clave = true //sumar un punto
			enganchado = false
			ene.cola = 0
			ene.vspeed = 0
			ene.visible = 0
			ene.pulsado = false
			ene.soltado_antes = false
			if (x < 360) {
			if (global.b1 = 0) {
				enganchado = false
			}
		} else {
			if (global.b2 = 0) {
				enganchado = false
			}
		}
		}
		
		if (x < 360) {
			if (global.b1 = 0) {
				enganchado = false
				ene.soltado_antes = true
			}
		} else {
			if (global.b2 = 0) {
				enganchado = false
				ene.soltado_antes = true
			}
		}
		
	} 
	if (!enganchado) {
		
		if (image_alpha = 0) {
			activate = false
			encontro = 0
			visible = 0
			image_alpha = 0.5
			enganchado = false
			ene = 0
			
		} else {
			image_alpha -= 0.125 * (global.time_delta)
			if (image_alpha < 0) {
				image_alpha = 0
			}
		}
	}
}
