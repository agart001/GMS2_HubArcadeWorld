
function pinkGhostAI()
{

	var towardsPlayer = -1;
	var DTP = 99999;

	var xDir = [ +128, -128, -128, 0 ];
	var yDir = [ 0, -128, 0, +128];

	var xDTP = xDir[pacPlayer_BC_obj.direction/90];
	var yDTP = yDir[pacPlayer_BC_obj.direction/90];
	
	// UP
	if (direction != 270)
	{
		if (place_meeting(x, y - 2, pacCollision_obj) == false)
		{
			var trueDTP = point_distance(x , y - 16, pacPlayer_BC_obj.x+xDTP, pacPlayer_BC_obj.y+yDTP)
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
			var trueDTP = point_distance(x , y + 16, pacPlayer_BC_obj.x+xDTP, pacPlayer_BC_obj.y+yDTP)
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
			var trueDTP = point_distance(x - 16, y, pacPlayer_BC_obj.x+xDTP, pacPlayer_BC_obj.y+yDTP)
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
			var trueDTP = point_distance(x + 16, y, pacPlayer_BC_obj.x+xDTP, pacPlayer_BC_obj.y+yDTP)
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