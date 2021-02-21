/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_self()
draw_sprite(spr_visual,0,10,18)
draw_sprite_ext(spr_visual,1,10,18,beat,beat,0,merge_color(make_color_rgb(99,0,0),make_color_rgb(0,0,99),c_act),1)
draw_sprite_ext(spr_visual,1,10,18,1,1,0,c_white,flash)
switch(obj_control_editor.mouse_selected_data[0]) {
	case "":
		draw_sprite(spr_audifonos,0,64,18)
	break;
	case "efecto":
		switch(string_char_at(obj_control_editor.mouse_selected_data[3],1)) {
			case "F":
				draw_sprite(spr_audifonos,1,64,18)
			break;
			case "L":
				draw_sprite(spr_audifonos,2,64,18)
			break;
		}
	break;
	
}
