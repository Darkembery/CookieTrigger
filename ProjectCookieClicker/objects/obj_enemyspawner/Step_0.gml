//if spawn_delay > 0
//spawn_delay--

#region dificuldade aumentando de acordo com quantos inimigos foram spawnados.

if number_of_spawns >= 150
{
	spawn_delay = 50	
}
else if number_of_spawns == 125
{
	spawn_delay = 60	
}
else if number_of_spawns == 100
{
	spawn_delay =  65	
}
else if number_of_spawns == 75
{
	spawn_delay = 75	
}
else if number_of_spawns == 50
{
	spawn_delay = 80
}

else if number_of_spawns == 25
{
	spawn_delay = 90
}


#endregion