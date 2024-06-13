var _camx = camera_get_view_x(view_camera[0])+32;
var _camy = camera_get_view_y(view_camera[0])+ camera_get_view_height(view_camera[0])-112;
draw_sprite(letter, 0, _camx+cord_x, _camy+cord_y);