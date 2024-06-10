//varriables de vitesse
vitesse_ini = 4;
vitesse = vitesse_ini;
vitesse_boost = 11;
rand = 100;
rand_pos = 0;
rand_y = 0;
rand_x = 0;
function get_x(x){
	var _retourner;
	if(90 >= x)
	{
		_retourner = 1 - x/90;
	}
	else if( x <= 180)
	{
		_retourner = -1+((x-180)/-90);	
	}
	else if( x <= 270)
	{
		_retourner = -1 + (x-180)/90;
	}
	else 
	{
		_retourner = 1 - (x-360)/-90;	
	}
	
	return _retourner;
}

function get_y(x){
	var _retourner;
	if(90 >= x)
	{
		_retourner = -x/90;
	}
	else if( x <= 180)
	{
		_retourner = -((x-180)/-90);	
	}
	else if( x <= 270)
	{
		_retourner =(x-180)/90;
	}
	else 
	{
		_retourner =-((x-360)/90);	
	}
	
	return _retourner;
}