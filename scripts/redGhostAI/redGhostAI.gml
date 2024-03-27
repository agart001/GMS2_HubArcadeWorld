
function redGhostAI()
{
	towardsPlayer = -1;
	DTP = 99999;
	
	// UP
	if (direction != 270)
	{
		if (place_meeting(x, y - 2, pacCollision_obj) == false)
		{
			var trueDTP = point_distance(x , y - 16, pacPlayer_BC_obj.x, pacPlayer_BC_obj.y)
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
			var trueDTP = point_distance(x , y + 16, pacPlayer_BC_obj.x, pacPlayer_BC_obj.y)
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
			var trueDTP = point_distance(x - 16, y, pacPlayer_BC_obj.x, pacPlayer_BC_obj.y)
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
			var trueDTP = point_distance(x + 16, y, pacPlayer_BC_obj.x, pacPlayer_BC_obj.y)
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