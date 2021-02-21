/// @description Insert description here
// You can write your code in this editor
if (activate = true) {
	image_alpha += dire * (global.time_delta)
	if image_alpha >= (0.25)
	{
		dire = -dire
		image_alpha = 0.25
	}
	if (image_alpha <= 0) and (dire < 0)
	{
		activate = false
		visible = 0
	}
}