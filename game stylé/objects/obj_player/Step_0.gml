
//movement
if (keyboard_check(ord("Z"))){
	if (place_meeting(x, y-vitesse, obj_wall) != true)
	{
		sprite_index = sprite[UP];
		y = y - vitesse;
		last = UP;
	}
	
}
if (keyboard_check(ord("S"))){
	if (place_meeting(x, y+vitesse, obj_wall) != true)
	{
		sprite_index = sprite[DOWN];
		y = y + vitesse;
		last = DOWN;
	}
	
}
if (keyboard_check(ord("D"))){
	if (place_meeting(x+vitesse, y, obj_wall) != true)
	{
		sprite_index = sprite[RIGHT];
		x = x + vitesse;
		last = RIGHT;
	}
}
if (keyboard_check(ord("Q"))){
	if (place_meeting(x-vitesse, y, obj_wall) != true)
	{
		sprite_index = sprite[LEFT];
		x = x - vitesse;
		last = LEFT;
	}
	
}

if(!keyboard_check(ord("Q")) && !keyboard_check(ord("D")) && !keyboard_check(ord("Z")) && !keyboard_check(ord("S"))){
	switch(last)
	{
		case UP:
			sprite_index = sprite[UP_IDLE];
			break;
		case DOWN:
			sprite_index = sprite[DOWN_IDLE];
			break;
		case LEFT:
			sprite_index = sprite[LEFT_IDLE];
			break;
		case RIGHT:
			sprite_index = sprite[RIGHT_IDLE];
			break;
	}
}


