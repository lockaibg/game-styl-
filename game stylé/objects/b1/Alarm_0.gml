var alea = irandom_range(1,4);
switch (alea)
{
	case 1 : instance_create_layer(0, random(200), "Instances", b1);
	 break
	case 2 : instance_create_layer(random(270), 0, "Instances", b1);
	break
	case 3 : instance_create_layer(265, random(190), "Instances", b1);
	break
	case 4 : instance_create_layer(random(265), 190, "Instances", b1);
	break
}