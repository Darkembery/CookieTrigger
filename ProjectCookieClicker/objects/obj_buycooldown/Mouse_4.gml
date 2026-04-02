if (global.cash >= value) and can_buy
{
	global.cash -= value
	global.cooldown_upgrade_level++
	global.cooldown_upgrade_value *= 2.2 
	global.fire_cooldown_max -= 5
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