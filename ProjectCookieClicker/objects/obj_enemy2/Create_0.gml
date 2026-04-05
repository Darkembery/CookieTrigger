move_speed = 1;
flashing = false;
if obj_enemyspawner.number_of_spawns < 150
{
move_speed = 1
hp = 70
damage_to_player = 6
can_follow = true;
timer_reward = irandom_range(1, 3)
}
else
{
	move_speed = 1.1
	hp = 90
	damage_to_player = 8
	can_follow = true;
	timer_reward = irandom_range(1, 2)
}

can_collide = true;
knockback_x = 0
knockback_y = 0;
can_aim = false;

gun = instance_create_layer(x, y, "Enemys", obj_enemy2gun)
gun.owner = id;

image_xscale = 1.5
image_yscale = 1.5

