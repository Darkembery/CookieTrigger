draw_set_font(font_hudBoldSmall)
draw_set_colour(c_white)
draw_set_valign(fa_center)
draw_set_halign(fa_middle)

if mouse_in
draw_set_colour(c_yellow)
else
draw_set_colour(c_white)

if global.current_language == language.en
{
if global.fullscreen
draw_text(x, y, "Fullscreen: Active")
else
draw_text(x, y, "Fullscreen: Disabled")
}

else if global.current_language == language.ptbr
{
if global.fullscreen
draw_text(x, y, "Tela Cheia: Ativada")
else
draw_text(x, y, "Tela Cheia: Desativada")
}

draw_set_valign(-1)
draw_set_halign(-1)
