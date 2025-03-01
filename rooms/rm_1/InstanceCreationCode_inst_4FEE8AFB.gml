button_text = "НАЧАТЬ";


click_func = function()
{
	Cursor.active = false;
	
	step_func = function()
	{
		var alpha = layer_get_alpha("Menu");
		
		layer_set_alpha("Menu", lerp(alpha, 0, 0.1));
		
		if (alpha <= 0.05) layer_destroy("Menu");
	}
	
	with (Camera)
	{
		var sq = layer_sequence_create(layer, x, y, sq_camera_intro);
		var sq_struct = layer_sequence_get_instance(sq);
		
		sequence_instance_override_object(sq_struct, Camera, id);
	}
}