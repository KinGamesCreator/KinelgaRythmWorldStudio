// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function mouse_rectangle(px1,py1,px2,py2) {
	if (mouse_x >= px1) and (mouse_y >= py1) and (mouse_x <= px2) and (mouse_y <= py2) {
		return(true);
	} else {
		return(false);
	}
}