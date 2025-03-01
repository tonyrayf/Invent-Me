global.shrink_objects = [obj_shrink_object, obj_number_box, obj_number_box_undestructable];
global.capture_objects = [obj_capture_object, obj_gravity_switcher];

global.solid_objects = array_concat([obj_block_solid], [obj_shrink_object]);

global.font_main = f_main;

global.grav = DOWN;