/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

draw_set_alpha(1)

draw_sprite(spr_barra_notas,0,0,y) //dibujar barra de notas

for(var i = 0; i < array_length(array_notas_isq) ; i++) { //dibujar lineas
	
	if ((i / 6) = round(i / 6)) and (i != 0) {
		draw_set_color(c_white)
		draw_set_alpha(1)
		draw_line(x - 1 + 4 * i,y,x - 1 + 4 * i,y + 11)
		draw_line(x - 1 + 4 * i,y + 14,x - 1 + 4 * i,y + 25)
	}
}

for(var i = 0; i < array_length(array_notas_isq) ; i++) { //dibujar notas en la pista
	
	#region notas isq
	
	if (array_notas_isq[i] = "n") {
		 
	} else if (array_notas_isq[i] != "") and (real(array_notas_isq[i]) >= 1) {
		if (array_notas_isq[i] > 1) {
			draw_set_color(c_blue)
			draw_set_alpha(0.5)
			draw_rectangle(x + 1 + 4 * i,y + 5,x - 1 + (4) * (i + array_notas_isq[i]),y + 7,0)
			//draw_sprite_ext(spr_notas,1,x+4 * i,y + 4,1,1,0,c_white,0.5)
			//draw_sprite_ext(spr_notas,2,x+4 * (i + 1),y + 4,array_notas_isq[i] - 1,1,0,c_white,0.5)
			draw_set_alpha(1)
		}
		draw_sprite(spr_notas,0,x + 4 * i + 1,y + 4)
	}
	
	if (mouse_rectangle(round(x + 4 * i),y,round(x + 4 * i + 3),y + 12)) and (global.mouse_pulse = "none") { //seleccion notas isq
		
		draw_set_alpha(0.3)
		draw_set_color(c_white)
		draw_rectangle(x + 4 * i , y, x + 4 * i + 3, y + 12, 0)
		draw_set_alpha(1)
		
	}
	
	#endregion
	
	#region notas der
	
	if (array_notas_der[i] = "n") {
		 
	} else if (array_notas_der[i] != "") and (real(array_notas_der[i]) >= 1) {
		if (array_notas_der[i] > 1) {
			draw_set_color(c_blue)
			draw_set_alpha(0.5)
			draw_rectangle(round(x + 1 + 4 * i),y + 19,round(x - 1 + (4) * (i + array_notas_der[i])),y + 21,0)
			//draw_sprite_ext(spr_notas,1,x+4 * i,y + 18,1,1,0,c_white,0.5)
			//draw_sprite_ext(spr_notas,2,x+4 * (i + 1),y + 18,array_notas_der[i] - 1,1,0,c_white,0.5)
			draw_set_alpha(1)
		}
		draw_sprite(spr_notas,0,x + 4 * i + 1,y + 18)
	}
	
	if (mouse_rectangle(round(x + 4 * i),y + 14,round(x + 4 * i + 3),y + 26)) and (global.mouse_pulse = "none") { //seleccion notas der
		
		draw_set_alpha(0.3)
		draw_set_color(c_white)
		draw_rectangle(x + 4 * i , y + 14, x + 4 * i + 3, y + 26, 0)
		draw_set_alpha(1)
		
	}
	
	#endregion
	
	if ((x + 4 * (i + 1)) > 128) { //detener for si es inecesario el resto.
		i = array_length(array_notas_isq)
	}
	
}

draw_sprite(spr_efectos_barra,0,0,y)


if (obj_control_editor.mouse_selected_data[0] = "nota") {
	if (obj_control_editor.mouse_selected_data[1] = "isq") {
		draw_set_alpha(0.3)
		draw_set_color(c_white)
		draw_rectangle(x + 4 * real(obj_control_editor.mouse_selected_data[2]) , y, x + 4 * real(obj_control_editor.mouse_selected_data[2]) + 3, y + 12, 0)
	} else {
		draw_set_alpha(0.3)
		draw_set_color(c_white)
		draw_rectangle(x + 4 * real(obj_control_editor.mouse_selected_data[2]) , y + 14, x + 4 * real(obj_control_editor.mouse_selected_data[2]) + 3, y + 26, 0)
	}
}



