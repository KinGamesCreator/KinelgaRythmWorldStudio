/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(1)
draw_set_color(global.color_bg)

draw_rectangle(0,0,room_width,room_height,0)

draw_set_color(c_black)

for (var i = 1;i < 5;i++) {
	draw_line(144 * i, 0, 144 * i, room_height)
}

for (var i = 1;i < 9;i++) {
	draw_line(0,i * 144, room_width, i * 144)
}