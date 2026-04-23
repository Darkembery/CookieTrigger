can_show = false;
alpha = 0;
if room == room_game
instance_create_layer(x, y, "HUD", obj_porta);
else
instance_create_layer(x, y, "Interact", obj_porta);