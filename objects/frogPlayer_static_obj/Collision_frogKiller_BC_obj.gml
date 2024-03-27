var ins = instance_place(x, y, log_BC_obj);

if (ins == noone)
{
	killFrog();
}
else
{
	x += ins.hspeed; 
}

