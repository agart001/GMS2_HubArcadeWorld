
function zeldaEnemyCollision()
{
//Walls

	//Horizontal 
	if (place_meeting(x + x_knock, y, collision_obj))
	{
		while (!place_meeting(x + sign(x_knock), y, collision_obj))
		{
			x += sign(x_knock);
		}
		x_knock = 0;
	}


	//Vertical Collision
	if (place_meeting(x, y + y_knock, collision_obj))
	{
		while (!place_meeting(x , y + sign(y_knock), collision_obj))
		{
			y += sign(y_knock);
		}
		y_knock = 0;
	}
	
//NPCS
	
	//Horizontal 
	if (place_meeting(x + x_knock, y, zeldaNPC_BC_obj))
	{
		while (!place_meeting(x + sign(x_knock), y, zeldaNPC_BC_obj))
		{
			x += sign(x_knock);
		}
		x_knock = 0;
	}


	//Vertical Collision
	if (place_meeting(x, y + y_knock, zeldaNPC_BC_obj))
	{
		while (!place_meeting(x , y + sign(y_knock), zeldaNPC_BC_obj))
		{
			y += sign(y_knock);
		}
		y_knock = 0;
	}

//Enemies

	//Horizontal 
	if (place_meeting(x + x_knock, y, zeldaEnemy_BC_obj))
	{
		while (!place_meeting(x + sign(x_knock), y, zeldaEnemy_BC_obj))
		{
			x += sign(x_knock);
		}
		x_knock = 0;
	}


	//Vertical Collision
	if (place_meeting(x, y + y_knock, zeldaEnemy_BC_obj))
	{
		while (!place_meeting(x , y + sign(y_knock), zeldaEnemy_BC_obj))
		{
			y += sign(y_knock);
		}
		y_knock = 0;
	}
}