if (global.cash >= value) and can_buy
{
	global.cash -= value
	global.cooldown_upgrade_level++
	global.cooldown_upgrade_value *= 2.2 
	global.fire_cooldown_max -= 5
}

else
{
	//audio_play_sound(sfx_purchaseerror, 1, 0);	
}