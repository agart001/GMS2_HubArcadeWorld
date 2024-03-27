
function zeldaPlayerCollision()
{
//Portal
	if(place_meeting(x,y,portalEnter_obj)){room_goto(zeldaBoss_rm);};
	if(place_meeting(x,y,portalLeave_obj)){game_data_obj.zeldaCompleted=true;};
	
//Enemy
	if(key_attack != true)
	{
		if(place_meeting(x+sign(x-zeldaEnemy_BC_obj.x)*12,y+sign(y-zeldaEnemy_BC_obj.y)*12,zeldaEnemy_BC_obj))
		{
			audio_play_sound(bounce_sfx,1,false);
			flash = 1;
			if(health!=0){--health;};
			alarm[0] = 20;
			input_magnitude = 0;
			if(place_free(x+hsp,y)){hsp = sign(x-zeldaEnemy_BC_obj.x)*64;}else{hsp = 0;};
			if(place_free(x,y+vsp)){vsp	= sign(y-zeldaEnemy_BC_obj.y)*64;}else{vsp = 0;};
		};
	};
	
	if(key_attack != true)
	{
		if(place_meeting(x+sign(x-zeldaBoss_BC_obj.x)*16,y+sign(y-zeldaBoss_BC_obj.y)*16,zeldaBoss_BC_obj))
		{
			audio_play_sound(bounce_sfx,1,false);
			flash = 1;
			if(health!=0){--health;};
			alarm[0] = 20;
			input_magnitude = 0;
			if(place_free(x+hsp,y)){hsp = sign(x-zeldaBoss_BC_obj.x)*92;}else{hsp = 0;};
			if(place_free(x,y+vsp)){vsp	= sign(y-zeldaBoss_BC_obj.y)*92;}else{vsp = 0;};
		};
	};
	
	if(key_attack != true)
	{
		if(place_meeting(x+sign(x-projectile_BC_obj.x)*4,y+sign(y-projectile_BC_obj.y)*4,projectile_BC_obj))
		{
			//var insProjectile = instance_nearest(x,y,projectile_BC_obj);
			audio_play_sound(bounce_sfx,1,false);
			flash = 1;
			if(health!=0){--health;};
			alarm[0] = 20;
			input_magnitude = 0;
			if(place_free(x+hsp,y)&&!place_meeting(x+hsp,y,zeldaBoss_BC_obj)){hsp = sign(x-projectile_BC_obj.x)*64;}else{hsp = 0;};
			if(place_free(x,y+vsp)&&!place_meeting(x,y+vsp,zeldaBoss_BC_obj)){vsp = sign(y-projectile_BC_obj.y)*64;}else{vsp = 0;};
			var insProjectile = instance_nearest(x,y,projectile_BC_obj);
			insProjectile.alarm[0] = 1;
		};
	};
	
//Wall	
	
	//Horizontal 
	if (place_meeting(x + hsp, y, collision_obj))
	{
		while (!place_meeting(x + sign(hsp), y, collision_obj))
		{
			x += sign(hsp);
		}
		hsp = 0;
		
		if(vsp == 0){sprite_index = idle_sprite;}else{sprite_index = run_sprite;};
	}


	//Vertical Collision
	if (place_meeting(x, y + vsp, collision_obj))
	{
		while (!place_meeting(x , y + sign(vsp), collision_obj))
		{
			y += sign(vsp);
		}
		vsp = 0;
		
		if(hsp == 0){sprite_index = idle_sprite;}else{sprite_index = run_sprite;};
	}
	
//NPC
	
	//Horizontal 
	if (place_meeting(x + hsp, y, zeldaNPC_BC_obj))
	{
		while (!place_meeting(x + sign(hsp), y, zeldaNPC_BC_obj))
		{
			x += sign(hsp);
		}
		hsp = 0;
		
		if(vsp == 0){sprite_index = idle_sprite;}else{sprite_index = run_sprite;};
	}


	//Vertical Collision
	if (place_meeting(x, y + vsp, zeldaNPC_BC_obj))
	{
		while (!place_meeting(x , y + sign(vsp), zeldaNPC_BC_obj))
		{
			y += sign(vsp);
		}
		vsp = 0;
		
		if(hsp == 0){sprite_index = idle_sprite;}else{sprite_index = run_sprite;};
	};
}