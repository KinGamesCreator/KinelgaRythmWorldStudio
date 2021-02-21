/// @description Insert description here
// You can write your code in this editor
camera_set_view_size (view_camera[0],720,1280)
x_cam = (360 - (camera_get_view_width(view_camera[0]) / 2))
y_cam = (640 - (camera_get_view_height(view_camera[0]) / 2))
camera_set_view_pos(view_camera[0],x_cam,y_cam)
instance_destroy()
//alarm[0]= room_speed/global.TimeChange;
