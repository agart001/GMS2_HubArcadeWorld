
if(instance_exists(dot_obj) == false)
{
	show_message("Congratulations!");
	game_data_obj.pacCompleted = true;
	room_goto(hub_rm);
}; 

if(lives < 0)
{
	show_message("Out of Lives!");
	room_goto(hub_rm);
};