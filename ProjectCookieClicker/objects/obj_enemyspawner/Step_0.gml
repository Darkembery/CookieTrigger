//if spawn_delay > 0
//spawn_delay--

#region dificuldade aumentando de acordo com quantos inimigos foram spawnados.

if number_of_spawns >= 125
{
	spawn_delay =  65	
}
else if number_of_spawns == 100
{
	spawn_delay = 75	
}
else if number_of_spawns == 75
{
	spawn_delay = 80
}

else if number_of_spawns == 60
{
	spawn_delay = 90
}

else if number_of_spawns == 30
{
	spawn_delay = 95
}

else if number_of_spawns >= 15
{
	spawn_delay = 100
}

#endregion