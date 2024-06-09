//codage des déplacements
if keyboard_check(vk_left)
	x = x - vitesse;
if keyboard_check(vk_right)
{
	if(x !=mouse_x || y != mouse_y)
	{
		x = x + get_x(image_angle)*vitesse;
		y = y + get_y(image_angle)*vitesse;
	}
}
if keyboard_check(vk_up)
	y = y - vitesse;
if keyboard_check(vk_down)
	y = y + vitesse;
	
//changement de vitesse via shift
if keyboard_check(vk_shift)
{
	if vitesse == vitesse_ini
		vitesse = vitesse_boost;
	else
		vitesse = vitesse_ini;
}	


image_angle = point_direction(x,y,mouse_x,mouse_y);
show_debug_message(string(image_angle));