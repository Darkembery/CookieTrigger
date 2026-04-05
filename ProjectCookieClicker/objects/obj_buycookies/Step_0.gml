x = obj_upgrade.x + 210
y = obj_upgrade.y + 96 
if global.cash >= global.ammopc_upgrade_value
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

if global.ammopc_upgrade_level >= global.ammopc_upgrade_max_level
{
	can_buy = false;
	global.ammopc_upgrade_level = 10
}

if can_reduce
{
	image_xscale = lerp(image_xscale, 1.5, 0.08)
	image_yscale = lerp(image_yscale, 1.5, 0.08)
}

else
{
	image_xscale = lerp(image_xscale, 1.7, 0.1)
	image_yscale = lerp(image_yscale, 1.7, 0.1)
}