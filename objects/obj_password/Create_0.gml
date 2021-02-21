/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

archivo = "hola"
activate = false
if !file_exists(working_directory + "DATA\\licencia.lic") {
	var archive = file_bin_open(working_directory + "DATA\\licencia.lic",2)
} else {
	var archive = file_bin_open(working_directory + "DATA\\licencia.lic",0)
}
var user = environment_get_variable("USERNAME")
var clave = ""
for (var i = 1; (i) <= file_bin_size(archive);i++) {
	file_bin_seek(archive,i-1)
	clave = clave + chr(file_bin_read_byte(archive)+32)
	
}
//show_message(clave + ";" + clave)
file_bin_close(archive)

if (string(clave) = string(user)) {
	room_goto(room_iniciador)
} else {
	clave_ingresada = string_upper(get_string("Ingresa la clave",""))
	archivo = http_get_file("https://drive.google.com/uc?export=download&id=11nOZxP3ntoLOwXkc6MjD7OJ0mFFYwrl8",working_directory+"onlinedata.txt")
}

