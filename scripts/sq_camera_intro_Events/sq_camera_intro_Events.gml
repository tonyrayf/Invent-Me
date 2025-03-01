function sq_camera_intro_Moment_1()
{
	obj_player.active = true;
	
	GUI.draw_gui = true;
	GUI.image_alpha = 0;
	
	Camera.follow_player = true;
}