if (zoom_active)  // Zoom
{
	iterator += delta_i;
	
	//interpolate view width with easing func
	half_view_width = lerp(start_view_width, final_view_width, easing_func(iterator)) / 2;
	
	half_view_height = half_view_width * VIEW_9__16;
	
	
	//don't forgor about offset
	offset_x = lerp(0, start_offset_x,  half_view_width * 2  / start_view_width);
	offset_y = lerp(0, start_offset_y,  half_view_width * 2  / start_view_width);
	
	
	//zoom end
	if (iterator >= 1 or half_view_width * 2 == final_view_width)
	{
		half_view_width = final_view_width / 2;
		
		iterator = 0;
		zoom_active = false;
	}
	
	camera_set_view_size(view_camera[0], half_view_width * 2, half_view_height * 2);
}


#region Movement


if (follow_player and instance_exists(obj_player))
{
	next_x = obj_player.x + offset_x;
	next_y = obj_player.y + offset_y * obj_player.grav_direction;
}
else
{
	next_x = x;
	next_y = y;
}


camera_speed_x = (next_x - x) / cam_smooth_multi;
camera_speed_y = (next_y - y) / (cam_smooth_multi * 3);


x += camera_speed_x;
y += camera_speed_y;

x = clamp(x, half_view_width,  room_width  - half_view_width);
y = clamp(y, half_view_height, room_height - half_view_height);


camera_set_view_pos(view_camera[0], x - half_view_width, y - half_view_height);


#endregion


/*
show_debug_message($"Width - {half_view_width * 2}");
show_debug_message($"Height - {half_view_height * 2}\n");

show_debug_message($"Offset X - {offset_x}");
show_debug_message($"Offset Y - {offset_y}\n");
*/