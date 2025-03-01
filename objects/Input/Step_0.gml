/// @description Check input

key_left  = key_input_check(keys_left);
key_right = key_input_check(keys_right);

key_jump_press   = key_input_check_pressed (keys_jump);
key_jump_release = key_input_check_released(keys_jump);


key_attack = key_input_check_pressed(keys_attack);


mouse_plus  = mouse_check_button_pressed(mouses_plus);
mouse_minus = mouse_check_button_pressed(mouses_minus);