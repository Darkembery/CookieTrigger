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

if global.timer <= 10
{
depth += 99999999	
}
else
{
depth = -999	
}

if global.timer >= 120
{
global.timer = 120;	
}

if global.timer <= 0
{
	scr_save_all(); 
	
	audio_stop_sound(msc_game__3_)
	if can_play
	audio_play_sound(sfx_gameend, 1, 0, global.volume)
	can_play = false;
	
	global.pause = true;
	instance_deactivate_object(obj_player)
	instance_deactivate_object(obj_gun)
	
	if (instance_exists(obj_cookie))
	instance_destroy(obj_cookie);
	
	global.cookies = 0
	
	if (keyboard_check_pressed(ord("R"))) and global.debug
	room_restart()
	
	if (can_shake)
	{
		can_shake = false
		screenshake(10, 15)
		alarm[0] = 120
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



