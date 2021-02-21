// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_create(posx,posy,duration){
var enemigo_selec = true
	var enemy = 0
	while(enemigo_selec = true) {
		enemigo_selec = enemigos[enemy].activate
		if (enemigo_selec = true) {
			enemy  += 1	
		}
		if (enemy >= array_length(enemigos)) {
			enemy = 0
		}
	}
	enemigos[enemy].x = posx
	enemigos[enemy].y = posy
	enemigos[enemy].activate = true
	enemigos[enemy].image_index = irandom(3)
	enemigos[enemy].cola = (duration - 1) * 10
	
}