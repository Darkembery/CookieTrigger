move_speed = 3;

image_xscale = 1.4
image_yscale = 1.4
is_moving = false;

enum player_state_kitchen
{
	idle,
	walk
}

current_state = player_state_kitchen.idle
//hp = global.timer

can_take_damage = true;