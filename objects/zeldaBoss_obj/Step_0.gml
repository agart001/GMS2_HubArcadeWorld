event_inherited();

if(boss_health == 0)
{ 
	instance_create_layer(x,y,"Instances",tombstone_obj);
	instance_create_layer(room_width/2,room_height/2,"Instances",portalLeave_obj);
	audio_play_sound(zeldaEnemyDeath_sfx,0,false);
	instance_destroy(self);
};

if(distance_to_object(zeldaPlayer_baseclass_obj) <= 128)
{
	 shot_direction = direction;
	if(alarm[1]==-1){alarm[1] = 60*2;};
	//instance_create_layer(x,y,"Instances_Projectiles",fireball_obj);
	zeldaBlackEnemyChase();
};
else
{
	zeldaRedEnemyWander();
};

if(boss_health<=5)
{
	bossSpeed = 3;
	if(distance_to_object(zeldaPlayer_baseclass_obj) <= 128)
	{
	shot_direction = point_direction(x,y,zeldaPlayer_baseclass_obj.x,zeldaPlayer_baseclass_obj.y)+random_range(0,15);
	if(alarm[1]==-1){alarm[1] = 20;};
	//instance_create_layer(x,y,"Instances_Projectiles",fireball_obj);
	};
};


move_contact_all(direction, bossSpeed);
 