var cookie_chance = irandom_range(1, 10)

if (cookie_chance >= 3)
and global.cookies <= 3 
and global.cookies_existentes <= 2
and global.can_collect_cookies
{
instance_create_layer(x, y, "Player", obj_cookie);
show_debug_message("Existem: " + string(global.cookies_existentes) + " Cookies.");
show_debug_message("Existem: " + string(global.cookies_existentes) + " Cookies.");
show_debug_message("Existem: " + string(global.cookies_existentes) + " Cookies.");
show_debug_message("Existem: " + string(global.cookies_existentes) + " Cookies.");
show_debug_message("Existem: " + string(global.cookies_existentes) + " Cookies.");
show_debug_message("Existem: " + string(global.cookies_existentes) + " Cookies.");
}