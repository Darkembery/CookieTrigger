move_speed = 1;
target_speed = 0;
flashing = false;
can_reward = true;

move_speed = 1
target_speed = 1
hp = 75
damage_to_player = 6
can_follow = true;
timer_reward = irandom_range(1, 4)


can_collide = true;
knockback_x = 0
knockback_y = 0;
can_aim = false;
shoot_cooldown = irandom_range(60, 75)

gun = instance_create_layer(x, y, "Enemys", obj_enemy2gun)
gun.owner = id;

image_xscale = 1.5
image_yscale = 1.5

