var insts = ds_list_create();
if (instance_place_list(x, y, global.gravity_objects, insts, false))
{
	var i = 0;
	repeat (ds_list_size(insts))
	{
		var inst = ds_list_find_value(insts, i);
		var grav = grav_direction;
		
		if (inst.grav_direction != grav_direction) with (inst)
		{
			grav_direction = grav;
			
			if (object_index == obj_player)
			{
				if (grav_direction == DOWN) player_gravity_down();
				else player_gravity_up();
			}
		}
	}
}

if (last_grav_direction != grav_direction)
{
	last_grav_direction = grav_direction;
	
	image_index = !image_index;
}