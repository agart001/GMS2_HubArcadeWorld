if (frogPlayer_BC_obj.safeFrogs == 5)
{ 
	show_message("Congratulations!");
	game_data_obj.frogCompleted = true;
	room_goto(hub_rm);
} 

if (lives <= 0)
{
	show_message("Out of Lives!");
	room_goto(hub_rm);	
}

if (alarm[0] == 0)
{
	killFrog();
	show_message("Out of Time!"); 
}

if (frogPlayer_BC_obj.y < scoring_y)
{
	scoring_y = frogPlayer_BC_obj.y;
	score += 10;
}