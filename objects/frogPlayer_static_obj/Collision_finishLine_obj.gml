if (safeFrogs == 3)
{ 
	show_message("Congratulations!");
	game_data_obj.gamesCompleted += 1;
	room_goto(hub_rm);
}