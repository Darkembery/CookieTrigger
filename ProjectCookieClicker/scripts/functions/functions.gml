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
    ini_open("save.init");

    // Cooldown
    ini_write_real("cooldown_upgrade", "level", global.cooldown_upgrade_level);
    ini_write_real("cooldown_upgrade", "max_level", global.cooldown_upgrade_max_level);
    ini_write_real("cooldown_upgrade", "value", global.cooldown_upgrade_value);
    ini_write_real("cooldown_upgrade", "cooldown", global.fire_cooldown_max);

    // Tempo (Timer)
    ini_write_real("timer_upgrade", "level", global.timer_upgrade_level);
    ini_write_real("timer_upgrade", "max_level", global.timer_upgrade_max_level);
    ini_write_real("timer_upgrade", "value", global.timer_upgrade_value);
    ini_write_real("timer_upgrade", "timer", global.timer_start_value);

    // Munição (Ammo)
    ini_write_real("ammo_upgrade", "level", global.ammopc_upgrade_level);
    ini_write_real("ammo_upgrade", "max_level", global.ammopc_upgrade_max_level);
    ini_write_real("ammo_upgrade", "value", global.ammopc_upgrade_value);
    ini_write_real("ammo_upgrade", "cookies", global.bullets_per_cookie);

    // Dano
    ini_write_real("damage_upgrade", "level", global.damage_upgrade_level);
    ini_write_real("damage_upgrade", "max_level", global.damage_upgrade_max_level);
    ini_write_real("damage_upgrade", "value", global.damage_upgrade_value);
    ini_write_real("damage_upgrade", "damage", global.damage);

    // Tutorial e Gameplay
    ini_write_real("tutorial", "tutorial_1", global.can_start_tutorial);
    ini_write_real("timer_gameplay", "highscore", global.highest_time_alive);
	ini_write_real("cash", "current_cash", global.cash);
	ini_write_real("Enemys", "Enemy1", global.enemy1_kills);
	ini_write_real("Enemys", "Enemy2", global.enemy2_kills);
	
	//Options
	ini_write_real("Options", "ScreenShake", global.screen_shake_active);
	ini_write_real("Options", "Volume", global.volume);
	
    ini_close();
}

function scr_load_all()
{
    if (file_exists("save.init"))
    {
        ini_open("save.init");
        
        // Cooldown
        global.cooldown_upgrade_level     = ini_read_real("cooldown_upgrade", "level", 1);
        global.cooldown_upgrade_max_level = ini_read_real("cooldown_upgrade", "max_level", 10);
        global.cooldown_upgrade_value     = ini_read_real("cooldown_upgrade", "value", 45);
        global.fire_cooldown_max          = ini_read_real("cooldown_upgrade", "cooldown", 25);
        
        // Timer
        global.timer_upgrade_level        = ini_read_real("timer_upgrade", "level", 1);
        global.timer_upgrade_max_level    = ini_read_real("timer_upgrade", "max_level", 10);
        global.timer_upgrade_value        = ini_read_real("timer_upgrade", "value", 50);
        global.timer_start_value          = ini_read_real("timer_upgrade", "timer", 25);
        
        // Ammo
        global.ammopc_upgrade_level       = ini_read_real("ammo_upgrade", "level", 1);
        global.ammopc_upgrade_max_level   = ini_read_real("ammo_upgrade", "max_level", 10);
        global.ammopc_upgrade_value       = ini_read_real("ammo_upgrade", "value", 40);
        global.bullets_per_cookie         = ini_read_real("ammo_upgrade", "cookies", 30);
        
        // Damage
        global.damage_upgrade_level       = ini_read_real("damage_upgrade", "level", 1);
        global.damage_upgrade_max_level   = ini_read_real("damage_upgrade", "max_level", 10);
        global.damage_upgrade_value       = ini_read_real("damage_upgrade", "value", 45);
        global.damage                     = ini_read_real("damage_upgrade", "damage", 10);
        
        // Tutorial e Gameplay
        global.can_start_tutorial         = ini_read_real("tutorial", "tutorial_1", 1);
        global.highest_time_alive         = ini_read_real("timer_gameplay", "highscore", 0);
		global.cash						  =	ini_read_real("cash", "current_cash", 0);
		global.enemy1_kills				  = ini_read_real("Enemys", "Enemy1", 0);
		global.enemy2_kills				  = ini_read_real("Enemys", "Enemy2", 0);
		
		//options
		global.screen_shake_active		  = ini_read_real("Options", "ScreenShake", true)
		global.volume					  = ini_read_real("Options", "Volume", 1)
        
        ini_close();
    }
    else
    {

        scr_save_all(); 
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

