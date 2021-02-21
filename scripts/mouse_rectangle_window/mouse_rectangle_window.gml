// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function mouse_rectangle_window(px1,py1,px2,py2) {
	if (window_mouse_get_x() >= px1) and (window_mouse_get_y() >= py1) and (window_mouse_get_x() <= px2) and (window_mouse_get_y() <= py2) {
		return(true);
	} else {
		return(false);
	}
}

