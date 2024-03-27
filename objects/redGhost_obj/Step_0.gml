if (state == 1) 
{
	redGhostAI();
}
else 
{
    scatterGhostAI()
}

move_contact_solid(direction, GHOST_SPEED);
