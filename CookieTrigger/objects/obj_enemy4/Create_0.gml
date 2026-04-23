move_speed = 0.8;
flashing = false;
can_reward = true;

move_speed = 0.8
hp = 100
damage_to_player = 20
can_play = true;
can_follow = true;
timer_reward = irandom_range(1, 3);

can_collide = true;
can_collide_self = true;
knockback_x = 0
knockback_y = 0;

enum enemy4_state
{
	follow,
	explosion
}

current_state = enemy4_state.follow

image_xscale = 1.5
image_yscale = 1.5
