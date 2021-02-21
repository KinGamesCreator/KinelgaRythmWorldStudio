// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
exception_unhandled_handler(function(exception){
	
	var _escribir = file_text_open_write(game_save_id + "report_errors\\report.inf")
	file_text_write_string(_escribir,string_replace_all(string_replace_all("-------------------------------------\n" + exception.longMessage,"\n","#"),"\n",""))
	file_text_writeln(_escribir)
	file_text_write_string(_escribir,"v1.3.2")
	file_text_writeln(_escribir)
	file_text_write_string(_escribir,string(global.nombre + "(" + string(global.ident) + ")"))
	file_text_close(_escribir)
	execute_shell(game_save_id + "\\report_errors\\Report_error.exe",0)
	show_message("Ha ocurrido un error :(")
	
})