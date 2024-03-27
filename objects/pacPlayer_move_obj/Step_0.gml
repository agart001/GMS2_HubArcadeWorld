
var insDot = instance_place(x, y, dot_obj)
if( insDot != noone)
{
	score += 5;
	instance_destroy(insDot);
	return;
}

var insPokeball = instance_place(x, y, pokeball_obj)
if( insPokeball != noone)
{
	ghost_BC_obj.state = 2;
	++lives
	score += 10;
	alarm[0] = 60 * 10;
	instance_destroy(insPokeball);
	return;
}
  
pacMovement();

move_contact_solid(direction, pacSpeed);