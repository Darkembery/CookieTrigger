if global.pause exit
draw_set_font(font_hudBoldBig)
draw_set_colour(c_white)
draw_set_alpha(alpha)
draw_set_valign(fa_center)
draw_set_halign(fa_middle)

if global.current_language = language.en
{
if (can_show) and room == room_game
{
	 draw_text(view_wport / 2, view_hport / 2 + 128, "Press E to return to the kitchen");
}

else if (!can_show) and room == room_game
{
    draw_text(view_wport / 2, view_hport / 2 + 128, "Press E to return to the kitchen");
}

else if (can_show) and room == room_kitchen
{	
	draw_text(view_wport / 2, view_hport / 2 + 128, "Press 'E' to return to the Arena")	
}

else if (!can_show) and room == room_kitchen
{
	draw_text(view_wport / 2, view_hport / 2 + 128, "Press 'E' to return to the Arena")	
	}
}

else if global.current_language = language.ptbr
{
	if (can_show) and room == room_game
{
	 draw_text(view_wport / 2, view_hport / 2 + 128, "Aperte 'E' Para Voltar Para a Cozinha");
}

else if (!can_show) and room == room_game
{
    draw_text(view_wport / 2, view_hport / 2 + 128, "Aperte 'E' Para Voltar Para a Cozinha");
}

else if (can_show) and room == room_kitchen
{	
	draw_text(view_wport / 2, view_hport / 2 + 128, "Aperte 'E' Para voltar para a Arena")	
}

else if (!can_show) and room == room_kitchen
{
	draw_text(view_wport / 2, view_hport / 2 + 128, "Aperte 'E' Para voltar para a Arena")	
	}
}
draw_set_alpha(1)
draw_set_valign(-1)
draw_set_halign(-1)

