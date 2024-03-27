{

	// Anything that needs to be initialzied...
 	hp = 10;
	max_hp = 10;
	
	WALKING_SPEED  = 6;
	CLIMBING_SPEED = 2;
	FLOOR_FRICTION = 0.4;
	JUMP_SPEED = 12;
	JUMP_GRAVITY = 0.5;
	JUMP_TERMINAL_SPEED = 20;
		
	LEFT_MOVEMENT_KEY  = vk_left;
	RIGHT_MOVEMENT_KEY = vk_right;
	UP_MOVEMENT_KEY  = vk_up;
	DOWN_MOVEMENT_KEY = vk_down;
	JUMP_MOVEMENT_KEY  = vk_space;
	 
	NUMBER_OF_DOUBLE_JUMPS = 1;
	DOUBLE_JUMP_VERTICAL_SPEED_TOLERANCE = 5;
	
	// Leave alone please...
	depth = -1;
	SPEED = 0;
	instance_change(platPlayer_stand_obj, true);
	
}