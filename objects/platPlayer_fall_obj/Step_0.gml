{

	var VT = min(JUMP_GRAVITY * TIME, JUMP_TERMINAL_SPEED);
	++TIME;

	if(keyboard_check(LEFT_MOVEMENT_KEY))
	{
		move_contact_solid(180, WALKING_SPEED);
	}
	else if(keyboard_check(RIGHT_MOVEMENT_KEY))
	{
		move_contact_solid(0, WALKING_SPEED);
	}

	move_contact_solid(270, VT);
	
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
	 
	if(place_meeting(x, y+1, platCollision_obj) == true)
	{
		instance_change(platPlayer_stand_obj, true);
		exit;
	}
	
	if(place_meeting(x, y+1, platLadder_obj) == true)
	{
		instance_change(platPlayer_stand_obj, true);
		exit;
	}
	
}