draw_set_color(c_black);
draw_set_font(score_ft);
draw_text(12, 12, "SCORE:" + string(score));

draw_text(182, 12, "LIVES:")

for(var i = 0; i < lives; ++i)
{
	draw_sprite(frogPlayer_move_spr, image_index, 312  + (64 * i), 30);
}


draw_text(932, 12, "TIME:");
draw_healthbar(1032, 12, 1272, 45, alarm[0] / 18, c_black, c_purple, c_lime, 1, true, true);
    