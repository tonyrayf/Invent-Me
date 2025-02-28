player_trigger_func = function()
{
	do_camera_zoom(480, 3, ease_inout_sine);
	instance_destroy();
}