can_spawn = false;
spawn_delay = 80;
can_spawn_enemy2 = false;
can_spawn_enemy3 = false;
can_spawn_enemy4 = false;
number_of_spawns = 0;

alarm[0] = spawn_delay
alarm[1] = 1800
alarm[2] = 600
alarm[3] = 1200

function spawn() {
    var x_location = choose(-32, -64, 680, 660, 700);
    var y_location = choose(-32, -64, 390, 400, 420);
    
    var possible_enemies = [obj_enemy1];
    
    if (can_spawn_enemy2) array_push(possible_enemies, obj_enemy2);
    if (can_spawn_enemy3) array_push(possible_enemies, obj_enemy3);
    if (can_spawn_enemy4) array_push(possible_enemies, obj_enemy4);
   
    var enemy_to_spawn = possible_enemies[irandom(array_length(possible_enemies) - 1)];
    
	if (instance_number(obj_enemyall) < 25)
    instance_create_layer(x_location, y_location, "Enemys", enemy_to_spawn);
}

function spawn_debug()
{
	
}