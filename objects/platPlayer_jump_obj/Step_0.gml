{

	var VT = JUMP_SPEED - (JUMP_GRAVITY * TIME);
	++TIME;

	if(keyboard_check(LEFT_MOVEMENT_KEY))
	{
		image_xscale = -1;
		move_contact_solid(180, WALKING_SPEED);
	}
	else if(keyboard_check(RIGHT_MOVEMENT_KEY))
	{
		image_xscale = 1;
		move_contact_solid(0, WALKING_SPEED);
	}

	if(VT > 0)
	{
		move_contact_solid(90, VT);
	}
	else
	{
		instance_change(platPlayer_fall_obj, true);
		exit;
	}
	
	if(place_meeting(x, y, platDeath_Obj) == true)
	{
		room_restart();
		exit;
	}
	
	if(place_meeting(x, y, platExit_Obj) == true)
	{
		show_message("Congratulations!");
		room_goto(hub_rm);
		game_data_obj.platCompleted = true;
		exit;
	}
	 
	if(place_meeting(x, y-1, platCollision_obj) == true)
	{
		instance_change(platPlayer_fall_obj, true);
		exit;
	}
	
	if(keyboard_check_pressed(JUMP_MOVEMENT_KEY))
	{
		if(DOUBLE_JUMPS_ALLOWED > 0)
		{
			if(VT < DOUBLE_JUMP_VERTICAL_SPEED_TOLERANCE)
			{
				TIME = 0;
				--DOUBLE_JUMPS_ALLOWED;
			}
		}
	}
	
}