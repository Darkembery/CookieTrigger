#region cooldowns e detectores de tempo/o tempo atual.
if global.pause exit
if timer_cooldown > 0
timer_cooldown--

else if timer_cooldown == 0 and global.timer > 0
{
timer_cooldown = 68
global.timer--
global.time_alive++
}

if global.timer <= 0
{
	scr_save_all(); 
	
	audio_stop_sound(msc_game__3_)
	if can_play
	audio_play_sound(sfx_gameend, 1, 0, global.volume)
	can_play = false;
	if (instance_exists(obj_gun))
	instance_destroy(obj_gun)
	if (instance_exists(obj_cursor))
	instance_destroy(obj_cursor)
	
	if (instance_exists(obj_enemyall))
	instance_destroy(obj_enemyall)
	
	if (instance_exists(obj_enemyspawner))
	instance_destroy(obj_enemyspawner)
	
	if (instance_exists(obj_cookie))
	instance_destroy(obj_cookie);
	
	global.cookies = 0
	
	if (keyboard_check_pressed(ord("R"))) and global.debug
	room_restart()
	
	if (!instance_exists(obj_doorbox))
	{
		instance_create_layer(304, 320, "HUD", obj_doorbox)
	}
	
	if (can_shake)
	{
		can_shake = false
		screenshake(10, 15)
	}
	
	global.timer = 0
}

if global.timer > 0
{
if (global.highest_time_alive <= global.time_alive)
	{
		global.highest_time_alive = global.time_alive	
	}
}

#endregion



