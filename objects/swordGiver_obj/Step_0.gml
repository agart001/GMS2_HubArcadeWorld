//Npc Variables
//var npcTextCondition = zeldaPlayer_baseclass_obj.hasSword;
//npcTextbox = noone;

//npcText = "Take [tab] this its dangerous to go alone.";

//Npc Text
//zeldaCreateTextbox(npcTextCondition,x,y,zeldaPlayer_baseclass_obj.x,zeldaPlayer_baseclass_obj.y,128,npcTextbox,npcText,zeldaPlayer_baseclass_obj.key_interact);
        
if (zeldaPlayer_baseclass_obj.hasSword == false)
{ 
	if (point_distance(x, y, zeldaPlayer_baseclass_obj.x, zeldaPlayer_baseclass_obj.y) < 128)
	{
		if(npcTextbox == noone){npcTextbox = instance_create_layer(x,y - 80, "Instances", zeldaTextbox_obj);};
		zeldaTextbox_obj.text = npcText;
		if (zeldaPlayer_baseclass_obj.key_interact == true) 
		{
			audio_play_sound(score_sfx,0,false);
			zeldaPlayer_baseclass_obj.hasSword = true;
		}; 
	};
	else
	{
		if(npcTextbox != noone){instance_destroy(npcTextbox); 
			npcTextbox = noone;}; 
		
	} 
}
else
{
	if(npcTextbox != noone){instance_destroy(npcTextbox);
		npcTextbox = noone;}; 
};    