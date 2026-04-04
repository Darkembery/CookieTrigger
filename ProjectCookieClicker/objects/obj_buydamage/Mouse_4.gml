if (global.cash >= value) and can_buy
{
	scr_save_all()
	global.cash -= value
	global.damage_upgrade_level++
	if global.damage_upgrade_level <= 6
	global.damage_upgrade_value *= 2.35
	else
	global.damage_upgrade_value *= 1.5
	value = global.damage_upgrade_value
	global.damage += 1
	audio_play_sound(sfx_confirm, 1, 0, global.volume);	
	scr_save_all()
	if (!instance_exists(obj_fadeout_white))
{
var fad = instance_create_layer(0,0,"Instances", obj_fadeout_white)
fad.image_blend = c_green
	}
}

else
{
	audio_play_sound(sfx_purchaseerror, 1, 0, global.volume);	
}