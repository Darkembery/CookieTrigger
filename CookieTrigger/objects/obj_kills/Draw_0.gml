draw_set_font(font_hudBoldSmall)
draw_set_colour(#eef6ff)
draw_set_valign(fa_middle)
draw_set_halign(fa_center)

var kills = (global.enemy1_kills + global.enemy2_kills +
			 global.enemy3_kills + global.enemy4_kills)
			 
draw_text(x, y, "Total Kills: " + string(kills))

//draw_set_colour(#fcfc47)

draw_set_valign(-1)
draw_set_halign(-1)