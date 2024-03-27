
function pacMovement()
{
	if (keyboard_check(key_up) == true)
	{
		if(place_meeting(x, y-2, pacCollision_obj) == false)
		{
			direction = 90;
			image_angle = direction;
			image_speed = 1;
		}
		
	}
	if (keyboard_check(key_down) == true)
	{
		if(place_meeting(x, y+2, pacCollision_obj) == false)
		{
			direction = 270;
			image_angle = direction;
			image_speed = 1;
		}
	}
	if (keyboard_check(key_left) == true)
	{
		if(place_meeting(x-2, y, pacCollision_obj) == false)
		{
			direction = 180; 
			image_angle = direction;
			image_speed = 1;
			image_yscale = -1;
		}
	}
	if (keyboard_check(key_right) == true)
	{
		if(place_meeting(x+2, y, pacCollision_obj) == false)
		{
			sprite_index = pacPlayer_move_spr;
			direction = 0;
			image_angle = direction;
			image_speed = 1;
			image_yscale = 1;
		}
	}
}