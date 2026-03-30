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
	var spawn = choose(1, 2)
	randomize();
	
	if spawn == 1
	{
		instance_create_layer(x_location, y_location, "Enemys", obj_enemy1)	
		show_debug_message("Inimigo 1 Spawnado.")
	}
	
	else if spawn == 2
	{
		instance_create_layer(x_location, y_location, "Enemys", obj_enemy2)
		show_debug_message("Inimigo 2 Spawnado.")
		}
	}
}