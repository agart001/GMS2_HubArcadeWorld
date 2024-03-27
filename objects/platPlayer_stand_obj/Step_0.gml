{
	if(keyboard_check(LEFT_MOVEMENT_KEY) || keyboard_check(RIGHT_MOVEMENT_KEY))
	{
		instance_change(platPlayer_walk_obj, true);
		exit;
	}
	else if(keyboard_check_pressed(JUMP_MOVEMENT_KEY))
	{
		instance_change(platPlayer_jump_obj, true);
		exit;
	}
	
	if(place_meeting(x, y-1, platLadder_obj) == true || place_meeting(x, y+1, platLadder_obj) == true)
	{
		if(keyboard_check_pressed(UP_MOVEMENT_KEY) || keyboard_check_pressed(DOWN_MOVEMENT_KEY))
		{
			instance_change(platPlayer_climb_obj, true);
			exit;
		}
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
	  
	if(place_meeting(x, y+1, platCollision_obj) == false)
	{
		if(place_meeting(x, y+1, platLadder_obj) == true)
		{ 
			exit;
		}
		instance_change(platPlayer_fall_obj, true);
		exit;
	}
	 
}