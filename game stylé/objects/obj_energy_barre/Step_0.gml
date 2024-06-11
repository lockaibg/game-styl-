if keyboard_check(vk_shift){
	count_released = 0;
	if(sprite_index != _sprite_array[5])
	{
		count_pressed++;
		if(count_pressed == 75){
			sprite_index = _sprite_array[i];
			i++;
			count_pressed = 0;
		}
	}
}
else
{
	count_pressed = 0;
	if(sprite_index != _sprite_array[0]){
		count_released++;
		if(count_released == 125)
		{
			count_released = 0;
			i--;
			sprite_index = _sprite_array[i];	
		}
	}
}

if sprite_index == spr_energy6{
    energy = false;
	
}
else
{
	energy = true;	
}