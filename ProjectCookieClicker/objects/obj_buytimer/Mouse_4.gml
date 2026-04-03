if (global.cash >= value) and can_buy
{
	global.cash -= value
	global.timer_upgrade_level++
	if global.timer_upgrade_level <= 6
	global.timer_upgrade_value *= 2.1
	else
	global.timer_upgrade_value *= 1.4
	value = global.timer_upgrade_value
	global.timer_start_value += 5
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