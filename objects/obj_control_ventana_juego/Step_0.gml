/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if window_has_focus() {
	
	if (vent_height != window_get_height()) {
		
		window_set_size(round(window_get_height() * (9/16)),round(window_get_height()))
		vent_height = window_get_height()
		vent_width = window_get_width()
		display_set_gui_size(vent_width,vent_height)
		window_set_position((display_get_width() - window_get_width()) / 2, window_get_y())
		surface_resize(application_surface,vent_width,vent_height)
	}
	else if (vent_width != window_get_width()) {
		window_set_size(round(window_get_width()),round(window_get_width() * (16/9)))
		vent_width = window_get_width()
		vent_height = window_get_height()
		display_set_gui_size(vent_width,vent_height)
		window_set_position((display_get_width() - window_get_width()) / 2, window_get_y())
		surface_resize(application_surface,vent_width,vent_height)
	}
	
}




