move_speed = 1.4;
flashing = false;
image_xscale = 2
image_yscale = 2
if obj_enemyspawner.number_of_spawns < 150
{
move_speed = 1.4
hp = 38
damage_to_player = 5
can_follow = true;
timer_reward = irandom_range(1, 3)
}
else
{
move_speed = 1.6
hp = 50
damage_to_player = 7
can_follow = true;
timer_reward = irandom_range(1, 2)
}
can_collide = true;
can_collide_self = true;
knockback_x = 0
knockback_y = 0;

image_xscale = 1
image_yscale = 1
