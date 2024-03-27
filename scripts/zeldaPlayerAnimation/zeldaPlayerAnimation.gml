
function zeldaPlayerAnimation()
{
	var true_direction = round(direction / 90);
	var total_frames = sprite_get_number(sprite_index) / 4;
	
	image_index = local_frame + (true_direction * total_frames);
	local_frame += sprite_get_speed(sprite_index) / 60;

	if(local_frame==2 || local_frame==5)
	{
		var p = random_range(.6,.8);
		audio_sound_pitch(zeldaWalk_sfx,p);
		audio_play_sound(zeldaWalk_sfx,1,false);
	};
	
	
	if (local_frame >= total_frames)
	{
		animation_end = true;
		local_frame -= total_frames;
	}
	else
	{
		animation_end = false;
	};
	

}