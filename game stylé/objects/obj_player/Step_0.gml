//codage des déplacements
if keyboard_check(vk_left)
	if(x !=mouse_x || y != mouse_y)
	{
		x = x - get_x(image_angle)*vitesse;
		y = y - get_y(image_angle)*vitesse;
	}
if keyboard_check(vk_right)
{
	if(x !=mouse_x || y != mouse_y)
	{
		x = x + get_x(image_angle)*vitesse;
		y = y + get_y(image_angle)*vitesse;
	}
}

	
//changement de vitesse via shift
if keyboard_check(vk_shift)
{
	if vitesse == vitesse_ini
		vitesse = vitesse_boost;
	else
		vitesse = vitesse_ini;
}	
image_angle = point_direction(x,y,mouse_x,mouse_y);
if mouse_check_button_pressed(mb_left)
{
	instance_create_layer(x,y,"Instances",obj_bullet);
}
if(rand == 100)
{
	rand = irandom(1000);
	rand_pos = irandom(4);
	switch(rand_pos)
	{
		case 1:
			instance_create_layer(x+rand,y+rand,"Instances",obj_enemy1);
			break;
		case 2:
			instance_create_layer(x+rand,y-rand,"Instances",obj_enemy1);
			break;
		case 3:
			instance_create_layer(x-rand,y-rand,"Instances",obj_enemy1);
			break;
		case 4:
			instance_create_layer(x-rand,y+rand,"Instances",obj_enemy1);
			break;
	}
}
rand = irandom(100);