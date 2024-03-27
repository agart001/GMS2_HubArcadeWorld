// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function zeldaCreateTextbox(text_condition,obj_x,obj_y,p_x,p_y,dst,txtbxVar,txtBxText,text_action)
{
	//Sword Npc
	if (text_condition == false)
	{
		if (point_distance(obj_x, obj_y, p_x, p_y) < dst)
		{
			if(txtbxVar == noone){txtbxVar = instance_create_layer(obj_x,obj_y - 80, "Instances_Text", zeldaTextbox_obj);};
			txtbxVar.text = txtBxText;
			if (text_action == true) 
			{
				text_condition = true;
			};
		};
		else
		{
			if(txtbxVar != noone){instance_destroy(txtbxVar);
				txtbxVar = noone;};
		
		} 
	}
	else
	{
		if(txtbxVar != noone){instance_destroy(txtbxVar);
			txtbxVar = noone;};
	};  
}