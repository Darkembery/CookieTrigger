can_spawn = false;
spawn_delay = 105
can_spawn_enemy2 = false;
number_of_spawns = 0;

alarm[0] = spawn_delay
alarm[1] = 3000

function spawn()
{
	var x_location = choose(-32, -64, 680, 660, 700)
	var y_location = choose(-32, - 64, 390, 400, 420)
	randomize();
	
	if (!can_spawn_enemy2)
	{
	instance_create_layer(x_location, y_location, "Enemys", obj_enemy1)
	show_debug_message("Inimigo 1 Spawnado.")
	}
	
	else
	{
	var spawn = irandom_range(1, 3)
	randomize();
	
	if spawn <= 2
	{
		instance_create_layer(x_location, y_location, "Enemys", obj_enemy1)	
		show_debug_message("Inimigo 1 Spawnado.")
	}
	
	else if spawn == 3
	{
		instance_create_layer(x_location, y_location, "Enemys", obj_enemy2)
		show_debug_message("Inimigo 2 Spawnado.")
		}
	}
}

function spawn_debug()
{
	show_debug_message("O Spawn Foi reduzido para: " + string(spawn_delay))	
	show_debug_message("O Spawn Foi reduzido para: " + string(spawn_delay))	
	show_debug_message("O Spawn Foi reduzido para: " + string(spawn_delay))	
	show_debug_message("O Spawn Foi reduzido para: " + string(spawn_delay))	
	show_debug_message("O Spawn Foi reduzido para: " + string(spawn_delay))	
	show_debug_message("O Spawn Foi reduzido para: " + string(spawn_delay))	
	show_debug_message("O Spawn Foi reduzido para: " + string(spawn_delay))	
	show_debug_message("O Spawn Foi reduzido para: " + string(spawn_delay))	
	show_debug_message("O Spawn Foi reduzido para: " + string(spawn_delay))	
	show_debug_message("O Spawn Foi reduzido para: " + string(spawn_delay))	
	
}