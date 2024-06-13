//détection de la proximité
if(instance_find(obj_player, 0).x)
{
	if( sqrt(power(x - instance_find(obj_player, 0).x,2) + power(y - instance_find(obj_player, 0).y,2)) < 30) {
		proximite = true;
		if(!instance_exists(obj_guez_E))
		{
			instance_create_layer(x, y, "Instances", obj_guez_E)
		}
	}
	else
	{
		if(instance_exists(obj_guez_E))
		{
			instance_destroy(obj_guez_E)
		}
		proximite = false;
	}
}

//code de l'intéraction
if(clicked == true)
{
	show_debug_message("ngwhat");
	print_text("bienvenu voyageur, je suis odia et je suis la pour t'aider a trouver ton chemin dans ce monde (caca)");
	clicked = false;	
}