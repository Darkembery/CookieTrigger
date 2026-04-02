if (global.cash >= value) and can_buy
{
	global.cash -= value
	global.damage_upgrade_level++
	global.damage_upgrade_value *= 4.5
	value = global.damage_upgrade_value
	global.damage += 5
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