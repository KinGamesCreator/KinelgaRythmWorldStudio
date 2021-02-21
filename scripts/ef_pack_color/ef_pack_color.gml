// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ef_pack_color(pack,reemplace){
	
	switch(pack) //seleccionar colores segun pack
	{
		case 0:
		#region paleta azules
			var color_player = make_color_rgb(0,150,199) //color del jugador
			var color_mark = make_color_rgb(202,240,248) //color de los bordes
			var color_background = make_color_rgb(3,4,94) //color del fondo
			var color_cube = make_color_rgb(72,202,228) //color del cubo del jugador
			var color_ene = make_color_rgb(0,119,182) //color del enemigo
		#endregion
		break;
		case 1:
		#region paleta rojos
			var color_player = make_color_rgb(157,2,8) //color del jugador
			var color_mark = make_color_rgb(232,93,4) //color de los bordes
			var color_background = make_color_rgb(55,6,23) //color del fondo
			var color_cube = make_color_rgb(244,140,6) //color del cubo del jugador
			var color_ene = make_color_rgb(220,47,2) //color del enemigo
		#endregion
		break;
		case 2:
		#region paleta amarillos
			var color_player = make_color_rgb(219,180,44) //color del jugador
			var color_mark = make_color_rgb(255,255,105) //color de los bordes
			var color_background = make_color_rgb(118,82,14) //color del fondo
			var color_cube = make_color_rgb(237,197,49) //color del cubo del jugador
			var color_ene = make_color_rgb(201,162,39) //color del enemigo
		#endregion
		break;
		case 3:
		#region paleta verdes
			var color_player = make_color_rgb(78,149,37) //color del jugador
			var color_mark =  make_color_rgb(78,149,37) //color de los bordes
			var color_background = make_color_rgb(46,90,28) //color del fondo
			var color_cube = make_color_rgb(237,240,199) //color del cubo del jugador
			var color_ene = make_color_rgb(244,100,10) //color del enemigo
		#endregion
		break;
		case 4:
		#region paleta violeta y blancos
			var color_player = make_color_rgb(227,246,245) //color del jugador
			var color_mark =  c_white //color de los bordes
			var color_background = make_color_rgb(39,35,67) //color del fondo
			var color_cube = make_color_rgb(255,255,255) //color del cubo del jugador
			var color_ene = make_color_rgb(186,232,232) //color del enemigo
		#endregion
		break;
	
		case 5:
		#region Verdosos
			var color_player = make_color_rgb(111,185,143) //color del jugador
			var color_mark =  make_color_rgb(111,185,143) //color de los bordes
			var color_background = make_color_rgb(0,68,69) //color del fondo
			var color_cube = make_color_rgb(255,216,0) //color del cubo del jugador
			var color_ene = make_color_rgb(44,120,115) //color del enemigo
		#endregion
		break;
	
		case 6:
		#region marron
			var color_player = make_color_rgb(147,125,20)  //color del jugador
			var color_mark =  make_color_rgb(234,231,217)//color de los bordes
			var color_background = make_color_rgb(68,39,39) //color del fondo
			var color_cube = make_color_rgb(210,198,178) //color del cubo del jugador
			var color_ene = make_color_rgb(147,125,20) //color del enemigo
		#endregion
		break;
	
		case 7:
		#region Mezcla
			var color_player = make_color_rgb(243,113,33)  //color del jugador
			var color_mark =  make_color_rgb(199,0,57)//color de los bordes
			var color_background = make_color_rgb(17,29,94) //color del fondo
			var color_cube = make_color_rgb(255,189,105) //color del cubo del jugador
			var color_ene = make_color_rgb(255,189,105) //color del enemigo
		#endregion
		break;
	
		case 8:
		#region Marron y naranja
			var color_player = make_color_rgb(250,125,9)  //color del jugador
			var color_mark = make_color_rgb(74,63,53) //color de los bordes
			var color_background = make_color_rgb(47,37,25) //color del fondo
			var color_cube = make_color_rgb(255,67,1) //color del cubo del jugador
			var color_ene = make_color_rgb(255,67,1) //color del enemigo
		#endregion
		break;
	
		case 9:
		#region Claros
			var color_player = make_color_rgb(166,220,239)  //color del jugador
			var color_mark = make_color_rgb(221,243,245) //color de los bordes
			var color_background = make_color_rgb(133,58,79) //color del fondo
			var color_cube = make_color_rgb(221,243,245) //color del cubo del jugador
			var color_ene = make_color_rgb(242,170,170) //color del enemigo
		#endregion
		break;
	
	}
	
	if (reemplace = 0) {
		global.background_color1 = color_background
		
		global.player_color1 = color_player
		
		global.mark_color1 = color_mark
		
		global.cube_color1 = color_cube
		
		global.ene_color1 = color_ene
	} else {
		global.background_color2 = color_background
		
		global.player_color2 = color_player
		
		global.mark_color2 = color_mark
		
		global.cube_color2 = color_cube
		
		global.ene_color2 = color_ene
	}
}