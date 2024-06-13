
function print_text(_txt){
	instance_create_depth(15, 143, 9999, obj_bg_text);
	var coord_x = 31;
	var coord_y = 150;
	var char = "";
	for(var i  = 1; i <= string_length(_txt); i++)
	{
		show_debug_message("ng");
		char = string_char_at(_txt, i);
		switch (char){
			case "a":
				var _instance = instance_create_depth(coord_x, coord_y, -10000, obj_alphabet)
				_instance.image_index = 0;
				if(coord_x < 255)
				{
					coord_x+= 16;	
				}
				else
				{
					coord_y += 16;	
				}
				break;
			case "b":
				var _instance = instance_create_depth(coord_x, coord_y, -10000, obj_alphabet)
				_instance.image_index = 1;
				if(coord_x < 255)
				{
					coord_x+= 16;	
				}
				else
				{
					coord_y += 16;	
				}
				break;
			case "c":
				var _instance = instance_create_depth(coord_x, coord_y, -10000, obj_alphabet)
				_instance.image_index = 2;
				if(coord_x < 255)
				{
					coord_x+= 16;	
				}
				else
				{
					coord_y += 16;	
				}
				break;	
		}
	}
}