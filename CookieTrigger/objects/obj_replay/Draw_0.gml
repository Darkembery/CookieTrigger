draw_set_font(font_hudBoldSmall)
draw_set_valign(fa_middle)
draw_set_halign(fa_center)

if mouse_in
draw_set_colour(#fcfc47)
else
draw_set_colour(#eef6ff)

draw_text(x, y, "Play Again")

draw_set_valign(-1)
draw_set_halign(-1)