if (instance_exists(obj_player))
{
	move_towards_point(obj_player.x, obj_player.y, move_speed)	
}

if (hp <= 0) and !flashing
{
	instance_destroy();
}