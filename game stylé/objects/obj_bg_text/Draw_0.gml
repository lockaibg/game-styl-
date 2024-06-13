var _camx = camera_get_view_x(view_camera[0])+24;
var _camy = camera_get_view_y(view_camera[0])+ camera_get_view_height(view_camera[0])-112;
draw_sprite(spr_bg_text, 0, _camx, _camy);