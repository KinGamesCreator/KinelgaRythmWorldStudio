/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


ini_open("sesion.ini")

global.nombre = ini_read_string("user","username","NIU123321")
global.ident = ini_read_real("user","ident",-1)

if global.nombre = "NIU123321" {
	global.nombre = get_string("Register: Enter username","")
	if global.nombre = ""{
		show_message("invalid username")
		game_end()
	} else {
		ini_write_string("user","username",global.nombre)
	}
}

if global.ident = -1 {
	randomize()
	global.ident = irandom_range(100,9999999)
	ini_write_real("user","ident",global.ident)
}

ini_close()


audio_play_sound(snd_inicio,1,0)
image_xscale = 2
image_yscale = 2
estado = 0
cont = 0





