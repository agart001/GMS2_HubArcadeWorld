
function orangeGhostAI()
{

	towardsPlayer = -1;
	DTP = 99999;

	var xDTP = pacPlayer_BC_obj.x;
	var yDTP = pacPlayer_BC_obj.y;

	if (point_distance(x, y, pacPlayer_BC_obj.x, pacPlayer_BC_obj.y) < 256)
	{
		xDTP = 287;
		yDTP = 128;
	}

	
	// UP 
	if (direction != 270)
	{
		if (place_meeting(x, y - 2, pacCollision_obj) == false)
		{
			var trueDTP = point_distance(x , y - 16, xDTP, yDTP)
			if (trueDTP < DTP)
			{
				towardsPlayer = 90;
				DTP = trueDTP;
			}
		}
	}

	// DOWN
	if (direction != 90)
	{
		if (place_meeting(x, y + 2, pacCollision_obj) == false)
		{
			var trueDTP = point_distance(x , y + 16, xDTP, yDTP)
			if (trueDTP < DTP)
			{
				towardsPlayer = 270;
				DTP = trueDTP;
			}
		}
	}
	
	// LEFT
	if (direction != 0)
	{
		if (place_meeting(x - 2, y, pacCollision_obj) == false)
		{
			var trueDTP = point_distance(x - 16, y, xDTP, yDTP)
			if (trueDTP < DTP)
			{
				towardsPlayer = 180;
				DTP = trueDTP;
			}
		}
	}
 	
	// RIGHT
	if (direction != 180)
	{
		if (place_meeting(x + 2, y, pacCollision_obj) == false)
		{
			var trueDTP = point_distance(x + 16, y, xDTP, yDTP)
			if (trueDTP < DTP)
			{
				towardsPlayer = 0 ;
				DTP = trueDTP;
			}
		}
	}

	if (towardsPlayer != -1)
	{
		direction = towardsPlayer;
		sprite_index = sprites[direction / 90];
	}
}