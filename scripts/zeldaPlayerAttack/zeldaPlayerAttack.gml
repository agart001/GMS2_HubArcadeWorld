
function zeldaPlayerAttack()
{
	if (sprite_index != zeldaPlayerAttack_spr)
	{
		sprite_index = zeldaPlayerAttack_spr;
		local_frame = 0;
		image_index = 0;
	};
	
	//zeldaPlayerAnimation();
	
	if (direction == 0)
	{
		instance_create_layer(x + 48, y + 8, "Instances", zeldaSword_obj);
		with(instance_place(x,y,zeldaEnemy_BC_obj))
		{
			hit = 1;
			x_knock = sign(x-other.x)*6;
			y_knock = sign(y-other.y)*6;
		};
		with(instance_place(x,y,zeldaBoss_BC_obj))
		{
			hit = 1;
			x_knock = sign(x-other.x)*2;
			y_knock = sign(y-other.y)*2;
		};
	};
	
	if (direction == 180)
	{
		instance_create_layer(x - 48, y + 8, "Instances", zeldaSword_obj);
		with(instance_place(x,y,zeldaEnemy_BC_obj))
		{
			hit = 1;
			x_knock = sign(x-other.x)*6;
			y_knock = sign(y-other.y)*6;
		};
		with(instance_place(x,y,zeldaBoss_BC_obj))
		{
			hit = 1;
			x_knock = sign(x-other.x)*2;
			y_knock = sign(y-other.y)*2;
		};
	};
	
	if (direction == 90)
	{
		instance_create_layer(x + 10, y - 48, "Instances", zeldaSword_obj);
		zeldaSword_obj.depth = 1;
		with(instance_place(x,y,zeldaEnemy_BC_obj))
		{
			hit = 1;
			x_knock = sign(x-other.x)*6;
			y_knock = sign(y-other.y)*6;
		};
		with(instance_place(x,y,zeldaBoss_BC_obj))
		{
			hit = 1;
			x_knock = sign(x-other.x)*2;
			y_knock = sign(y-other.y)*2;
		};
	};
	
	if (direction == 270)
	{
		instance_create_layer(x - 10, y + 48, "Instances", zeldaSword_obj);
		with(instance_place(x,y,zeldaEnemy_BC_obj))
		{
			hit = 1;
			x_knock = sign(x-other.x)*6;
			y_knock = sign(y-other.y)*6;
		};
		with(instance_place(x,y,zeldaBoss_BC_obj))
		{
			hit = 1;
			x_knock = sign(x-other.x)*2;
			y_knock = sign(y-other.y)*2;
		};
	};
	
	
	zeldaSword_obj.image_index = direction / 90;
	
	zeldaPlayerAnimation();
	
	if (animation_end)
	{
		animation_end = false;
	};
	
	
}