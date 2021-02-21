// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_effects(_position_effect,_find_effect){
	var result = true
	for (var i = 0; i < 3; i++) {
		if (obj_controlador_efectos.efectos[_position_effect][i] = _find_effect) {
			result = false
		}
	}
	return result;
}