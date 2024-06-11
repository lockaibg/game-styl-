//codage des déplacements
image_angle = point_direction(x,y,mouse_x,mouse_y);

x = x + get_x(image_angle)*vitesse;
y = y + get_y(image_angle)*vitesse;

//changement de vitesse via shift
if(obj_energy_barre._sprite_array[5] != obj_energy_barre.sprite_index){
	if keyboard_check(vk_shift)
	{
	
			vitesse = vitesse_boost;
	}
	else
	{
		vitesse = vitesse_ini;	
	}
}
else
{
	vitesse = vitesse_ini;	
}

//tirer des munitions
if mouse_check_button_pressed(mb_left)
{
	instance_create_layer(x,y,"Instances",obj_bullet);
}

//apparition des énemies
if(rand == 60)
{
	if(irandom(2) = 0){
		enemy = obj_enemy2;
	}
	else
	{	
		enemy = obj_enemy1;
	}
	rand_x = irandom(1000);
	rand_y = irandom(1000);
	while (rand_x+rand_y < 1000){
		rand_x = irandom(1000);
		rand_y = irandom(1000);
	}
	rand_pos = irandom(4);
	switch(rand_pos)
	{
		case 1:
			instance_create_layer(x+rand_x,y+rand_y,"Instances",enemy);
			break;
		case 2:
			instance_create_layer(x+rand_x,y-rand_y,"Instances",enemy);
			break;
		case 3:
			instance_create_layer(x-rand_x,y-rand_y,"Instances",enemy);
			break;
		case 4:
			instance_create_layer(x-rand_x,y+rand_y,"Instances",enemy);
			break;
	}
}
rand = irandom(60);

//victoire
if (kill == 10) {
	room_goto(rm_victoire);
}