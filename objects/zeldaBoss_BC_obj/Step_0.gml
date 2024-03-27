zeldaEnemyCollision();

x += x_knock;
y += y_knock;

if(hit != 0)
{
	audio_play_sound(oof_sfx,1,false);
	flash = 1;
	alarm[0] = 20;
	--hit;
};