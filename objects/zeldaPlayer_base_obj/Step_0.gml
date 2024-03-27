
//inputs
key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_attack = keyboard_check(vk_space)
key_interact = keyboard_check(vk_tab);

//direction & true input
input_direction = point_direction(0,0, key_right - key_left, key_down - key_up);
input_magnitude = (key_right - key_left != 0) || (key_down - key_up != 0);
             
        
//movement
hsp = lengthdir_x(input_magnitude * wlkSP, input_direction);
vsp = lengthdir_y(input_magnitude * wlkSP, input_direction);

zeldaPlayerCollision();

if (hasSword == true)
{
    if (key_attack == false) 
	{
		x += hsp;
		y += vsp;
	}
	else
	{
		input_magnitude = 0;
		input_direction = 0;
	}
	
}
else 
{
	x += hsp;
	y += vsp;
}




//animation
var previous_sprite = sprite_index;

if (input_magnitude != 0)
{
	direction = input_direction;
	sprite_index = run_sprite;
}
else
{
	sprite_index = idle_sprite;
};
 
if (previous_sprite != sprite_index)
{
    local_frame = 0;
};

        
zeldaPlayerAnimation();

if (hasSword == true)
{
    if (key_attack == true)
	{
		if(key_down&&key_right)||(key_down&&key_left){direction = 270;};
		if(key_up&&key_right)||(key_up&&key_left){direction = 90;};
		zeldaPlayerAttack();
	};
};

if(health == 0)
{
	audio_play_sound(zeldaPlayerLL_sfx,2,false); 
	--lives;
	health = 2;
};

if(lives == 0)
{
	audio_play_sound(zeldaRoomRestart_sfx,2,false);
	room_restart();
};