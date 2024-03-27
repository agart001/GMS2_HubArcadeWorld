 if (frogCompleted == true)
{
	instance_destroy(hubNPCfrog_obj, true);
}

if (pongCompleted == true)
{
	instance_destroy(hubNPCpong_obj, true);	
}

if (platCompleted == true)
{
	instance_destroy(hubNPCplat_obj, true);	 
}

if (pacCompleted == true)
{
	instance_destroy(hubNPCpac_obj, true);	 
}

if (frogCompleted == true && pongCompleted == true && platCompleted && pacCompleted == true)
{
	room_goto(zelda_rm);
	frogCompleted = false;
	pongCompleted = false;
	platCompleted = false;
	pacCompleted = false;
};

if(zeldaCompleted==true)
{
	room_goto(win_rm);
	instance_destroy(game_data_obj, false);
};  