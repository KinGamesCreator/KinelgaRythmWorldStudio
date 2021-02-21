/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

switch(estado) {
	case 1: //crear nuevo
		#region crear
		var nombre = get_string("Level name","") //obtener nombre del nivel
		
		var otro = file_exists(working_directory + "levels\\music\\" + nombre + ".ogg") //comprobar si ya existe un nivel llamado asi
		
		if (!otro) and (nombre != "") { //Si el nombre fue eingresado y no existe otro...
			
			#region crear directorios si no existen
				
				if (!directory_exists(working_directory + "levels")) {
					directory_create(working_directory + "levels")
					directory_create(working_directory + "levels\\music")
					directory_create(working_directory + "levels\\data")
				}
				
			#endregion
			
			var direccion = get_open_filename("archive ogg |*.ogg","") //obtener direccion de la musica
			
			if (direccion != "") {
				
				file_copy(direccion,(working_directory + "levels\\music\\") + nombre + ".ogg") //mover musica a carpeta de datos
				var creation = file_text_open_write(working_directory + "levels\\data\\" + nombre + ".lvl")
				file_text_write_string(creation,"")
				file_text_writeln(creation)
				file_text_write_string(creation,"")
				file_text_writeln(creation)
				file_text_write_string(creation,"")
				file_text_close(creation)
				
				//llevar a la room editor
				global.name = nombre
				global.carga_notes = ""
				global.carga_effects = ""
				global.carga_music = audio_create_stream((working_directory + "levels\\music\\") + nombre + ".ogg")
				audio_stop_sound(global.carga_music)
				room_goto(room_ir)
				
			} else {
				audio_play_sound(snd_error,1,0)
				estado = 0
			}
			
			
		} else { //si hay un error en el nombre...
			audio_play_sound(snd_error,1,0)
			if (otro) {
				show_message("a level with that name already exists.")
			} else {
				show_message("The name cannot be empty.")
			}
			estado = 0 //fijar estado a 0
		}
		#endregion
	break;
	
	case 2: //editar ya hecho
	
	room_goto(room_menu_editar)
	
	break;
	case 3: //Importar
		#region import
			
			var _cargar = get_open_filename("KinelgaLevel|*.lk2","Level.lk2")
			if (_cargar != "") {
				zip_unzip(_cargar,working_directory+"Carga\\")
				var nombre = string_replace(filename_name(file_find_first(working_directory + "carga\\*.lvl",0)),".lvl","")
				file_copy(working_directory+"carga\\" + nombre + ".lvl",working_directory+"levels\\data\\" + nombre + ".lvl")
				file_copy(working_directory+"carga\\" + nombre + ".ogg",working_directory+"levels\\music\\" + nombre + ".ogg")
				file_delete(working_directory+"carga\\" + nombre + ".lvl")
				file_delete(working_directory+"carga\\" + nombre + ".ogg")
				directory_destroy(working_directory+"carga\\")
				
				var cargando = file_text_open_read(working_directory + "levels\\data\\" + nombre + ".lvl")
				
				global.carga_notes = file_text_read_string(cargando)
				file_text_readln(cargando)
				global.carga_effects = file_text_read_string(cargando)
				file_text_close(cargando)
				
				global.carga_music = audio_create_stream(working_directory + "levels\\music\\" + nombre + ".ogg")
				
				global.name = string_replace(nombre,".lvl","")
				
				room_goto(room_ir)
			} else {
				audio_play_sound(snd_error,1,0)
				estado = 0
			}
			
		#endregion
	break;
	case 4:
		room_goto(room_menu_eliminar)
	break;
	
}

/*
#region directorios
		if !directory_exists("music")
		{
			directory_create("music")
		}
		if !directory_exists("data")
		{
			directory_create("data")
		}
		#endregion
		
		var direccion = get_open_filename("archivo ogg |*.ogg","")
		
		if direccion != ""
		{
			file_copy(direccion,(working_directory + "music\\") + nombre + ".ogg") //mover musica a carpeta de datos
			global.directorio = ((working_directory + "music\\") + nombre + ".ogg") //obtener el nuevo directorio
			var data = file_text_open_write(working_directory + "data\\" + nombre + ".lvl") //crear archivo de datos
			file_text_write_string(data,"") //rellenar con datos vacios
			file_text_writeln(data) // pasar de linea
			file_text_write_string(data,"01;") //rellenar parte de efectos
			file_text_writeln(data) //saltar linea
			file_text_write_real(data,obj_controlador.tiempos) //rellenar parte de tiempos
			file_text_close(data)
			global.nombre_music = nombre //definir nombre de la cancion
			obj_controlador.musica_edit = audio_create_stream(global.directorio) //definir pista musical
			room_goto(room_editor) //llevar al editor
		}
*/

if (contador >= 1) {
	contador -= 1
	if (contador = 0) {
		keys = http_get_file("https://drive.google.com/uc?export=download&id=11FZ_3LoheeeJ9u7btSGQVFX-nwGWCS1E",working_directory + "steam.lic")
	}
}