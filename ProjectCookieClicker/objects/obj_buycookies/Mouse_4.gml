if (global.cash >= value) and can_buy
{
	scr_save_all()
	global.cash -= value
	global.ammopc_upgrade_level++
	if global.ammopc_upgrade_level <= 6
	global.ammopc_upgrade_value *= 2.5
	else
	global.ammopc_upgrade_value *= 1.2
	value = global.ammopc_upgrade_value
	global.bullets_per_cookie += 5	
	scr_save_all()
	if (!instance_exists(obj_fadeout_white))
{
var fad = instance_create_layer(0,0,"Instances", obj_fadeout_white)
fad.image_blend = c_green
	}
}

else
{
	//audio_play_sound(sfx_purchaseerror, 1, 0);	
}