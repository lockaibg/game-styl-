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
	
	if(clicked == true)
	{
		if(interaction == 1)
		{
			if (obj_player.killed == 3)
			{
				scenar = 1;
				print_text("felicitations ! tu as reussi a battre tout ces enemis");
			}
			else if (obj_player.killed == 0)
			{
				scenar = 2;
				print_text("hey ! qu'est ce que tu fais ? tu devais t'entrainer a attaquer les enemis");
			}
			else
			{
				scenar = 3;
				print_text("oh, on dirait que tu en a oublie retourne tous les tuer pour t'entrainer");	
			}
		}
		else if(interaction == 2)
		{

			destroy_text();
			switch (scenar)
			{
				case 1:
					print_text("et bien maintenant nous allons pouvoir continuer voici un point de sauvegarde qui te permettra de sauvegarder ta progression dans le jeu");
					break;
				case 2:	
					print_text("je t'attendrai ici pendant que tu termine avec ca");
					break;
				case 3:	
					print_text("...");
					break;
			}
		}
		else if(interaction == 3)
		{
			destroy_text();
			/*obj_player.current_pnj_exist = false;
			instance_destroy();
			if(instance_exists(obj_guez_e))
			{
				instance_destroy(obj_guez_e);
			}*/
		}
		else
		{
			
		}
		clicked = false;
		interaction++;
		released = false;
	}
}