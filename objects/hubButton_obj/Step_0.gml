 if position_meeting(mouse_x, mouse_y, hubButton_obj)
{
	image_index = 1;
	if mouse_check_button_pressed(mb_left)
	{
		instance_create_layer(-100, -100, "Instances", game_data_obj);
		room_goto(hub_rm);
	}
}
else
{
	image_index = 0;	
}
 