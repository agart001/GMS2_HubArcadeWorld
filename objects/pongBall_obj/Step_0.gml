 if (y < sprite_height / 2)
{
	audio_play_sound(bounce_sfx, 1 , false);
	direction *= -1;
}
else if (y > room_height - sprite_height / 2)
{
	audio_play_sound(bounce_sfx, 1 , false);
	direction *= -1;
};


if (x < sprite_width / 2)  
{
	audio_play_sound(score_sfx, 1 , false);
	x = room_width / 2;
	y = room_height / 2;
	speed = 3;
	direction = choose(choose( 20 , 110 ) + random(20) , choose( 210 , 290 ) + random(20));
	pongScore_obj.enemyScore +=1;
}
else if (x > room_width - sprite_width / 2)
{
	audio_play_sound(score_sfx, 1 , false);
	x = room_width / 2;
	y = room_height / 2;
	speed = 3;
	direction = choose(choose( 20 , 110 ) + random(20) , choose( 210 , 290 ) + random(20));
	pongScore_obj.playerScore +=1;
}; 


