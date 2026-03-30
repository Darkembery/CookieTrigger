global.cookies++
instance_create_layer(x, y, "HUD", obj_cookieparticule);
instance_create_layer(x-1, y+1, "HUD", obj_cookieparticule);
instance_create_layer(x - 2, y+2, "HUD", obj_cookieparticule);
instance_create_layer(x + 1, y - 1, "HUD", obj_cookieparticule);
instance_create_layer(x+2, y - 2, "HUD", obj_cookieparticule);
instance_create_layer(x + 3, y -3 , "HUD", obj_cookieparticule);
instance_create_layer(x - 3, y + 3, "HUD", obj_cookieparticule);
instance_create_layer(x - 4, y + 4, "HUD", obj_cookieparticule);
instance_create_layer(x - 5, y + 5, "HUD", obj_cookieparticule);
instance_create_layer(x + 4, y - 4, "HUD", obj_cookieparticule);
instance_create_layer(x - 10, y + 5, "HUD", obj_cookieparticule);
instance_create_layer(x - 10, y + 10, "HUD", obj_cookieparticule);
instance_destroy();

