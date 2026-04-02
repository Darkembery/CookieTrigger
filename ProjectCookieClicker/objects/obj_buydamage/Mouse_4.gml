if (global.cash >= value) and can_buy
{
	global.cash -= value
	global.damage_upgrade_level++
	global.damage_upgrade_value *= 2.5
	global.damage += 3.5
}

else
{
	//audio_play_sound(sfx_purchaseerror, 1, 0);	
}