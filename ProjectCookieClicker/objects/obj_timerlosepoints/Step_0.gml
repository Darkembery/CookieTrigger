vspeed -= 0.1
alpha = lerp(alpha, 0, 0.05)

if alpha == 0
instance_destroy();