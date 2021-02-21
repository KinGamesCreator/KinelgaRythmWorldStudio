/// @description Insert description here
// You can write your code in this editor
ef_pack_color(0,0)
ef_pack_color(1,1)

//cargar datos

global.color_step = 0
global.color_speed = 0.01
direccion = 1

//variables de colores definidos

global.color_bg = merge_color(global.background_color1,global.background_color2,global.color_step)

global.color_ene = merge_color(global.ene_color1,global.ene_color2,global.color_step)

global.color_cube = merge_color(global.cube_color1,global.cube_color2,global.color_step)

global.color_mark = merge_color(global.mark_color1,global.mark_color2,global.color_step)

global.color_player = merge_color(global.player_color1,global.player_color2,global.color_step)

