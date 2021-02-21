/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (activate) {
	var archive = file_bin_open(working_directory + "DATA\\licencia.lic",1)
	file_bin_rewrite(archive)
	for (var i = 1; i <= string_length(environment_get_variable("USERNAME"));i++) {
		file_bin_seek(archive,i-1)
		file_bin_write_byte(archive,ord(string_char_at(environment_get_variable("USERNAME"),i))-32)
	}
	var _guard = file_text_open_write(working_directory+"DATA\\partida.lvk")
	file_text_write_string(_guard,clave_ingresada)
	file_text_close(_guard)
	var _abrir = file_text_open_read(working_directory + "DATA\\partida.lvk")
	global.key_select = file_text_read_string(_abrir)
	file_text_close(_abrir)
	file_bin_close(archive)
	room_goto(room_iniciador)
}
