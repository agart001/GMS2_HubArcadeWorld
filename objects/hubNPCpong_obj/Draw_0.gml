 draw_self();

if(distance_to_object(hubPlayer_obj) < 192)
{
	draw_set_color(c_dkgray);
	draw_set_font(controls_ft)
	draw_text(hubNPCpong_obj.x - 32, hubNPCpong_obj.y - 128, "Wanna play pong? {Space}");
	if(keyboard_check(vk_space) == true)
	{
		
		room_goto(pong1P_rm);
		//surface_resize(application_surface, 1280, 700)
		//window_set_size(1280, 700);
	} 
} 