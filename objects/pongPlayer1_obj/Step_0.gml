key_up = keyboard_check(ord("W")); 
key_down = keyboard_check(ord("S"));

var move = key_down - key_up;

y += 5 * move;

if (y < sprite_height / 2)
{
	y = sprite_height / 2;
};

if (y > room_height - sprite_height / 2)
{
	y = room_height - sprite_height / 2;
};