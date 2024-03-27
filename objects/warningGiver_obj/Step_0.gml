if (point_distance(x, y, zeldaPlayer_baseclass_obj.x, zeldaPlayer_baseclass_obj.y) < 128)
{
	if(npcTextbox == noone){npcTextbox = instance_create_layer(x+100,y-12, "Instances", zeldaTextbox_obj);};
	zeldaTextbox_obj.text = npcText;
};
else
{
	if(npcTextbox != noone){instance_destroy(npcTextbox); 
		npcTextbox = noone;}; 
		
}