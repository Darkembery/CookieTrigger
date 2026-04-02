if global.pause exit
if (place_meeting(x, y, obj_player))
{
	can_show = true;
	alpha = lerp(alpha, 1, 0.1)
}

else
{
	can_show = false;	
	alpha = lerp(alpha, 0, 0.08)
}

if keyboard_check_pressed(ord("E")) and can_show
	{
		show_options = true;
		global.can_act = false;
	}	

if can_show and show_options
{
	instance_create_layer(320, 180, "Instances", obj_sellall);
	instance_create_layer(320, 235, "Instances", obj_nothing);
}

if keyboard_check_pressed(vk_backspace) or keyboard_check_pressed(vk_escape)
{
	global.can_act = true;
	show_options = false;
	
	if instance_exists(obj_sellall)
	instance_destroy(obj_sellall)
	
	if instance_exists(obj_nothing)
	instance_destroy(obj_nothing)
	
}

if (instance_exists(obj_cookiehand))
instance_destroy(obj_cookiehand)