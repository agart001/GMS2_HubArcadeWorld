if position_meeting(mouse_x, mouse_y, exitButton_obj)
{
	image_index = 1;
	if mouse_check_button_pressed(mb_left)
	{
		game_end();
	}
}
else
{
	image_index = 0;	
}
 