{
	if(keyboard_check(LEFT_MOVEMENT_KEY))
	{
		image_xscale = -1;
		SPEED = WALKING_SPEED;
		direction = 180;
	}
	else if(keyboard_check(RIGHT_MOVEMENT_KEY))
	{
		image_xscale = 1;
		SPEED = WALKING_SPEED;
		direction = 0;
	}
	else
	{
		SPEED -= FLOOR_FRICTION;
		if(SPEED <= 0)
		{
			instance_change(platPlayer_stand_obj, true);
	 		exit;
		}
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
		instance_change(platPlayer_fall_obj, true);
		exit;
	}
	
	if(keyboard_check_pressed(JUMP_MOVEMENT_KEY))
	{
		instance_change(platPlayer_jump_obj, true);
		exit;
	}
	
	move_contact_solid(direction, SPEED);
	
}