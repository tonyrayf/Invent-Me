//X
speed_x = 0;

direction_x = 0;
last_direction_x = RIGHT;

top_speed_x_def = 3.5;		
top_speed_x_right = top_speed_x_def;
top_speed_x_left = -top_speed_x_def;

acceleration_x = 0.40;
deceleration_x = 0.55;

walk_multiplier = 4; //how many times is walk speed less than regular speed


//Y
speed_y = 0;

acceleration_g = 0.5;
grav_direction = DOWN;

var jump_height = 1.6*sprite_height;
def_jump_start_speed = ceil(sqrt(2 * acceleration_g * jump_height) - 0.5);  //Physics formula: v0 = sqrt(2*g*h)
jump_start_speed = def_jump_start_speed;

is_falling = false;


//Limits
active = true;

can_decelerate = true;
can_move = true;
can_jump = true;
can_weapon = true;


//Animation
animation_index = -1;
anim_delta_i = 0;
anim_iterator = 0;