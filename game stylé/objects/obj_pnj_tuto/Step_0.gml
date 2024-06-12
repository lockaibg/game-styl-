
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