
function killFrog()
{
	audio_play_sound(bounce_sfx, 1 , false);
	effect_create_above(ef_firework, x, y + 10, .05, c_lime);
	effect_create_above(ef_firework, x + 10, y, .05, c_lime);
	effect_create_above(ef_firework, x, y - 10, .05, c_lime);
	effect_create_above(ef_firework, x - 10, y, .05, c_lime);
	image_angle = 0;
	x = xstart;
	y = ystart;
	frogController_obj.scoring_y = frogPlayer_BC_obj.y;
	frogController_obj.alarm[0] = 60 * 35;
	lives -= 1;
}