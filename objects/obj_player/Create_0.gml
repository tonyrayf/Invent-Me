//X
speed_x = 0;

direction_x = 0;
last_direction_x  = 0;

top_speed_x_def = 8;		
top_speed_x_right = top_speed_x_def;
top_speed_x_left = -top_speed_x_def;

acceleration_x = 1;
deceleration_x = 1.25;

walk_multiplier = 4; //how many times is walk speed less than regular speed


//Y
speed_y = 0;

acceleration_g = 1;

var jump_height = 2.5*sprite_get_height(sprite_index);
def_jump_start_speed = ceil(sqrt(2 * acceleration_g * jump_height) - 0.5);  //Physics formula: v0 = sqrt(2*g*h)
jump_start_speed = def_jump_start_speed;

is_falling = false;


//Limits
can_decelerate = true;
can_move = true;
can_jump = true;


//Animation
animation_index = -1;
anim_delta_i = 0;
anim_iterator = 0;