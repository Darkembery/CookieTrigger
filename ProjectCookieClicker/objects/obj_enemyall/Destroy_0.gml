var cookie_chance = irandom_range(1, 10)
var cookie_chance_long = choose(1, 2)

if obj_enemyspawner.number_of_spawns <= 150
var cookie = cookie_chance

else if obj_enemyspawner.number_of_spawns > 150
cookie = cookie_chance_long

if (cookie >= 3)
and global.cookies <= 3 
and global.cookies_existentes <= 2
and global.can_collect_cookies
{
instance_create_layer(x, y, "Player", obj_cookie);
}