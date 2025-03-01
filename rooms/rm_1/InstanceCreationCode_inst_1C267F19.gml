button_text = "НАЧАТЬ";


click_func = function()
{
	obj_menu_cursor.active = false;
	
	with (instance_create_layer(Camera.x, Camera.y, "General", Cutscene_manager))
	{
		sequence = sq_camera_intro;
		instances_to_override = [Camera];
	}
	
	layer_destroy(layer);
}