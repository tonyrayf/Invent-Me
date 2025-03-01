var insts = ds_list_create();
if (instance_place_list(x, y, global.gravity_objects, insts, false))
{
	var i = 0;
	repeat (ds_list_size(insts))
	{
		var inst = ds_list_find_value(insts, i);
		var grav = grav_direction;
		
		if (sign(inst.acceleration_g) != grav) with (inst)
		{
			acceleration_g = grav * abs(acceleration_g);
			
			if (object_index == obj_player)
			{
				sprite_index = grav == 1 ? spr_sum_stand : spr_sum_stand_reverse;
			}
		}
	}
}

if (last_grav_direction != grav_direction)
{
	last_grav_direction = grav_direction;
	
	image_index = !image_index;
}