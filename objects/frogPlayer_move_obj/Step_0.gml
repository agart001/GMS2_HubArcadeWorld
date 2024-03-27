if (keyboard_check(key_up) == true)
{
	image_angle = 0;
	y -= blockLength;
	instance_change(frogPlayer_static_obj, true);
	exit;
}
else if (keyboard_check(key_down) == true)
{
	image_angle = 180;
	y += blockLength;
	instance_change(frogPlayer_static_obj, true);
	exit;
}
else if (keyboard_check(key_left) == true)
{
	image_angle = 90;
	x -= blockLength;
	instance_change(frogPlayer_static_obj, true);
	exit;
}
else if (keyboard_check(key_right) == true)
{
	image_angle = 270;
	x += blockLength;
	instance_change(frogPlayer_static_obj, true);
	exit;
}
