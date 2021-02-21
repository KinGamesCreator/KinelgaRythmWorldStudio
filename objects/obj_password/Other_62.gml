/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (ds_map_find_value(async_load, "id") == archivo) {
	var status = ds_map_find_value(async_load, "status");
	if (status = 0 ) {
		var _archivo = file_text_open_read(ds_map_find_value(async_load, "result"))
		while(!file_text_eof(_archivo)) {
			var codigo = file_text_read_string(_archivo)
			if (clave_ingresada = string_upper(codigo)) {
				activate = true
			}
			file_text_readln(_archivo)
		}
		file_text_close(_archivo)
		file_delete(ds_map_find_value(async_load, "result"))
		if (activate = false) {
			show_message("Clave incorrecta")
			game_end()
		}
		
	} else {
		show_message("ERROR de internet, no se puede continuar")
		game_end()
	}
}
