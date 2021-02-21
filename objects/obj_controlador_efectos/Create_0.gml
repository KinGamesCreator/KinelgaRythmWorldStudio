/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
ult_flash = -1
ult_beat = -1
efectos[0][0] = ""

for (var i = 0; i < ((audio_sound_length(global.music) * 6) + 1);i++) {
	efectos[i][0] = ""
	efectos[i][1] = ""
	efectos[i][2] = ""
}

resultado_fx[0] = ""
var contador = 0
var acumulador = ""
for (var i = 0; i < string_length(global.carga_effects); i++) {
	if (string_char_at(global.carga_effects,i+1) = ";") {
		resultado_fx[contador] = acumulador
		acumulador = ""
		contador += 1
	} else {
		acumulador = acumulador + string_char_at(global.carga_effects,i+1)
	}
}
contador = 0
for (var i = 0; i < ((audio_sound_length(global.music) * 6) + 1);i++) {
	
	if (resultado_fx[contador] = i * 10) {
		contador += 1
		for (var q = 0; q < 3; q++) {
			if (contador < array_length(resultado_fx)) and (string_char_at(resultado_fx[contador],1) = "C") {
				efectos[i][q] = resultado_fx[contador]
				contador += 1
				//q += 1
			} else if (contador < array_length(resultado_fx)) and (string_char_at(resultado_fx[contador],1) = "F") {
				efectos[i][q] = resultado_fx[contador]
				contador += 1
				//q += 1
			} else if (contador < array_length(resultado_fx)) and (string_char_at(resultado_fx[contador],1) = "L") {
				efectos[i][q] = resultado_fx[contador]
				contador += 1
				//q += 1
			}
		}
		
		if (contador >= array_length(resultado_fx)) {
			break;
		}
		
	}
}


