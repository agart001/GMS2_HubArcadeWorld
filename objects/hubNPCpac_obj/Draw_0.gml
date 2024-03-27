 draw_self();

if(distance_to_object(hubPlayer_obj) < 192)
{
	draw_set_color(c_dkgray);
	draw_set_font(controls_ft)
	draw_text(hubNPCpac_obj.x - 32, hubNPCpac_obj.y - 128, "Wanna play pacman? {Space}");
	if(keyboard_check(vk_space) == true)
	{
		
		room_goto(pacman_rm);
		//surface_resize(application_surface, 1280, 700)
		//window_set_size(1280, 700);
	} 
} 