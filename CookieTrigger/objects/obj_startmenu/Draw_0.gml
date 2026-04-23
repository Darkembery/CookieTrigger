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
if (global.can_start_tutorial)
draw_text(x, y, "Start Game")
else
draw_text(x, y, "Continue Game")
}

else if global.current_language == language.ptbr
{
if (global.can_start_tutorial)
draw_text(x, y, "Jogar")
else
draw_text(x, y, "Continuar Jogo")
}

draw_set_valign(-1)
draw_set_halign(-1)
draw_set_colour(c_white)
draw_set_alpha(1)