/// @description Insert description here
// You can write your code in this editor
if (activate = true) {
	speed = 12 * (global.time_delta)
if (cont > 0) {
	cont -= 1 * (global.time_delta)
} else {
	image_alpha -= 0.15 * (global.time_delta)
	if (image_alpha  <= 0) {
		activate = false
		visible = 0
	}
}

image_blend = global.color_ene
}