x = obj_upgrade.x + 64 * 3
y = obj_upgrade.y + 56
if global.cash >= global.cooldown_upgrade_value
{
	got_money = true;	
	//sprite_index = 
	image_alpha = 1;
}

else
{
	got_money = false;	
	//sprite_index = 
	image_alpha = 0.5
}

if global.cooldown_upgrade_level >= global.cooldown_upgrade_max_level
{
	can_buy = false;
	global.cooldown_upgrade_level = 4
}

if can_reduce
{
	image_xscale = lerp(image_xscale, 1, 0.08)
	image_yscale = lerp(image_yscale, 1, 0.08)
}

else
{
	image_xscale = lerp(image_xscale, 1.2, 0.1)
	image_yscale = lerp(image_yscale, 1.2, 0.1)
}