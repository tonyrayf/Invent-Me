global.shrink_objects = [obj_shrink_object, obj_number_box, obj_number_box_undestructable];
global.capture_objects = [obj_capture_object, obj_gravity_switcher];

global.solid_objects = array_concat([obj_block_solid], [obj_shrink_object]);

global.gravity_objects = [obj_player, obj_weapon_throwable];


global.weapons_throwable = [obj_weapon_throwable, obj_weapon_plus_shuriken, obj_weapon_minus_knife];


global.font_main = f_main;