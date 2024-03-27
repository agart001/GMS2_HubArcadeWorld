

//Variables
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));


var moveX = key_right - key_left;
var moveY = key_down - key_up;
if (moveX > 0 || moveX < 0) moveY = 0; 
if (moveY > 0 || moveY < 0) moveX = 0;


hsp = moveX * wlkSP;
vsp = moveY * wlkSP;

//Animation
if (keyboard_check(vk_nokey))
{
	image_speed = 0;
	image_index = 0;
	if (direction == 270) sprite_index = hubPlayer_LEFT_spr;
	if (direction == 90) sprite_index = hubPlayer_RIGHT_spr;
	if (direction == 0) sprite_index = hubPlayer_UP_spr;
	if (direction == 180) sprite_index = hubPlayer_DOWN_spr;
}


if (moveX == -1)
{
	direction = 270;
	image_speed = wlkSP / 16;
	sprite_index = hubPlayer_LEFT_spr;
}
else if (moveX == 1)
{
	direction = 90;
	image_speed = wlkSP / 16;
	sprite_index = hubPlayer_RIGHT_spr;
}


if (moveY == -1)
{
	direction = 0;
	image_speed = wlkSP / 16;
	sprite_index = hubPlayer_UP_spr;
}
else if (moveY == 1)
{
	direction = 180;
	image_speed = wlkSP / 16;
	sprite_index = hubPlayer_DOWN_spr;
}


//Movement & Collision

//Horizontal 
if (place_meeting(x + hsp, y, collision_obj))
{
	while (!place_meeting(x + sign(hsp), y, collision_obj))
	{
		x += sign(hsp);
	}
	hsp = 0;	
}


x += hsp;

//Vertical Collision
if (place_meeting(x, y + vsp, collision_obj))
{
	while (!place_meeting(x , y + sign(vsp), collision_obj))
	{
		y += sign(vsp);
	}
	vsp = 0;	
}

y += vsp;


//Door Collision

//if (place_meeting(x, y, pongDoor_obj))
//{
//	if (enteredPong > 0)
//	{ 
//		room_goto(hub_rm);
//		surface_resize(application_surface, room_width, room_height);
//		x = 2108;
//		y = 860;
//		enteredPong -= 0;
//	}
//	else
//	{ 
//		room_goto(pongHouse_rm);
//		surface_resize(application_surface, room_width, room_height);
//		x = 316;
//		y = 508;
//		enteredPong += 1;
//	};
//};