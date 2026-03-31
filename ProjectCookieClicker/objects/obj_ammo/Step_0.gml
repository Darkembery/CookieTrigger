#region limitador de cookies
if global.cookies >= 3
{
	global.cookies = 3
	global.can_collect_cookies = false;
	instance_destroy(obj_cookie)
}

else if global.cookies == 2 and global.cookies_existentes < 2
{
	global.can_collect_cookies = true;	
}

else if global.cookies == 3 and global.cookies_existentes > 0
{
	instance_destroy(obj_cookie)	
}

show_debug_message("Tempo de Spawn: " + string(obj_enemyspawner.spawn_delay) +
				  "| Cookies Existentes: " + string(global.cookies_existentes) + 
				  " | Inimigos Spawnados: " + string(obj_enemyspawner.number_of_spawns))
#endregion