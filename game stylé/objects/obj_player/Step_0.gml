
//movement
if (keyboard_check(ord("Z"))){
	if (place_meeting(x, y-vitesse, obj_wall) != true)
	{
		y = y - vitesse;
	}
	
}
if (keyboard_check(ord("S"))){
	if (place_meeting(x, y+vitesse, obj_wall) != true)
	{
		y = y + vitesse;
	}
	
}
if (keyboard_check(ord("D"))){
	if (place_meeting(x+vitesse, y, obj_wall) != true)
	{
		x = x + vitesse;
	}
}
if (keyboard_check(ord("Q"))){
	if (place_meeting(x-vitesse, y, obj_wall) != true)
	{
		x = x - vitesse;
	}
	
}



