draw_set_font(font_hudBoldSmall)
draw_set_valign(fa_middle)
draw_set_halign(fa_center)

if mouse_in
draw_set_colour(#fcfc47)
else
draw_set_colour(#eef6ff)

if global.current_language = language.en
draw_text(x, y, "Play Again")
else if global.current_language = language.ptbr
draw_text(x, y, "Jogar Denovo")

draw_set_valign(-1)
draw_set_halign(-1)