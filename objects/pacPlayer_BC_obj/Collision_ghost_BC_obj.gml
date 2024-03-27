if (ghost_BC_obj.state == 1)
{
    x = pacmanSpawn_obj.x;
	y = pacmanSpawn_obj.y;
	--lives
}
else 
{
	score += 100;
    other.x = ghostSpawn_obj.x;
	other.y = ghostSpawn_obj.y;
	pacGate_obj.solid = false;
	pacGate_obj.image_index = 0;
	other.direction = 180;
	other.state = 1;
	pacController_obj.alarm[4] = 60 * 2;
}  