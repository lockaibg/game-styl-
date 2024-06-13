
function print_text(_txt){
	instance_create_layer(16, camera_get_view_height(view_camera[0])-48, "Instances", obj_bg_text);
	var coord_x = 0;
	var coord_y = 0;
	var char = "";
	for(var i  = 1; i <= string_length(_txt); i++)
	{
		char = string_char_at(_txt, i);
		switch (char){
			case "a":
				var _instance = instance_create_layer(coord_x, coord_y, "Instances", obj_alphabet)
				_instance.cord_x = coord_x;
				_instance.cord_y = coord_y;
				if(coord_x < 220)
				{
					coord_x+= 11;	
				}
				else
				{
					coord_x = 0;
					coord_y += 19;	
				}
				_instance.letter = spr_alphabet_a;
				break;
			case "b":
				var _instance = instance_create_layer(coord_x, coord_y, "Instances", obj_alphabet)
				_instance.cord_x = coord_x;
				_instance.cord_y = coord_y;
				if(coord_x < 220)
				{
					coord_x+= 11;	
				}
				else
				{
					coord_x = 0;
					coord_y += 19;	
				}
				_instance.letter = spr_alphabet_b;
				break;
			case "c":
				var _instance = instance_create_layer(coord_x, coord_y, "Instances", obj_alphabet)
				_instance.cord_x = coord_x;
				_instance.cord_y = coord_y;
				if(coord_x < 220)
				{
					coord_x+= 11;	
				}
				else
				{
					coord_x = 0;
					coord_y += 19;	
				}
				_instance.letter = spr_alphabet_c;
				break;	
			case "d":
				var _instance = instance_create_layer(coord_x, coord_y, "Instances", obj_alphabet)
				_instance.cord_x = coord_x;
				_instance.cord_y = coord_y;
				if(coord_x < 220)
				{
					coord_x+= 11;	
				}
				else
				{
					coord_x = 0;
					coord_y += 19;	
				}
				_instance.letter = spr_alphabet_d;
				break;	
			case "e":
				var _instance = instance_create_layer(coord_x, coord_y, "Instances", obj_alphabet)
				_instance.cord_x = coord_x;
				_instance.cord_y = coord_y;
				if(coord_x < 220)
				{
					coord_x+= 11;	
				}
				else
				{
					coord_x = 0;
					coord_y += 19;	
				}
				_instance.letter = spr_alphabet_e;
				break;	
			case "f":
				var _instance = instance_create_layer(coord_x, coord_y, "Instances", obj_alphabet)
				_instance.cord_x = coord_x;
				_instance.cord_y = coord_y;
				if(coord_x < 220)
				{
					coord_x+= 9;	
				}
				else
				{
					coord_x = 0;
					coord_y += 19;	
				}
				_instance.letter = spr_alphabet_f;
				break;	
			case "g":
				var _instance = instance_create_layer(coord_x, coord_y, "Instances", obj_alphabet)
				_instance.cord_x = coord_x;
				_instance.cord_y = coord_y+4;
				if(coord_x < 220)
				{
					coord_x+= 11;	
				}
				else
				{
					coord_x = 0;
					coord_y += 19;	
				}
				_instance.letter = spr_alphabet_g;
				break;	
			case "h":
				var _instance = instance_create_layer(coord_x, coord_y, "Instances", obj_alphabet)
				_instance.cord_x = coord_x;
				_instance.cord_y = coord_y;
				if(coord_x < 220)
				{
					coord_x+= 10;	
				}
				else
				{
					coord_x = 0;
					coord_y += 19;	
				}
				_instance.letter = spr_alphabet_h;
				break;	
			case "i":
				var _instance = instance_create_layer(coord_x, coord_y, "Instances", obj_alphabet)
				_instance.cord_x = coord_x;
				_instance.cord_y = coord_y;
				if(coord_x < 220)
				{
					coord_x+= 5;	
				}
				else
				{
					coord_x = 0;
					coord_y += 19;	
				}
				_instance.letter = spr_alphabet_i;
				break;	
			case "j":
				var _instance = instance_create_layer(coord_x, coord_y, "Instances", obj_alphabet)
				_instance.cord_x = coord_x;
				_instance.cord_y = coord_y+2;
				if(coord_x < 220)
				{
					coord_x+= 9;	
				}
				else
				{
					coord_x = 0;
					coord_y += 19;	
				}
				_instance.letter = spr_alphabet_j;
				break;	
			case "k":
				var _instance = instance_create_layer(coord_x, coord_y, "Instances", obj_alphabet)
				_instance.cord_x = coord_x;
				_instance.cord_y = coord_y;
				if(coord_x < 220)
				{
					coord_x+= 8;	
				}
				else
				{
					coord_x = 0;
					coord_y += 19;	
				}
				_instance.letter = spr_alphabet_k;
				break;	
			case "l":
				var _instance = instance_create_layer(coord_x, coord_y, "Instances", obj_alphabet)
				_instance.cord_x = coord_x;
				_instance.cord_y = coord_y;
				if(coord_x < 220)
				{
					coord_x+= 7;	
				}
				else
				{
					coord_x = 0;
					coord_y += 19;	
				}
				_instance.letter = spr_alphabet_l;
				break;	
			case "m":
				var _instance = instance_create_layer(coord_x, coord_y, "Instances", obj_alphabet)
				_instance.cord_x = coord_x;
				_instance.cord_y = coord_y;
				if(coord_x < 220)
				{
					coord_x+= 18;	
				}
				else
				{
					coord_x = 0;
					coord_y += 19;	
				}
				_instance.letter = spr_alphabet_m;
				break;	
			case "n":
				var _instance = instance_create_layer(coord_x, coord_y, "Instances", obj_alphabet)
				_instance.cord_x = coord_x;
				_instance.cord_y = coord_y;
				if(coord_x < 220)
				{
					coord_x+= 11;	
				}
				else
				{
					coord_x = 0;
					coord_y += 19;	
				}
				_instance.letter = spr_alphabet_n;
				break;	
			case "o":
				var _instance = instance_create_layer(coord_x, coord_y, "Instances", obj_alphabet)
				_instance.cord_x = coord_x;
				_instance.cord_y = coord_y;
				if(coord_x < 220)
				{
					coord_x+= 12;	
				}
				else
				{
					coord_x = 0;
					coord_y += 19;	
				}
				_instance.letter = spr_alphabet_o;
				break;	
			case "p":
				var _instance = instance_create_layer(coord_x, coord_y, "Instances", obj_alphabet)
				_instance.cord_x = coord_x;
				_instance.cord_y = coord_y+4;
				if(coord_x < 220)
				{
					coord_x+= 11;	
				}
				else
				{
					coord_x = 0;
					coord_y += 19;	
				}
				_instance.letter = spr_alphabet_p;
				break;	
			case "q":
				var _instance = instance_create_layer(coord_x, coord_y, "Instances", obj_alphabet)
				_instance.cord_x = coord_x;
				_instance.cord_y = coord_y+4;
				if(coord_x < 220)
				{
					coord_x+= 11;	
				}
				else
				{
					coord_x = 0;
					coord_y += 19;	
				}
				_instance.letter = spr_alphabet_q;
				break;	
			case "r":
				var _instance = instance_create_layer(coord_x, coord_y, "Instances", obj_alphabet)
				_instance.cord_x = coord_x;
				_instance.cord_y = coord_y;
				if(coord_x < 220)
				{
					coord_x+= 10;	
				}
				else
				{
					coord_x = 0;
					coord_y += 19;	
				}
				_instance.letter = spr_alphabet_r;
				break;	
			case "s":
				var _instance = instance_create_layer(coord_x, coord_y, "Instances", obj_alphabet)
				_instance.cord_x = coord_x;
				_instance.cord_y = coord_y;
				if(coord_x < 220)
				{
					coord_x+= 10;	
				}
				else
				{
					coord_x = 0;
					coord_y += 19;	
				}
				_instance.letter = spr_alphabet_s;
				break;	
			case "t":
				var _instance = instance_create_layer(coord_x, coord_y, "Instances", obj_alphabet)
				_instance.cord_x = coord_x;
				_instance.cord_y = coord_y;
				if(coord_x < 220)
				{
					coord_x+= 7;	
				}
				else
				{
					coord_x = 0;
					coord_y += 19;	
				}

				_instance.letter = spr_alphabet_t;
				break;	
			case "u":
				var _instance = instance_create_layer(coord_x, coord_y, "Instances", obj_alphabet)
				_instance.cord_x = coord_x;
				_instance.cord_y = coord_y;
				if(coord_x < 220)
				{
					coord_x+= 10;	
				}
				else
				{
					coord_x = 0;
					coord_y += 19;	
				}
				_instance.letter = spr_alphabet_u;
				break;	
			case "v":
				var _instance = instance_create_layer(coord_x, coord_y, "Instances", obj_alphabet)
				_instance.cord_x = coord_x;
				_instance.cord_y = coord_y;
				if(coord_x < 220)
				{
					coord_x+= 9;	
				}
				else
				{
					coord_x = 0;
					coord_y += 19;	
				}
				_instance.letter = spr_alphabet_v;
				break;	
			case "w":
				var _instance = instance_create_layer(coord_x, coord_y, "Instances", obj_alphabet)
				_instance.cord_x = coord_x;
				_instance.cord_y = coord_y;
				if(coord_x < 220)
				{
					coord_x+= 15;	
				}
				else
				{
					coord_x = 0;
					coord_y += 19;	
				}
				_instance.letter = spr_alphabet_w;
				break;	
			case "x":
				var _instance = instance_create_layer(coord_x, coord_y, "Instances", obj_alphabet)
				_instance.cord_x = coord_x;
				_instance.cord_y = coord_y;
				if(coord_x < 220)
				{
					coord_x+= 11;	
				}
				else
				{
					coord_x = 0;
					coord_y += 19;	
				}
				_instance.letter = spr_alphabet_x;
				break;	
			case "y":
				var _instance = instance_create_layer(coord_x, coord_y, "Instances", obj_alphabet)
				_instance.cord_x = coord_x;
				_instance.cord_y = coord_y+2;
				if(coord_x < 220)
				{
					coord_x+= 8;	
				}
				else
				{
					coord_x = 0;
					coord_y += 19;	
				}
				_instance.letter = spr_alphabet_y;
				break;	
			case "z":
				var _instance = instance_create_layer(coord_x, coord_y, "Instances", obj_alphabet)
				_instance.cord_x = coord_x;
				_instance.cord_y = coord_y;
				if(coord_x < 220)
				{
					coord_x+= 11;	
				}
				else
				{
					coord_x = 0;
					coord_y += 19;	
				}
				_instance.letter = spr_alphabet_z;
				break;	
			case "?":
				var _instance = instance_create_layer(coord_x, coord_y, "Instances", obj_alphabet)
				_instance.cord_x = coord_x;
				_instance.cord_y = coord_y;
				if(coord_x < 220)
				{
					coord_x+= 10;	
				}
				else
				{
					coord_x = 0;
					coord_y += 19;	
				}
				_instance.letter = spr_alphabet_int;
				break;	
			case "!":
				var _instance = instance_create_layer(coord_x, coord_y, "Instances", obj_alphabet)
				_instance.cord_x = coord_x;
				_instance.cord_y = coord_y;
				if(coord_x < 220)
				{
					coord_x+=4;	
				}
				else
				{
					coord_x = 0;
					coord_y += 19;	
				}
				_instance.letter = spr_alphabet_esc;
				break;	
			case ".":
				var _instance = instance_create_layer(coord_x, coord_y, "Instances", obj_alphabet)
				_instance.cord_x = coord_x;
				_instance.cord_y = coord_y;
				if(coord_x < 220)
				{
					coord_x+= 4;	
				}
				else
				{
					coord_x = 0;
					coord_y += 19;	
				}
				_instance.letter = spr_alphabet_dot;
				break;	
			case ":":
				var _instance = instance_create_layer(coord_x, coord_y, "Instances", obj_alphabet)
				_instance.cord_x = coord_x;
				_instance.cord_y = coord_y;
				if(coord_x < 220)
				{
					coord_x+= 4;	
				}
				else
				{
					coord_x = 0;
					coord_y += 19;	
				}
				_instance.letter = spr_alphabet_ddot;
				break;	
			case ",":
				var _instance = instance_create_layer(coord_x, coord_y, "Instances", obj_alphabet)
				_instance.cord_x = coord_x;
				_instance.cord_y = coord_y;
				if(coord_x < 220)
				{
					coord_x+= 5;	
				}
				else
				{
					coord_x = 0;
					coord_y += 19;	
				}
				_instance.letter = spr_alphabet_virg;
				break;	
			case "(":
				var _instance = instance_create_layer(coord_x, coord_y, "Instances", obj_alphabet)
				_instance.cord_x = coord_x;
				_instance.cord_y = coord_y;
				if(coord_x < 220)
				{
					coord_x+= 7;	
				}
				else
				{
					coord_x = 0;
					coord_y += 19;	
				}
				_instance.letter = spr_alphabet_po;
				break;	
			case ")":
				var _instance = instance_create_layer(coord_x, coord_y, "Instances", obj_alphabet)
				_instance.cord_x = coord_x;
				_instance.cord_y = coord_y;
				if(coord_x < 220)
				{
					coord_x+= 7;	
				}
				else
				{
					coord_x = 0;
					coord_y += 19;	
				}
				_instance.letter = spr_alphabet_pf;
				break;	
			case "\"":
				var _instance = instance_create_layer(coord_x, coord_y, "Instances", obj_alphabet)
				_instance.cord_x = coord_x;
				_instance.cord_y = coord_y;
				if(coord_x < 220)
				{
					coord_x+= 8;	
				}
				else
				{
					coord_x = 0;
					coord_y += 19;	
				}
				_instance.letter = spr_alphabet_dquote;
				break;	
			case "'":
				var _instance = instance_create_layer(coord_x, coord_y, "Instances", obj_alphabet)
				_instance.cord_x = coord_x;
				_instance.cord_y = coord_y;
				if(coord_x < 220)
				{
					coord_x+= 5;	
				}
				else
				{
					coord_x = 0;
					coord_y += 19;	
				}
				_instance.letter = spr_alphabet_quote;
				break;	
			case "-":
				var _instance = instance_create_layer(coord_x, coord_y, "Instances", obj_alphabet)
				_instance.cord_x = coord_x;
				_instance.cord_y = coord_y;
				if(coord_x < 220)
				{
					coord_x+= 7;	
				}
				else
				{
					coord_y += 19;	
					coord_x = 0;
				}
				_instance.letter = spr_alphabet_tir;
				break;	
			case " ":
				if(coord_x < 220)
				{
					coord_x+= 16;	
				}
				else
				{
					coord_y += 19;	
					coord_x = 0;
				}
		}
	}
}

function destroy_text(){
	instance_destroy(obj_bg_text)
	for(var i = instance_number(obj_alphabet); i >= 0; i--)
	{
		instance_destroy(instance_find(obj_alphabet, i));
	}
}