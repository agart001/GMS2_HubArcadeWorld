event_inherited();

if(red_health == 0)
{
	instance_create_layer(x,y,"Instances",tombstone_obj);
	audio_play_sound(zeldaEnemyDeath_sfx,0,false);
	instance_destroy(self);
};

zeldaRedEnemyWander();

move_contact_all(direction, redSpeed);