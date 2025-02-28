var inst = instance_place(x + speed_x, y, global.solid_objects);
if (inst != noone)
{
	instance_destroy();
	
	if (inst.object_index == obj_number_box) with (inst)
	{
		if (size > 1)
		{
			size -= 1;
	
			image_xscale -= 0.41;
			image_yscale -= 0.41;
		}
		else if (size > 0)
		{
			image_alpha = 0.5;
	
			mask_index = -1;
	
			size = 0;
		}
	}
}


x += speed_x;