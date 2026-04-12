if (global.enemy1_kills > 0)
{
var sell_value = global.enemy1_kills * global.enemy1_value
global.cash += sell_value;
global.enemy1_kills = 0;
total_earned += sell_value;
sell = true;
can_play = true;
if (!instance_exists(obj_fadeout_white))
{
var fad = instance_create_layer(0,0,"Instances", obj_fadeout_white)
fad.image_blend = c_green
}
}

if (global.enemy2_kills > 0)
{
var sell_value = global.enemy2_kills * global.enemy2_value
global.cash += sell_value;
global.enemy2_kills = 0;
total_earned += sell_value
sell = true;
can_play = true;
if (!instance_exists(obj_fadeout_white))
{
var fad = instance_create_layer(0,0,"Instances", obj_fadeout_white)
fad.image_blend = c_green
}
}

if (global.enemy3_kills > 0)
{
var sell_value = global.enemy3_kills * global.enemy3_value
global.cash += sell_value;
global.enemy3_kills = 0;
total_earned += sell_value;
sell = true;
can_play = true;
if (!instance_exists(obj_fadeout_white))
{
var fad = instance_create_layer(0,0,"Instances", obj_fadeout_white)
fad.image_blend = c_green
}
}

if (global.enemy4_kills > 0)
{
var sell_value = global.enemy4_kills * global.enemy4_value
global.cash += sell_value;
global.enemy4_kills = 0;
total_earned += sell_value;
sell = true;
can_play = true;
if (!instance_exists(obj_fadeout_white))
{
var fad = instance_create_layer(0,0,"Instances", obj_fadeout_white)
fad.image_blend = c_green
}
}

if sell
{
var earn = instance_create_layer(obj_cash.x, obj_cash.y + 32, "Instances", obj_earn)
earn.value = total_earned
sell = false;
}

if can_play
{
	if !audio_is_playing(sfx_purchasesucess)
	audio_play_sound(sfx_purchasesucess, 1, 0, global.volume)
}