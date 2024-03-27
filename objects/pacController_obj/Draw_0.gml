draw_set_color(c_white);
draw_set_font(score_ft);

draw_text(room_width/2 - 80,room_height/2, readyText);

draw_text(2, 32, "LIVES:")

draw_text(2, 128, "SCORE:")
draw_text(10, 168, string(score));

draw_sprite(scatterGhost_DOWN_spr, 1, 24, 462);
draw_text(48, 448, "= 100");

draw_sprite(pokeball_spr, image_index, 24, 522);
draw_text(48, 504, "= 10");

draw_sprite(dot_spr, image_index, 24, 577);
draw_text(48, 560, "= 5");


for(var i = 0; i < lives; ++i)
{
	draw_sprite(pacPlayer_static_spr, image_index, 24  + (32 * i), 92);
}
      