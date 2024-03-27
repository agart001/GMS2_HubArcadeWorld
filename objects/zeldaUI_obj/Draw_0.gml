
if(lives == 3 && health = 2)
{
	draw_sprite(zeldaHeart_spr, 0, camera_x + 64, camera_y + 38);
	draw_sprite(zeldaHeart_spr, 0, camera_x + 128, camera_y + 38);
	draw_sprite(zeldaHeart_spr, 0, camera_x + 192, camera_y + 38);
}
else if(lives == 3 && health = 1)
{
	draw_sprite(zeldaHeart_spr, 0, camera_x + 64, camera_y + 38);
	draw_sprite(zeldaHeart_spr, 0, camera_x + 128, camera_y + 38);
	draw_sprite(zeldaHeart_spr, 1, camera_x + 192, camera_y + 38);
}

if(lives == 2 && health = 2)
{
	draw_sprite(zeldaHeart_spr, 0, camera_x + 64, camera_y + 38);
	draw_sprite(zeldaHeart_spr, 0, camera_x + 128, camera_y + 38);
}
else if(lives == 2 && health = 1)
{
	draw_sprite(zeldaHeart_spr, 0, camera_x + 64, camera_y + 38);
	draw_sprite(zeldaHeart_spr, 1, camera_x + 128, camera_y + 38);
}

if(lives == 1 && health = 2)
{
	draw_sprite(zeldaHeart_spr, 0, camera_x + 64, camera_y + 38);
}
else if(lives == 1 && health = 1)
{
	draw_sprite(zeldaHeart_spr, 1, camera_x + 64, camera_y + 38);
}


//for(var i = 0; i < lives; ++i)
//{
//	draw_sprite(zeldaHeart_spr, 0, camera_x + 64 + (64 * i),camera_y + 38);
//};

if(zeldaPlayer_baseclass_obj.hasSword == true)
{
	draw_sprite(zelda_sword_spr, 1, camera_x + 1216, camera_y + 20);
};
 
if(zeldaPlayer_baseclass_obj.key_attack==true){draw_sprite(spLight_spr,image_index,camera_x+680,camera_y+680);}else{draw_sprite(spDark_spr,image_index,camera_x+680,camera_y+680);};
if(zeldaPlayer_baseclass_obj.key_interact==true){draw_sprite(tbLight_spr,image_index,camera_x+876,camera_y+680);}else{draw_sprite(tbDark_spr,image_index,camera_x+876,camera_y+680);};
  
if(zeldaPlayer_baseclass_obj.hsp<0){draw_sprite(aLight_spr,image_index,camera_x+48,camera_y+680);}else{draw_sprite(aDark_spr,image_index,camera_x+48,camera_y+680);};
if(zeldaPlayer_baseclass_obj.hsp>0){draw_sprite(dLight_spr,image_index,camera_x+208,camera_y+680);}else{draw_sprite(dDark_spr,image_index,camera_x+208,camera_y+680);};
if(zeldaPlayer_baseclass_obj.vsp>0){draw_sprite(sLight_spr,image_index,camera_x +128,camera_y+680);}else{draw_sprite(sDark_spr,image_index,camera_x+128,camera_y+680);}; 
if(zeldaPlayer_baseclass_obj.vsp<0){draw_sprite(wLight_spr,image_index,camera_x +128,camera_y+600);}else{draw_sprite(wDark_spr,image_index,camera_x+128,camera_y+600);};