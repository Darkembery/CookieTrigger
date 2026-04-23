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
if global.screen_shake_active
draw_text(x, y, "ScreenShake: Active")
else
draw_text(x, y, "Screenshake: Disabled")
}

else if global.current_language == language.ptbr
{
if global.screen_shake_active
draw_text(x, y, "Tremores de Tela: Ativado")
else
draw_text(x, y, "Tremores de Tela: Desativado")
}

draw_set_valign(-1)
draw_set_halign(-1)
