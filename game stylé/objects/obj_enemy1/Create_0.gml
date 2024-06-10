speed = 6;
rand = irandom(2);
if(rand == 1)
{
	xdir = irandom(room_width);
	ydir = random(room_height);
	direction = point_direction(x,y,xdir,ydir);
}
else
{
	direction = point_direction(x,y,obj_player.x,obj_player.y);
}