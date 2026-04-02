image_xscale = 4;
image_yscale = 4;
can_go = true;
global.can_act = false;

var button_1 = instance_create_layer(x + 64, y + 86, "Instances", obj_buydamage)
var button_2 = instance_create_layer(x + 64, y + 86 * 2.5, "Instances", obj_buytimer)
var button_3 = instance_create_layer(x + 64 * 3, y + 86 , "Instances", obj_buycooldown)
var button_4 = instance_create_layer(x + 64 * 2, y + 86 * 2.5 , "Instances", obj_buycookies)
var button_text = instance_create_layer(512, 57, "Instances", obj_upgradetext)