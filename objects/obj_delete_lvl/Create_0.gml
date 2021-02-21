/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

ver_lvls = 0

#region cargar cantidad lvls

nombres_array[0] = ""

cantidad_lvl = 0 //cantidad de niveles ,empieza en 0

var name_lvl = filename_name(file_find_first(working_directory + "levels\\data\\*.lvl",0)); //Carga el nombre del primer archivo

if (name_lvl != "") //le digo que si no es igual nada
{
	do //hacer
	{
		cantidad_lvl++ //suma uno porque le tengo dicho que cantidad sea 0
		nombres_array[cantidad_lvl] = name_lvl //guarde el nombren en un array 
		
		name_lvl = filename_name(file_find_next());//y que pase siguiente nombre
	}
	until (name_lvl = "") //name sea igual a nada , de lo contrario se repite el do
 }

#endregion
if (cantidad_lvl = 0) {
	show_message("No hay niveles creados")
	room_goto(room_menu_inicial)
}
