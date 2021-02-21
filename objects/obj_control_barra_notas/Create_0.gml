/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


array_notas_isq[0] = ""//cargar array notas isq
array_notas_der[0] = ""//cargar array notas der

for (var i = 0; i < ((audio_sound_length(global.music) * 6) + 1);i++) {
	array_notas_isq[i] = ""
	array_notas_der[i] = ""
}

//calcular barra para desplazar
tam_total = (array_length(array_notas_isq) * 4)
multiplic = 1280 / tam_total
pos_click = 0 //posicion en el que se hizo el click en la barra
pos_bar_ant = 0 //posicion de la barra anterior 

//movimiento de la barra 2
pos_click_mov2 = 0
pos_bar_ant2 = x

//cargar datos si hay una carga

#region separar datos en un array
var resultado_notes;
resultado_notes[0] = ""
var acumulador = ""
var contador = 0

for (var i = 0; i < string_length(global.carga_notes); i++) {
	if (string_char_at(global.carga_notes,i+1) = ";") {
		resultado_notes[contador] = acumulador
		acumulador = ""
		contador += 1
	} else {
		acumulador = acumulador + string_char_at(global.carga_notes,i+1)
	}
}
#endregion

contador = 0

for (var i = 0; i < ((audio_sound_length(global.music) * 6) + 1);i++) {
	
	if (resultado_notes[contador] = i * 10) {
		contador += 1
		repeat(2) {
			if (contador < array_length(resultado_notes)) and (string_char_at(resultado_notes[contador],1) = "L") {
				array_notas_isq[i] = string_replace(resultado_notes[contador],"L","")
				contador += 1
			}
			
			if (contador < array_length(resultado_notes)) and (string_char_at(resultado_notes[contador],1) = "R") {
				array_notas_der[i] = string_replace(resultado_notes[contador],"R","")
				contador += 1
			}
		}
		if (contador >= array_length(resultado_notes)) {
			break;
		}
		
	}
}
