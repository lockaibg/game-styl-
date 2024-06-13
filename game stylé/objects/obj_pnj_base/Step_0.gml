//détection de la proximité
if(instance_find(obj_player, 0).x)
{
	if( sqrt(power(x - instance_find(obj_player, 0).x,2) + power(y - instance_find(obj_player, 0).y,2)) < 30) {
		proximite = true;
		if(!instance_exists(obj_guez_e))
		{
			instance_create_layer(x, y, "Instances", obj_guez_e)
		}
	}
	else
	{
		if(instance_exists(obj_guez_e))
		{
			instance_destroy(obj_guez_e)
		}
		proximite = false;
	}
}

//code de l'intéraction
if(released == true)
{
	show_debug_message(interaction);
	
	if(clicked == true)
	{
		show_debug_message(interaction);
		if(interaction == 1)
		{
			
		}
		else if(interaction == 2)
		{
			destroy_text();
		}
		else if(interaction == 3)
		{
			destroy_text();
			obj_player.current_pnj_exist = false;
			instance_destroy();
			if(instance_exists(obj_guez_e))
			{
				instance_destroy(obj_guez_e);
			}
		}
		clicked = false;
		interaction++;
		released = false;
	}
}