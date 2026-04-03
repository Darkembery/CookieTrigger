function start_game()
{
	global.timer = global.timer_start_value;
	global.bullets = global.bullets_per_cookie;
	if global.cookies > 0
	global.cookies = 0;
	global.can_collect_cookies = true;
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

var _instance = instance_create_layer(0,0, "Instances",obj_slowfade)

with (_instance)
{
	targetroom = _targetroom;
	duration = _duration;
	color = _color;	
	}
}

function fastfade()
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

function scr_save_all()
{
	if (file_exists("save.init")) file_delete("save.init")
	
	ini_open("save.init");
//lembrando real pra float, int, bool etc
//string pra textos. mas acho q quase nunca vai ser usado.

//cooldown
ini_write_real("cooldown_upgrade", "cooldown_upgrade_level", global.cooldown_upgrade_level)
ini_write_real("cooldown_upgrade", "cooldown_upgrade_max_level", global.cooldown_upgrade_max_level)
ini_write_real("cooldown_upgrade", "cooldown_upgrade_value", global.cooldown_upgrade_value)
ini_write_real("cooldown_upgrade", "cooldown", global.fire_cooldown_max)

//tempo
ini_write_real("timer_upgrade", "timer_upgrade_level", global.timer_upgrade_level)
ini_write_real("timer_upgrade", "timer_upgrade_max_level", global.timer_upgrade_max_level)
ini_write_real("timer_upgrade", "timer_upgrade_value", global.timer_upgrade_value)
ini_write_real("timer_upgrade", "timer", global.timer_upgrade_level)

//munição
ini_write_real("ammo_upgrade", "ammo_upgrade_level", global.ammopc_upgrade_level)
ini_write_real("ammo_upgrade", "ammo_upgrade_max_level", global.ammopc_upgrade_max_level)
ini_write_real("ammo_upgrade", "ammo_upgrade_value", global.ammopc_upgrade_value)
ini_write_real("ammo_upgrade", "ammo_cookies", global.bullets_per_cookie)

//dano
ini_write_real("damage_upgrade", "damage_upgrade_level", global.damage_upgrade_level)
ini_write_real("damage_upgrade", "damage_upgrade_max_level", global.damage_upgrade_max_level)
ini_write_real("damage_upgrade", "damage_upgrade_value", global.damage_upgrade_value)
ini_write_real("damage_upgrade", "damage_damage", global.damage)

	ini_close();

}

function scr_load_all()
{
	
	if file_exists("save.init")
	{
	
	}
}

function format_number(_value)
{
    var suffixes = ["", "K", "M", "B", "T", 
					"Qa", "Qi", "Se", "Sp", 
					"Oc", "No", "De", "Infinity"];
    var v = _value;
    var index = 0;

    while (v >= 1000 && index < array_length(suffixes) - 1)
    {
        v /= 1000;
        index++;
    }

    return string_format(v, 0, 1) + suffixes[index];
}

