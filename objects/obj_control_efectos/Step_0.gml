/// @description Insert description here
// You can write your code in this editor
#region avanzar y activar

if (avance < (array_length(efectos) - 1))
{
	if (obj_control_juego.time >= real(efectos[avance]))
	{
		avance += 1
	}
}

#endregion

if (avance <= (array_length(efectos)-1))
{
	
	#region efectos
	repeat(3) {
		if (avance <= (array_length(efectos)-1)) {
			switch (string_char_at(efectos[avance],1)) {
				case "C": //velocidad color
					global.color_speed = real(string_copy(efectos[avance],2,5))
					avance += 1
				break;
				case "F": //Flash
					avance += 1
					instance_create_depth(0,0,-100,obj_efecto_flash)
					flash_act = true
					flash_actual = 0
					while(flash_act = true) {
						flash_act = flashes[flash_actual].activate
						if (flash_act) {
							flash_actual += 1
						}
						}
					flashes[flash_actual].activate = true
					flashes[flash_actual].dire = 0.025
					flashes[flash_actual].visible = 1
					
				break;
				case "L": //latido
					instance_create_depth(0,0,0,obj_efecto_latido)
					avance += 1
				break;
				case "P": //cambios de color
					ef_pack_color(real(string_char_at(efectos[avance],2)),0)
					ef_pack_color(real(string_char_at(efectos[avance],3)),1)
					avance += 1
				break;
			}
		}
	}
	
	#endregion
	
}
