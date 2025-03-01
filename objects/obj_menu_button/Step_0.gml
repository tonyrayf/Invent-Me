button_default_func(3, 230);

if (place_meeting(x, y, obj_menu_cursor)) y = lerp(y, min_y, 0.5);
else y = lerp(y, ystart, 0.5)