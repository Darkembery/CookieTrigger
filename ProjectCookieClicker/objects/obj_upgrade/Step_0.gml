image_alpha = 1

if can_go
x = lerp(x, 353, 0.08)
else
{
x = lerp(x, 680, 0.08)
if instance_exists(obj_layer)
obj_layer.reduce = true;
instance_destroy(obj_upgradetext)
instance_destroy(obj_buydamage)
instance_destroy(obj_buycookies)
instance_destroy(obj_buycooldown)
instance_destroy(obj_buytimer)
}

if x >= 660 and !can_go
instance_destroy();

if keyboard_check_pressed(vk_escape) or keyboard_check_pressed(vk_backspace)
can_go = false;