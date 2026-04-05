image_xscale = 4.5;
image_yscale = 4.5;
can_go = true;
global.can_act = false;

var b_layer = instance_create_layer(0, 0, "Player", obj_layer )
var button_1 = instance_create_layer(x + 203 / 2, y + 96, "Instances", obj_buydamage)
var button_2 = instance_create_layer(x + 203, y + 96 * 2.5, "Instances", obj_buytimer)
var button_3 = instance_create_layer(x + 203 / 2 , y + 96 * 2.5 , "Instances", obj_buycooldown)
var button_4 = instance_create_layer(x + 203 , y + 96 , "Instances", obj_buycookies)
var button_text = instance_create_layer(512, 57, "Instances", obj_upgradetext)
var close_button = instance_create_layer(x + 4, y, "Instances", obj_closeupgrade)