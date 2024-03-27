 if !(other.image_index == 1)
{
	other.image_index = 1;
	safeFrogs += 1;
	//if (safeFrogs == 5)
	//{ 
	//	show_message("Congratulations!");
	//	game_data_obj.frogCompleted = true;
	//	room_goto(hub_rm);
	//} 
	x = xstart;
	y = ystart;
	frogController_obj.scoring_y = frogPlayer_BC_obj.y;
	frogController_obj.alarm[0] = 60 * 35;
}  