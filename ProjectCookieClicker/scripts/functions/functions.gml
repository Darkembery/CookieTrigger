function start_game()
{
	global.timer = global.timer_start_value;
	global.bullets = global.bullets_per_cookie;
}

function screenshake(_value1, _value2)
{
	if !global.screen_shake_active exit
	if (!instance_exists(obj_screenshake))
	instance_create_layer(0, 0, "HUD", obj_screenshake)	
	
	obj_screenshake.shake_intensity = _value1;
	obj_screenshake.duration = _value2;
	
	if _value2 == 0
	_value2 = 5;
	
	if _value1 == 0
	_value1 = 3;
}

function reload()
{
	if (global.cookies > 0) and global.reload_cooldown == 0
	{
	global.bullets = global.bullets_per_cookie
	global.cookies--	
	}
}

function fade()
{
var _targetroom = argument0;
var _duration = argument1;
var _color = argument2;

var _instance = instance_create_layer(0,0, "Instances",obj_fade)

with (_instance)
{
	targetroom = _targetroom;
	duration = _duration;
	color = _color;	
	}
}
