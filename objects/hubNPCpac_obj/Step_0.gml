 if (direction == 90 or direction == 270)
{ 
	y += vsp;
}
else
{
	x += hsp;
}
 
if (place_meeting(x + hsp, y, collision_obj))
{
	while (!place_meeting(x + sign(hsp), y, collision_obj))
	{
		x += sign(hsp);
	}
	hsp = 0;	
}


if (place_meeting(x, y + vsp, collision_obj))
{
	while (!place_meeting(x , y + sign(vsp), collision_obj))
	{
		y += sign(vsp);
	}
	vsp = 0;	
}

if (place_meeting(x,y-128, hubPlayer_obj))
{
	depth = -1;	
}
else if (place_meeting(x,y+128, hubPlayer_obj))
{
	depth = 1;
};

