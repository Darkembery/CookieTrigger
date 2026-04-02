if (global.cash >= value) and can_buy
{
	global.cash -= value
	global.timer_upgrade_level++
	global.timer_upgrade_value *= 2.2
	global.timer_start_value += 10
}

else
{
	//audio_play_sound(sfx_purchaseerror, 1, 0);	
}