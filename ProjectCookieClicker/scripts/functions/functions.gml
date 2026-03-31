function start_game()
{
	global.timer = global.timer_start_value;
	global.enemy1_kills = 0
	global.enemy2_kills = 0;
}

function screenshake(_value)
{
	if (!instance_exists(obj_screenshake)) and global.screen_shake_active
	instance_create_layer(0, 0, "HUD", obj_screenshake)	
	obj_screenshake.shake_intensity = _value;
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
