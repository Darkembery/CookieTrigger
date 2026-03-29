if timer_cooldown > 0
timer_cooldown--

else if timer_cooldown == 0
{
timer_cooldown = 60
global.timer--
}