if !global.can_click exit
if room == room_credits or room == room_settings
fastfade(room_startmenu, 15, c_black)
else
{
//game_end();
global.exit_trys++
instance_create_layer(x, y, "Instances", obj_webexit)
}

//global.exit_trys++
//instance_create_layer(x, y, "Instances", obj_webexit)