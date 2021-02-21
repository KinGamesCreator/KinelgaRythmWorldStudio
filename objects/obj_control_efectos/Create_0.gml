/// @description Insert description here
// You can write your code in this editor
#region cargar datos de efectos

var leer_nivel = file_text_open_read(working_directory + "levels\\data\\" + global.name + ".lvl")
file_text_readln(leer_nivel)
var cadena = file_text_read_string(leer_nivel)
file_text_close(leer_nivel)

#endregion

#region separar datos

var resultado = ""
var numero = 0
efectos[0] = 0

for (var i = 1; i < string_length(cadena) + 1; i++)
{
	if string_char_at(cadena,i) != ";"
	{
		resultado += string_char_at(cadena,i)
	}
	else
	{
		efectos[numero] = resultado
		numero += 1
		resultado = ""
	}
}

avance = 0

#endregion

#region cargar flash

for (var i = 0; i < 10; i++) {
	flashes[i] = instance_create_depth(0,0,-99,obj_efecto_flash)
}

#endregion
