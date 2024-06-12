
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
	
//idle
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

//combat

//dégats
var _id_collision = instance_place(x,y,all)
if( _id_collision)
{
	if(asset_has_tags(_id_collision.object_index,"dmg"))
	{
		for(var _i = instance_number(obj_heart);_i > 0; _i--)
		{
			show_debug_message(_i);
			if instance_find(obj_heart, _i-1).sprite_index == spr_heart
			{
				instance_find(obj_heart, _i-1).sprite_index = spr_heart_dmgd;
				instance_destroy(_id_collision);
				break;
			}
		}

	}
}

//gameover
