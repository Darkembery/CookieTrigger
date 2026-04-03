//if spawn_delay > 0
//spawn_delay--

#region dificuldade aumentando de acordo com quantos inimigos foram spawnados.
if number_of_spawns >= 160
{
	spawn_delay = 40
}

else if number_of_spawns == 150
{
	spawn_delay = 55	
}
else if number_of_spawns == 125
{
	spawn_delay = 60	
}
else if number_of_spawns == 100
{
	spawn_delay =  65	
}
else if number_of_spawns == 55
{
	spawn_delay = 75	
}
else if number_of_spawns == 35
{
	spawn_delay = 80
}

else if number_of_spawns == 15
{
	spawn_delay = 90
}


#endregion