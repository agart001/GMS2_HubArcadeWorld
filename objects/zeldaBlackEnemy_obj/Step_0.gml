event_inherited();

if(black_health == 0)
{
	instance_create_layer(x,y,"Instances",tombstone_obj);
	audio_play_sound(zeldaEnemyDeath_sfx,0,false);
	instance_destroy(self);
};

if(distance_to_object(zeldaPlayer_baseclass_obj) < 128)
{
	zeldaBlackEnemyChase();
};
else
{
	zeldaRedEnemyWander();
};

move_contact_all(direction, blackSpeed);
