if (stuck_in) //Stucked fade out
{
	if (alarm_get(0) == -1) alarm_set(0, 3 * game_get_speed(gamespeed_fps));
	
	image_alpha = alarm_get(0) / 60;
	
	exit;
}


image_angle -= 2*abs(speed_x);  //you spin me round...


//Collision check
var inst = instance_place(x + speed_x, y + speed_y, global.solid_objects);
if (inst != noone)
{
	stuck_in = true;
	
	if (inst.object_index == obj_number_box) with (inst)
	{
		if (size >= max_size) exit;
		
		image_xscale += inst.size_delta;
		image_yscale += inst.size_delta;
		
		size += 1;
	}
}


//Movement
speed_y += acceleration_g;

x += speed_x;
y += speed_y;