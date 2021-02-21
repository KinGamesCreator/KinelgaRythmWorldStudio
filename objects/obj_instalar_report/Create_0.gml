/// @description Insert description here
// You can write your code in this editor
ini_open("version.ini")

var version = ini_read_string("info","version","")
var install = false

if (version != "1.3.2") {
	directory_destroy(game_save_id + "report_errors\\")
	version = "1.3.2"
	ini_write_string("info","version",version)
	install = true
}

ini_close()
if (!directory_exists(game_save_id + "report_errors")) or (install) {
	directory_create(game_save_id + "report_errors")
	zip_unzip(program_directory + "datafiles\\datos.zip",game_save_id + "report_errors\\")
	//file_copy(program_directory + "\\datafiles\\data.win",game_save_id + "\\report_errors\\data.win")
	//file_copy(program_directory + "\\datafiles\\options.ini",game_save_id + "\\report_errors\\options.ini")
	//file_copy(program_directory + "\\datafiles\\Report_error.exe", game_save_id + "\\report_errors\\Report_error.exe")
}

if (file_exists(game_save_id+ "report_errors\\report.inf")) {
	file_copy(game_save_id + "report_errors\\report.inf",working_directory + "old_report.inf")
	file_delete(game_save_id + "report_errors\\report.inf")
}

//NSP_execute_string("hola = file_text_open_write(\"UnGusto.txt\");file_text_write_string(hola,\"jaja\");file_text_close(hola);")
