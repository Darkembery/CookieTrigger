if (global.cash >= value) and can_buy
{
	global.cash -= value
	global.ammopc_upgrade_level++
	global.ammopc_upgrade_value = global.ammopc_upgrade_level * 2.1
	global.bullets_per_cookie += 10
}

else
{
	//audio_play_sound(sfx_purchaseerror, 1, 0);	
}