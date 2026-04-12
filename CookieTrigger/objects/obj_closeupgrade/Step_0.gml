if instance_exists(obj_upgrade)
{
x = obj_upgrade.x + 4 
y = obj_upgrade.y + 4
}

else
{
instance_destroy()	
}

if (can_reduce)
{
if image_xscale != 1
image_xscale = lerp(image_xscale, 1, 0.1)

if image_yscale != 1
image_yscale = lerp(image_yscale, 1, 0.1)
}

else
{
if image_xscale != 1.3
image_xscale = lerp(image_xscale, 1.3, 0.1)

if image_yscale != 1.3
image_yscale = lerp(image_yscale, 1.3, 0.1)	
}
