{
	if(place_meeting(x, y+1, platLadder_obj) == false)
	{
		instance_change(platPlayer_stand_obj, true);
		exit;
	}
		
	if(keyboard_check(UP_MOVEMENT_KEY))
	{
		SPEED = CLIMBING_SPEED;
		direction = 90;
	}
	else if(keyboard_check(DOWN_MOVEMENT_KEY))
	{
		SPEED = CLIMBING_SPEED;
		direction = 270;
		if(place_meeting(x, y+1, platCollision_obj) == true)
		{
			instance_change(platPlayer_stand_obj, true);
			exit;
		}
	}
	
	if(keyboard_check_pressed(JUMP_MOVEMENT_KEY))
	{
		instance_change(platPlayer_jump_obj, true);
		exit;
	}
	
	move_contact_solid(direction, SPEED);
	
}