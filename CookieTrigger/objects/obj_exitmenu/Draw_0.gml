draw_set_font(font_hudBoldSmall)
draw_set_colour(c_white)
draw_set_valign(fa_center)
draw_set_halign(fa_middle)
draw_set_alpha(alpha)


if mouse_in
draw_set_colour(c_yellow)
else
draw_set_colour(c_white)
if global.current_language == language.en
{
if room == room_credits or room == room_settings
draw_text(x, y, "Return To Menu")
else if room == room_results
draw_text(x, y, "Return to Kitchen")
else
draw_text(x, y, "Exit")
}

else if global.current_language == language.ptbr
{
if room == room_credits or room == room_settings
draw_text(x, y, "Voltar Para o Menu")
else if room == room_results
draw_text(x, y, "Voltar Para a cozinha")
else
draw_text(x, y, "Sair")
}

draw_set_valign(-1)
draw_set_halign(-1)
draw_set_colour(c_white)
draw_set_alpha(1)