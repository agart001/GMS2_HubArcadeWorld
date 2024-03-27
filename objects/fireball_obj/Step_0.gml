
if(place_meeting(x,y,collision_obj))
{
	instance_destroy(self);
};

//if(instance_place(x,y,zeldaPlayer_baseclass_obj))
//{
//	with(zeldaPlayer_baseclass_obj)
//	{
//		audio_play_sound(bounce_sfx,1,false);
//		flash = 1;
//		if(health!=0){--health;};
//		alarm[0] = 20;
//		input_magnitude = 0;
//		if(place_free(x+hsp,y)&&!place_meeting(x+hsp,y,zeldaBoss_BC_obj)){hsp = sign(projectile_BC_obj.x-x)*64;}else{hsp = 0;};
//		if(place_free(x,y+vsp)&&!place_meeting(x,y+vsp,zeldaBoss_BC_obj)){vsp = sign(projectile_BC_obj.y-y)*64;}else{vsp = 0;}; 
//	};
//	instance_destroy(self);
//};