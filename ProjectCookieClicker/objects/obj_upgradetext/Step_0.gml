button1_sel = obj_buydamage.selected
button2_sel = obj_buytimer.selected
button3_sel = obj_buycooldown.selected
button4_sel = obj_buycookies.selected

if (button1_sel) or (button2_sel)
or (button3_sel) or (button4_sel)
{
	can_show = true;
}

else
{
	can_show = false;
}

if can_show
{
	alpha = lerp(alpha, 1, 0.1)	
}

else
{
	alpha = lerp(alpha, 0, 0.11)	
}

