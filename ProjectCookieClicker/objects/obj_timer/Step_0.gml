#region cooldowns e detectores de tempo/o tempo atual.
if timer_cooldown > 0
timer_cooldown--

else if timer_cooldown == 0
{
timer_cooldown = 68
global.timer--
global.time_alive++
}

if global.timer <= 0
{
	if (instance_exists(obj_enemyall))
	instance_destroy(obj_enemyall)
	
	if (keyboard_check_pressed(ord("R"))) and global.debug
	room_restart()
	
	if (!instance_exists(obj_door))
	{
		instance_create_layer(288, 320, "HUD", obj_door)
	}
	
	if (can_shake)
	{
		can_shake = false
		screenshake(8)
	}
	
	
}

if global.timer > 0
{
if (global.highest_time_alive <= global.time_alive)
	{
		global.highest_time_alive = global.time_alive	
	}
}

#endregion



