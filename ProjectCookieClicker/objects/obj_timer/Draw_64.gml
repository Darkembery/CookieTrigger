draw_self();
draw_set_font(font_hudBold)
draw_set_colour(c_white)

if (global.debug)
{
draw_text(20, 20, "Inimigos 1 Mortos: " + string(global.enemy1_kills))
draw_text(20, 60, "Inimigos 2 Mortos: " + string(global.enemy2_kills))
draw_text(20, 100, "Tempo Passado: " + string(global.time_alive))
draw_text(20, 140, "Tempo Máximo: " + string(global.highest_time_alive))
}

draw_set_font(font_hudBoldBig)
if global.timer > 0
draw_text(view_wport / 2 - 200, view_hport / 2 - 300,
		 "Hunting Timer: " + string(global.timer))
		 
else
draw_text(view_wport / 2 - 200, view_hport / 2 - 300,
		 "Time to Leave!")

