/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

for (var i = ver_lvls; i < (ver_lvls + 9 - rest(cantidad_lvl,ver_lvls + 9)); i++) {
	
	if (mouse_rectangle(32,8*(i - ver_lvls),95,7 + 8*(i - ver_lvls)) and (mouse_check_button_released(mb_left))) {
		
		var cargando = file_text_open_read(working_directory + "levels\\data\\" + nombres_array[i + 1])
		
		global.carga_notes = file_text_read_string(cargando)
		file_text_readln(cargando)
		global.carga_effects = file_text_read_string(cargando)
		file_text_close(cargando)
		
		global.carga_music = audio_create_stream(working_directory + "levels\\music\\" + string_replace(nombres_array[i+1],".lvl",".ogg"))
		
		global.name = string_replace(nombres_array[i+1],".lvl","")
		
		room_goto(room_ir)
		
	}
	
}

if (keyboard_check_pressed(ord("S"))) or (keyboard_check_pressed(vk_down)) or (mouse_wheel_down()) {
	ver_lvls += 1
} else if (keyboard_check_pressed(ord("W"))) or (keyboard_check_pressed(vk_up)) or (mouse_wheel_up()) {
	ver_lvls -= 1
}

if (ver_lvls < 0) {
	ver_lvls = 0
} else if (ver_lvls > (cantidad_lvl - 1)) {
	ver_lvls = (cantidad_lvl - 1)
}