/// @description Insert description here
// You can write your code in this editor
activate = false
randomize()
image_index = irandom(sprite_get_number(sprite_index) - 1)

if (x < 640) { hspeed = 2 } else { hspeed = -2 }

depth = 25
image_alpha = 0.03
image_speed = 0
