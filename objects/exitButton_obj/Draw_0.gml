draw_self();


draw_set_font(menu_ft);
if image_index == 1
{
	draw_set_color(c_white);
};
else
{
	draw_set_color(c_gray);
};

draw_text(x - 75 , y - 25 , text);