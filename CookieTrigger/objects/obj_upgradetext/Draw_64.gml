draw_set_font(font_hudBoldBig)
draw_set_valign(fa_center)
draw_set_halign(fa_middle)
draw_set_colour(c_white)
draw_set_alpha(alpha)
if can_show
{
draw_set_colour(c_white);

if global.current_language = language.en
{
if (button1_sel)
{
draw_set_valign(fa_center)
draw_set_halign(fa_middle)
draw_set_colour(c_yellow)
    draw_text(view_wport / 2 - 300, view_hport - 512, "Weapon Damage");
draw_set_colour(c_white)
    draw_text(view_wport / 2 - 300, view_hport - 380 , "Increases the\nweapon's damage.");
	if global.damage_upgrade_level < 12
	draw_text(view_wport / 2 - 300, view_hport - 270, string(global.damage) + " -> " + string(global.damage + 1.2))
	else
	{
	draw_set_colour(c_yellow)
	draw_text(view_wport / 2 - 300, view_hport - 270, "Max")
	
	}
			if (global.damage_upgrade_level >= global.damage_upgrade_max_level)
draw_text(view_wport / 2 - 300, view_hport - 200, "Max Level")
else
draw_text(view_wport / 2 - 300, view_hport - 200, "Price: " + format_number(obj_buydamage.value))

}

else if (button2_sel) 
{
draw_set_valign(fa_center)
draw_set_halign(fa_middle)
draw_set_colour(c_yellow)
    draw_text(view_wport / 2 - 300, view_hport - 512, "Arena Time");
draw_set_colour(c_white)
    draw_text(view_wport / 2 - 300, view_hport - 380, "Increases the\nArena time.");
	
	if global.timer_upgrade_level < 12
	draw_text(view_wport / 2 - 300, view_hport - 270, string(global.timer_start_value) + " -> " + string(global.timer_start_value + 4)) 
	else
	{
	draw_set_colour(c_yellow)
	draw_text(view_wport / 2 - 300, view_hport - 270, "Max")
	}
		if (global.timer_upgrade_level >= global.timer_upgrade_max_level)
draw_text(view_wport / 2 - 300, view_hport - 200, "Max Level")
else
draw_text(view_wport / 2 - 300, view_hport - 200, "Price: " + format_number(obj_buytimer.value))
} 
else if (button3_sel) 
{
draw_set_valign(fa_center)
draw_set_halign(fa_middle)
draw_set_colour(c_yellow)
    draw_text(view_wport / 2 - 300, view_hport - 512, "Shot Cooldown");
draw_set_colour(c_white)
    draw_text(view_wport / 2 - 300, view_hport - 380, "Reduces the\nshot cooldown.");
	if global.cooldown_upgrade_level < 12
	draw_text(view_wport / 2 - 300, view_hport - 270, string(global.fire_cooldown_max) + " -> " + 
	string(global.fire_cooldown_max - 1.8))
	else
	{
	draw_set_colour(c_yellow)
	draw_text(view_wport / 2 - 300, view_hport - 270, "Max")
	}
	
	if (global.cooldown_upgrade_level >= global.cooldown_upgrade_max_level)
draw_text(view_wport / 2 - 300, view_hport - 200, "Max Level")
else
draw_text(view_wport / 2 - 300, view_hport - 200, "Price: " + format_number(obj_buycooldown.value))
} 
else if (button4_sel) 
{
draw_set_valign(fa_center)
draw_set_halign(fa_middle)
    draw_set_colour(#180501); 
    draw_text(view_wport / 2 - 300, view_hport - 512,"Cookies!");
	draw_set_colour(c_white)
    draw_text(view_wport / 2 - 300, view_hport - 380,"Increases the ammo\nper cookie.");
	if global.ammopc_upgrade_level < 12
	draw_text(view_wport / 2 - 300, view_hport - 270, string(global.bullets_per_cookie) + " -> "  + string(global.bullets_per_cookie + 5))
	else
	{
	draw_set_colour(c_yellow)
	draw_text(view_wport / 2 - 300, view_hport - 270, "Max")
		}
				if (global.ammopc_upgrade_level >= global.ammopc_upgrade_max_level)
draw_text(view_wport / 2 - 300, view_hport - 200, "Max Level")
else
draw_text(view_wport / 2 - 300, view_hport - 200, "Price: " + format_number(obj_buycookies.value))
		}
	}

else if global.current_language = language.ptbr
{
if (button1_sel)
{
draw_set_valign(fa_center)
draw_set_halign(fa_middle)
draw_set_colour(c_yellow)
    draw_text(view_wport / 2 - 300, view_hport - 512, "Dano da Arma");
draw_set_colour(c_white)
    draw_text(view_wport / 2 - 300, view_hport - 380 , "Aumenta o\nDano da Arma.");
	if global.damage_upgrade_level < 12
	draw_text(view_wport / 2 - 300, view_hport - 270, string(global.damage) + " -> " + string(global.damage + 1.2))
	else
	{
	draw_set_colour(c_yellow)
	draw_text(view_wport / 2 - 300, view_hport - 270, "Máximo")
	
	}
			if (global.damage_upgrade_level >= global.damage_upgrade_max_level)
draw_text(view_wport / 2 - 300, view_hport - 200, "Nível Máximo")
else
draw_text(view_wport / 2 - 300, view_hport - 200, "Preço: " + format_number(obj_buydamage.value))

}

else if (button2_sel) 
{
draw_set_valign(fa_center)
draw_set_halign(fa_middle)
draw_set_colour(c_yellow)
    draw_text(view_wport / 2 - 300, view_hport - 512, "Tempo na Arena");
draw_set_colour(c_white)
    draw_text(view_wport / 2 - 300, view_hport - 380, "Aumenta o Tempo\nInicial na Arena");
	
	if global.timer_upgrade_level < 12
	draw_text(view_wport / 2 - 300, view_hport - 270, string(global.timer_start_value) + " -> " + string(global.timer_start_value + 4)) 
	else
	{
	draw_set_colour(c_yellow)
	draw_text(view_wport / 2 - 300, view_hport - 270, "Máximo")
	}
		if (global.timer_upgrade_level >= global.timer_upgrade_max_level)
draw_text(view_wport / 2 - 300, view_hport - 200, "Nível Máximo")
else
draw_text(view_wport / 2 - 300, view_hport - 200, "Preço: " + format_number(obj_buytimer.value))
} 
else if (button3_sel) 
{
draw_set_valign(fa_center)
draw_set_halign(fa_middle)
draw_set_colour(c_yellow)
    draw_text(view_wport / 2 - 300, view_hport - 512, "Velocidade do Disparo");
draw_set_colour(c_white)
    draw_text(view_wport / 2 - 300, view_hport - 380, "Reduz a \nVelocidade do Disparo");
	if global.cooldown_upgrade_level < 12
	draw_text(view_wport / 2 - 300, view_hport - 270, string(global.fire_cooldown_max) + " -> " + 
	string(global.fire_cooldown_max - 1.8))
	else
	{
	draw_set_colour(c_yellow)
	draw_text(view_wport / 2 - 300, view_hport - 270, "Máximo")
	}
	
	if (global.cooldown_upgrade_level >= global.cooldown_upgrade_max_level)
draw_text(view_wport / 2 - 300, view_hport - 200, "Nível Máximo")
else
draw_text(view_wport / 2 - 300, view_hport - 200, "Preço: " + format_number(obj_buycooldown.value))
} 
else if (button4_sel) 
{
draw_set_valign(fa_center)
draw_set_halign(fa_middle)
    draw_set_colour(#180501); 
    draw_text(view_wport / 2 - 300, view_hport - 512,"Cookies!");
	draw_set_colour(c_white)
    draw_text(view_wport / 2 - 300, view_hport - 380,"Aumenta a Munição\npor Cookie.");
	if global.ammopc_upgrade_level < 12
	draw_text(view_wport / 2 - 300, view_hport - 270, string(global.bullets_per_cookie) + " -> "  + string(global.bullets_per_cookie + 5))
	else
	{
	draw_set_colour(c_yellow)
	draw_text(view_wport / 2 - 300, view_hport - 270, "Máximo")
		}
				if (global.ammopc_upgrade_level >= global.ammopc_upgrade_max_level)
draw_text(view_wport / 2 - 300, view_hport - 200, "Nível Máximo")
else
draw_text(view_wport / 2 - 300, view_hport - 200, "Preço: " + format_number(obj_buycookies.value))
		}
	}
}
draw_set_colour(c_white)
draw_set_valign(-1)
draw_set_halign(-1)
draw_set_alpha(1)