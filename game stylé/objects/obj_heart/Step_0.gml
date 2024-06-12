
cam_height = camera_get_view_y(view_camera[0]);
cam_width = camera_get_view_x(view_camera[0]);
x = cam_width + x_cord;
y = cam_height + y_cord;

if(myself == 0 && sprite_index == spr_heart_dmgd)
{
	room_goto(rm_main);	
}