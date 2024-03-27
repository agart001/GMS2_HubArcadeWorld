  	direction = choose(0, 90, 180, 270);
	alarm[0] = waitTime;
	image_speed = wlkSP / 16 ;
	
	if(direction == 0)
	{
		sprite_index = hubNPC_RIGHT_spr;
		moveY = 1;
		vsp = moveY * wlkSP; 
	}
	else if(direction == 90)
	{
		sprite_index = hubNPC_DOWN_spr;
		moveX = 1;
		hsp = moveX * wlkSP;
	}
	else if(direction == 180)
	{
		sprite_index = hubNPC_LEFT_spr;		
		moveY = -1;
		vsp = moveY * wlkSP; 
	}
	else
	{
		sprite_index = hubNPC_UP_spr;		
		moveX = -1;
		hsp = moveX * wlkSP;
			
	}
	
