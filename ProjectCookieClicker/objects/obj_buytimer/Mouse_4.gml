if (global.cash >= value) and can_buy
{
	global.cash -= value
	global.timer_upgrade_level++
	global.timer_upgrade_value *= 4
	value = global.timer_upgrade_value
	global.timer_start_value += 10
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