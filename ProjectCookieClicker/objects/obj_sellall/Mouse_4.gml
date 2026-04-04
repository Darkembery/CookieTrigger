if (global.enemy1_kills > 0)
{
var sell_value = global.enemy1_kills * global.enemy1_value
global.cash += sell_value;
global.enemy1_kills = 0;
show_debug_message("Venda realizada! Você ganhou: " + string(sell_value));
total_earned += sell_value;
sell = true;
can_play = true;
if (!instance_exists(obj_fadeout_white))
{
var fad = instance_create_layer(0,0,"Instances", obj_fadeout_white)
fad.image_blend = c_green
}
//if (!audio_is_playing(sfx_purchase_sucess))
	//audio_play_sound(sfx_purchase_sucess, 1, 0)
}

else 
{
	if (!audio_is_playing(sfx_purchaseerror))
	audio_play_sound(sfx_purchaseerror, 1, 0)
    show_debug_message("Nenhum inimigo para vender.");
}

if (global.enemy2_kills > 0)
{
var sell_value = global.enemy2_kills * global.enemy2_value
global.cash += sell_value;
global.enemy2_kills = 0;
show_debug_message("Venda realizada! Você ganhou: " + string(sell_value));
total_earned += sell_value
sell = true;
can_play = true;
if (!instance_exists(obj_fadeout_white))
{
var fad = instance_create_layer(0,0,"Instances", obj_fadeout_white)
fad.image_blend = c_green
}

//if (!audio_is_playing(sfx_purchase_sucess))
	//audio_play_sound(sfx_purchase_sucess, 1, 0)
}

else 
{
	if (!audio_is_playing(sfx_purchaseerror))
	audio_play_sound(sfx_purchaseerror, 1, 0)
	sell = false;
	
    show_debug_message("Nenhum inimigo para vender.");
}

if sell
{
var earn = instance_create_layer(obj_cash.x, obj_cash.y + 32, "Instances", obj_earn)
earn.value = total_earned
}

if can_play
{
	if !audio_is_playing(sfx_purchasesucess)
	audio_play_sound(sfx_purchasesucess, 1, 0, global.volume)
}
