can_show = false;
alpha = 0;
text = irandom_range(1, 10000)
if room == room_game
instance_create_layer(x, y, "HUD", obj_porta);
else
instance_create_layer(x, y, "Interact", obj_porta);