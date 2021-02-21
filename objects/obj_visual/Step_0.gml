/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (audio_is_paused(global.music)) {
	ultima_nota = -1
}

nota_actual = round(audio_sound_get_track_position(global.music) * 6)

if (obj_control_barra_notas.array_notas_isq[nota_actual] != "") and (ultima_nota != nota_actual) {
	mantener_isq = true
}
if (obj_control_barra_notas.array_notas_der[nota_actual] != "") and (ultima_nota != nota_actual) {
	mantener_der = true
}

ultima_nota = nota_actual

if (mantener_isq) or ((color_isq > 0) and (!baj_isq)) {
	if (color_isq < 1) {
		color_isq += 0.25
		baj_isq = false
	} else {
		baj_isq = true
	}
	mantener_isq = false
} else if (baj_isq) {
	if (color_isq > 0) {
		color_isq -= 0.25
		if (color_isq = 0) {
			baj_isq = false
		}
	}
}

if (mantener_der) or ((color_der > 0) and (!baj_der)) {
	if (color_der < 1) {
		color_der += 0.25
		baj_der = false
	} else {
		baj_der = true
	}
	mantener_der = false
} else if (baj_der) {
	if (color_der > 0) {
		color_der -= 0.25
		if (color_der = 0) {
			baj_der = false
		}
	}
}


