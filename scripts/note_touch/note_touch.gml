// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function note_touch(_x1,_y1,_x2,_y2,_obj) {
	var diferencia = (_y2 - _y1) / 3
	var resultado = 0
	for (var i = 1; i <= 3; i++) {
		if (collision_rectangle(_x1,_y2 - diferencia * i,_x2,_y2,_obj,1,0)) {
			var resultado = collision_rectangle(_x1,_y2 - diferencia * i,_x2,_y2,_obj,1,0)
			break;
		}
	}
	if (resultado) {
		return(resultado)
	} else {
		return(false)
	}
}