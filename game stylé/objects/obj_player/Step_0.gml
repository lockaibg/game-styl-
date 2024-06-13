
//movement
if(hitting == 0)
{
	if (keyboard_check(ord("Z"))){
		if (place_meeting(x, y-vitesse, obj_wall) != true && place_meeting(x, y-vitesse, obj_pnj_tuto) != true)
		{
			sprite_index = sprite[UP];
			y = y - vitesse;
			last = UP;
		}
	
	}
	if (keyboard_check(ord("S"))){
		if (place_meeting(x, y+vitesse, obj_wall) != true && place_meeting(x, y+vitesse, obj_pnj_tuto) != true)
		{
			sprite_index = sprite[DOWN];
			y = y + vitesse;
			last = DOWN;
		}
	
	}
	if (keyboard_check(ord("D"))){
		if (place_meeting(x+vitesse, y, obj_wall) != true && place_meeting(x+vitesse, y, obj_pnj_tuto) != true)
		{
			sprite_index = sprite[RIGHT];
			x = x + vitesse;
			last = RIGHT;
		}
	}
	if (keyboard_check(ord("Q"))){
		if (place_meeting(x-vitesse, y, obj_wall) != true && place_meeting(x-vitesse, y, obj_pnj_tuto) != true)
		{
			sprite_index = sprite[LEFT];
			x = x - vitesse;
			last = LEFT;
		}
	
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
			var _array_heart = 0;
			for(var _j = instance_number(obj_heart);_j > 0; _j--)
			{
				if(instance_find(obj_heart, _j-1).myself == _i)
				{
					_array_heart = instance_find(obj_heart, _j-1);
				}
			}
			if (_array_heart.sprite_index == spr_heart)
			{
				_array_heart.sprite_index = spr_heart_dmgd;
				instance_destroy(_id_collision);
				break;
			}
		}

	}
}

//attaque
if(keyboard_check(vk_space))
{
	if(hitting == 0)
	{
		if(sprite_index == sprite[RIGHT] || sprite_index == sprite[RIGHT_IDLE] || sprite_index == sprite[UP] || sprite_index == sprite[UP_IDLE] || sprite_index == sprite[DOWN] || sprite_index == sprite[DOWN_IDLE])
		{
			instance_create_layer(x+16,y,"Instances", obj_hit);	
			hitting = 1;
		}
		else
		{
			instance_create_layer(x-16,y,"Instances", obj_hit_left);	
			hitting = 2;
		}
	}
}
else
{
	space_holded = false;	
}
if(hitting == 1)
{
	sprite_index = spr_player_hitting_right;
	if(count != 30)
	{
		image_index	= count div 10;
		count++;
	}
	else
	{
		hitting = 0;
		sprite_index = spr_player_idle_right;
		count = 0;
	}
}
if(hitting == 2)
{
	sprite_index = spr_player_hitting_left;
	if(count != 30)
	{
		image_index	= count div 10;
		count++;
	}
	else
	{
		hitting = 0;
		sprite_index = spr_player_idle_left;
		count = 0;
	}
}

//pnj

if(keyboard_check(ord("E")))
{
	for(var i = 0; i < array_length(pnj); i++)
	{
		if(instance_exists(pnj[i]))
		{
			if(pnj[i].proximite = true)
			{
				current_pnj_exist = true;
				last_pnj = pnj[i];
				pnj[i].clicked = true;
			}
		}
	}
}

if(keyboard_check_released(ord("E")))
{
	if(current_pnj_exist)
	{
		last_pnj.released = true;
	}
}