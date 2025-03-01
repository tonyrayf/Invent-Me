button_text = "НАЧАТЬ";


click_func = function()
{
	with (Camera)
	{
		var sq = layer_sequence_create(layer, x, y, sq_camera_intro);
		var sq_struct = layer_sequence_get_instance(sq);
		
		sequence_instance_override_object(sq_struct, Camera, id);
	}
}