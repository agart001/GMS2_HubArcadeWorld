
var p = random_range(.8,1.2);
audio_sound_pitch(zeldaFireball_sfx,p);
audio_play_sound(zeldaFireball_sfx,1,false);

instance_create_layer(x,y,"Instances_Projectiles",fireball_obj);