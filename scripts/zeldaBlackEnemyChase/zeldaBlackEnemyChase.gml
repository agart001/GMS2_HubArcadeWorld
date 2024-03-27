// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function zeldaBlackEnemyChase()
{
	towardsPlayer = -1;
	DTP = 99999;
	
	// UP
	if (direction != 270)
	{
		if (place_meeting(x, y - 2, collision_obj) == false)
		{
			var trueDTP = point_distance(x , y - 16, zeldaPlayer_baseclass_obj.x, zeldaPlayer_baseclass_obj.y)
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
		if (place_meeting(x, y + 2, collision_obj) == false)
		{
			var trueDTP = point_distance(x , y + 16, zeldaPlayer_baseclass_obj.x, zeldaPlayer_baseclass_obj.y)
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
		if (place_meeting(x - 2, y, collision_obj) == false)
		{
			var trueDTP = point_distance(x - 16, y, zeldaPlayer_baseclass_obj.x, zeldaPlayer_baseclass_obj.y)
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
		if (place_meeting(x + 2, y, collision_obj) == false)
		{
			var trueDTP = point_distance(x + 16, y, zeldaPlayer_baseclass_obj.x, zeldaPlayer_baseclass_obj.y)
			if (trueDTP < DTP)
			{
				towardsPlayer = 0 ;
				DTP = trueDTP;
			}
		}
	}
	
	if (towardsPlayer != -1)
	{
		if(distTraveled > 128)
		{
			direction = towardsPlayer;
			distTraveled = 0;
		}
		else
		{
			distTraveled += 1;
		};
		sprite_index = sprites[direction / 90];
	}
}