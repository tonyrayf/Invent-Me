nested_begin { event_inherited(); }
nested_rumbled { exit; }


image_angle = point_direction(x, y, x + speed_x, y + speed_y);


//Shrink objs collision
var inst = instance_place(x, y, global.shrink_objects);
if (inst != noone) with (inst)
{
	if (size <= min_size) exit;
	
	if (size > 1)
	{
		size -= 1;
		
		image_xscale -= size_delta;
		image_yscale -= size_delta;
	}
	else if (inst.destructable) instance_destroy();
}