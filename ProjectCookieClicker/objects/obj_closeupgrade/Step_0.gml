x = obj_upgrade.x 
y = obj_upgrade.y
image_alpha = 1;

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
