/// @description Check buttons

if (keyboard_check_pressed(keyboard_key)) switch (keyboard_key)
{
	case vk_numpad1: if (room != room_first) room_goto_previous(); break;
	case vk_numpad2: if (room != room_last) room_goto_next(); break;
	case vk_f4: window_set_fullscreen(!window_get_fullscreen()); break;
}