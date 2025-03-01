nested_begin { event_inherited(); }
nested_rumbled { exit; }


image_angle -= 2*abs(speed_x);  //you spin me round...


//Shrink objs collision
var inst = instance_place(x, y, global.shrink_objects);
if (inst != noone) with (inst)
{
	if (size >= max_size) exit;
	
	
	size += 1;
	
	image_xscale += size_delta;
	image_yscale += size_delta;
}