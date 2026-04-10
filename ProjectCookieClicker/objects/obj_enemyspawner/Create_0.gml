can_spawn = false;
spawn_delay = 95;
can_spawn_enemy2 = false;
number_of_spawns = 0;

alarm[0] = spawn_delay
alarm[1] = 1200

function spawn()
{
	randomize();
	var x_location = choose(-32, -64, 680, 660, 700)
	var y_location = choose(-32, - 64, 390, 400, 420)
	
	if instance_number(obj_enemyall) < 15
	{
	if (!can_spawn_enemy2)
	{
	instance_create_layer(x_location, y_location, "Enemys", obj_enemy1)
	}
	
	else
	{
	var spawn = irandom_range(1, 2)
	randomize();
	
	if spawn == 1
	{
		instance_create_layer(x_location, y_location, "Enemys", obj_enemy1)	
	}
	
	else if spawn == 2
	{
		instance_create_layer(x_location, y_location, "Enemys", obj_enemy2)
				}
			}
		}
	}

function spawn_debug()
{
	
}