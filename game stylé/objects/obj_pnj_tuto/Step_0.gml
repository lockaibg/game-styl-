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
			print_text("bienvenu voyageur, je suis odia et je suis la pour t'aider a trouver ton chemin dans ce monde");
		}
		else if(interaction == 2)
		{
			destroy_text();
			print_text("je vois que tu as deja appris a bouger avec zqsd, je vais t'apprendre comment te battre !");
		}
		else if(interaction == 3)
		{
			destroy_text();
			print_text("tu pourrais commencer par tuer ces monstres utilise \'espace\' pour attaquer !");
		}
		else if(interaction == 4)
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

