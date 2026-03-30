move_speed = 1;
flashing = false;
hp = 70
damage_to_player = 5
can_follow = true;
timer_reward = irandom_range(1, damage_to_player)
can_collide = true;
knockback_x = 0
knockback_y = 0;
can_aim = false;

gun = instance_create_layer(x, y, "Enemys", obj_enemy2gun)
gun.owner = id;

image_xscale = 0
image_yscale = 0

