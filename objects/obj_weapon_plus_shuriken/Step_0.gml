image_angle -= 12*abs(speed_x);


var inst = instance_place(x + speed_x, y, global.solid_objects);
if (inst != noone)
{
	instance_destroy();
	
	if (inst.object_index == obj_number_box) with (inst)
	{
		if (size < 5)
		{
			size += 1;
	
			image_xscale += 0.41;
			image_yscale += 0.41;
		}
	}
}


x += speed_x;