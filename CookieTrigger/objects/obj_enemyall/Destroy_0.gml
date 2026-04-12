if (!audio_is_playing(sfx_enemydeath))
audio_play_sound(sfx_enemydeath, 1, 0, global.volume)
var cookie_chance = irandom_range(1, 10)
var cookie_chance_long = choose(1, 4)
var cookie_chance_longasf = choose(1, 4, 1)

if global.time_alive <= 150
var cookie = cookie_chance

else if global.time_alive > 150
cookie = cookie_chance_long

else if global.time_alive >= 300
cookie = cookie_chance_longasf

if (cookie >= 4)
and global.cookies <= 3 
and global.cookies_existentes <= 2
and global.can_collect_cookies
{
if self != obj_enemy4
{
instance_create_layer(x, y, "Player", obj_cookie);
}
}

if global.timer > 0
{
if self != obj_enemy4
{
var points = instance_create_layer(x, y, "HUD", obj_timerpoints)
points.value = self.timer_reward
}
}