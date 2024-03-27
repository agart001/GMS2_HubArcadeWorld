image_speed = 0;

if (keyboard_check_pressed(key_up) || keyboard_check_pressed(key_down) || keyboard_check_pressed(key_left) || keyboard_check_pressed(key_right) == true)
{
	instance_change(pacPlayer_move_obj, true);
	exit; 
}
           
	         