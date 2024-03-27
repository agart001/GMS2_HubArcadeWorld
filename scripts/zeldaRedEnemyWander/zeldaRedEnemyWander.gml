
function zeldaRedEnemyWander()
{
	redSpeed = 2;
	choices = [];
	possibilities = 0;
	
	// UP
	if (direction != 270)
	{
		if (place_meeting(x, y-2, collision_obj) == false)
		{
			choices[possibilities] = 90;
			++possibilities;
		}
	}
	// DOWN
	if (direction != 90)
	{
		if (place_meeting(x, y+2, collision_obj) == false)
		{
			choices[possibilities] = 270;
			++possibilities;
		}
	}
	
	// LEFT
	if (direction != 0)
	{
		if (place_meeting(x-2, y, collision_obj) == false)
		{
			choices[possibilities] = 180;
			++possibilities;
		}
	}
	
	// RIGHT
	if (direction != 180)
	{
		if (place_meeting(x+2, y, collision_obj) == false)
		{
			choices[possibilities] = 0;
			++possibilities;
		}
	}
	
	if(distance_to_point(xstart,ystart) > 256)
	{
		direction = 45* round(point_direction(x,y,xstart,ystart)/45);
	}
	else
	{
		if(distTraveled > 64)
		{
			direction = choices[irandom(possibilities - 1)];
			distTraveled = 0;
		}
		else
		{
			distTraveled += 1;	
		}
	}
	sprite_index = sprites[direction / 90];
}