/// @description Insert description here
// You can write your code in this editor
depth = -80
#region datos

var leer_nivel = file_text_open_read(working_directory + "levels\\data\\" + global.name + ".lvl")
datos = file_text_read_string(leer_nivel)
file_text_close(leer_nivel)

estado = 0
nombre = global.name
creditos = "[SPACE] to quit\n[R] to restart."
porcentaje = 0
enemigos_dados = 0
valor_ene = 1
clave = false
music = audio_create_stream(working_directory + "levels\\music\\" + global.name + ".ogg")
comenzo = false

#region definir valor del enemigo
var cant_enes = 0
for (var i = 1; i <= string_length(datos);i++) {
	if (string_char_at(datos,i) = "L") or (string_char_at(datos,i) = "R") {
		cant_enes += 1
	}
}
valor_ene = 100 / cant_enes

#endregion

#endregion

#region estado 0 y 1 = titulo y creditos mostrar

pos_x_nom = 1080 //posicion x del nombre

pos_x_cred = -360 //posicion x de los creditos

#endregion

#region estado 2 porcentaje y linea

pos_y_porcent = -80
pos_y_linea = 0

#endregion

#region reproductor

#region cargar datos nivel
var resultado = ""
var numero = 0
creaciones[0] = ""

for (var i = 1; i < string_length(datos) + 1; i++)
{
	if string_char_at(datos,i) != ";"
	{
		resultado += string_char_at(datos,i)
	}
	else
	{
		creaciones[numero] = resultado
		numero += 1
		resultado = ""
	}
}
#endregion

#region variables necesarias

vamos = 0 //cual casilla vamos del array
time = -80 //frames que vamos

#endregion

#endregion

#region cargar enemigos

for(var i = 0;i < 30; i++) {
	enemigos[i] = instance_create_depth(-100,1500,0,obj_enemigo)
}

#endregion

#region cargar particulas

for(var i = 0;i < 50; i++) {
	particulas[i] = instance_create_depth(-100,1500,-80,obj_particle)
}

#endregion

#region cargar lasers

for (var i = 0; i < 10; i++) {
	laser_l[i] = instance_create_depth(180,1160,-98,obj_effect_kill)
	laser_r[i] = instance_create_depth(540,1160,-98,obj_effect_kill)
}



#endregion

clave2 = false