with obj_enemy2
{
global.timer -= obj_enemy2.damage_to_player 
move_speed = 0
can_follow = false;
can_collide = false;
alarm[1] = 60;
knockback_x = sign(x - other.x)
knockback_y = sign(y - other.y)
}
with obj_player
{
image_alpha = 0.5
alarm[1] = 90
can_take_damage = true;
	}
instance_destroy();