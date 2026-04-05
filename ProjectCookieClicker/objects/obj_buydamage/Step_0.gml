x = obj_upgrade.x + 75
y = obj_upgrade.y + 96

if global.cash >= global.damage_upgrade_value
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

if global.damage_upgrade_level >= global.damage_upgrade_max_level
{
	can_buy = false;
	global.damage_upgrade_level = 10
}

if can_reduce
{
	image_xscale = lerp(image_xscale, 1.8, 0.08)
	image_yscale = lerp(image_yscale, 1.8, 0.08)
}

else
{
	image_xscale = lerp(image_xscale, 2, 0.1)
	image_yscale = lerp(image_yscale, 2, 0.1)
}