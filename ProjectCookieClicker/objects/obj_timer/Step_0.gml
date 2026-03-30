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
	
	if (keyboard_check_pressed(ord("R")))
	room_restart()
}

if global.timer > 0
{
if (global.highest_time_alive <= global.time_alive)
	{
		global.highest_time_alive = global.time_alive	
	}
}



