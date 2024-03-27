
function scatterGhostAI()
{
	
	choices = [];
	possibilities = 0;
	
	// UP
	if (direction != 270)
	{
		if (place_meeting(x, y-2, pacCollision_obj) == false)
		{
			choices[possibilities] = 90;
			++possibilities;
		}
	}
	// DOWN
	if (direction != 90)
	{
		if (place_meeting(x, y+2, pacCollision_obj) == false)
		{
			choices[possibilities] = 270;
			++possibilities;
		}
	}
	
	// LEFT
	if (direction != 0)
	{
		if (place_meeting(x-2, y, pacCollision_obj) == false)
		{
			choices[possibilities] = 180;
			++possibilities;
		}
	}
	
	// RIGHT
	if (direction != 180)
	{
		if (place_meeting(x+2, y, pacCollision_obj) == false)
		{
			choices[possibilities] = 0;
			++possibilities;
		}
	}
	
	direction = choices[irandom(possibilities - 1)];
	sprite_index = scatterSprites[direction / 90];
 
}