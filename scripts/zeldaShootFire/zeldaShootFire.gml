// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function zeldaShootFire()
{
	if (shot_direction == 0)
	{
		instance_create_layer(x + 200, y + 8, "Instances", zeldaSword_obj);
		with(instance_place(x,y,zeldaEnemy_BC_obj))
		{
			hit = 1;
			x_knock = sign(x-other.x)*6;
			y_knock = sign(y-other.y)*6;
		};
	};
	
	if (shot_direction == 180)
	{
		instance_create_layer(x - 48, y + 8, "Instances", zeldaSword_obj);
		with(instance_place(x,y,zeldaEnemy_BC_obj))
		{
			hit = 1;
			x_knock = sign(x-other.x)*6;
			y_knock = sign(y-other.y)*6;
		};
	};
	
	if (shot_direction == 90)
	{
		instance_create_layer(x + 10, y - 48, "Instances", zeldaSword_obj);
		zeldaSword_obj.depth = 1;
		with(instance_place(x,y,zeldaEnemy_BC_obj))
		{
			hit = 1;
			x_knock = sign(x-other.x)*6;
			y_knock = sign(y-other.y)*6;
		};
	};
	
	if (shot_direction == 270)
	{
		instance_create_layer(x - 10, y + 48, "Instances", zeldaSword_obj);
		with(instance_place(x,y,zeldaEnemy_BC_obj))
		{
			hit = 1;
			x_knock = sign(x-other.x)*6;
			y_knock = sign(y-other.y)*6;
		};
	};
}