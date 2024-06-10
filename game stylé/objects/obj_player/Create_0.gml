//varriables de vitesse
vitesse_ini = 4;
vitesse = vitesse_ini;
vitesse_boost = 7;
rand = 100;
rand_pos = 0;
function get_x(x){
	var retourner;
	if(90 >= x)
	{
		retourner = 1 - x/90;
	}
	else if( x <= 180)
	{
		retourner = -1+((x-180)/-90);	
	}
	else if( x <= 270)
	{
		retourner = -1 + (x-180)/90;
	}
	else 
	{
		retourner = 1 - (x-360)/-90;	
	}
	
	return retourner;
}

function get_y(x){
	var retourner;
	if(90 >= x)
	{
		retourner = -x/90;
	}
	else if( x <= 180)
	{
		retourner = -((x-180)/-90);	
	}
	else if( x <= 270)
	{
		retourner =(x-180)/90;
	}
	else 
	{
		retourner =-((x-360)/90);	
	}
	
	return retourner;
}