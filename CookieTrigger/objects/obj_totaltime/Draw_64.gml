draw_set_font(font_hudBoldBig)
draw_set_valign(fa_middle)
draw_set_halign(fa_center)
draw_set_colour(#eef6ff)

var m = global.time_alive div 60;
var s = global.time_alive mod 60;
var m2 = global.highest_time_alive div 60;
var s2 = global.highest_time_alive mod 60;

var _str_s = (s < 10) ? "0" + string(s) : string(s);
var _time = string(m) + ":" + _str_s;

var _str_s2 = (s2 < 10) ? "0" + string(s2) : string(s2);
var _time2 = string(m2) + ":" + _str_s2;

draw_text(view_wport / 2, view_hport / 2 - 256, "Time Survived:")
draw_set_colour(#fcfc47)
draw_text(view_wport / 2, view_hport / 2 - 196, _time)
draw_set_colour(#eef6ff)
draw_text(view_wport / 2, view_hport / 2 - 116, "Survived Time Record: ")
draw_set_colour(#fcfc47)
draw_text(view_wport / 2, view_hport / 2 - 116 + 60, _time2);

draw_set_valign(-1)
draw_set_halign(-1)