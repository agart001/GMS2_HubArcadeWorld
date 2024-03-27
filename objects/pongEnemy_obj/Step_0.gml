if (y < pongBall_obj.y)
{
    y += min(5, pongBall_obj.y - y);
}
else
{
    y -= min(5, y - pongBall_obj.y);
}


if (y < sprite_height / 2)
{
	y = sprite_height / 2;
};

if (y > room_height - sprite_height / 2)
{
	y = room_height - sprite_height / 2;
};