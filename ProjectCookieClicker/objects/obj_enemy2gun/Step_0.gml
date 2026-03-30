#region cooldowns e se o dono existe mais detecção da movimentação do player, assim mudando a escala
if shoot_cooldown > 0
{
shoot_cooldown--
can_shoot = false;
}

if shoot_cooldown == 0
can_shoot = true;

if (instance_exists(owner))
{
x = owner.x
y = owner.y
}

else if (!instance_exists(owner))
{
instance_destroy(self);
}

if obj_player.x >= x + 16
image_xscale = 1

else if obj_player.x <= x - 16
image_xscale = -1
#endregion

#region Código do tiro, e angulo igual ao player, se puder. (Thanks to ReverseTowerDefense)
if (instance_exists(obj_player))
{
var dir_target = point_direction(x, y, obj_player.x, obj_player.y);
var diff = angle_difference(dir_target, image_angle);
image_angle += diff * 0.1;    
last_angle = image_angle;

if (can_aim)
{
if can_shoot
{
	shoot_cooldown = 40;

//segue monstro
var dist = 12; 
var bx = x - 10 + lengthdir_x(dist, dir_target); 
var by = y + lengthdir_y(dist, dir_target); 

//atira    
var b = instance_create_layer(bx, by, "Bullets", obj_enemy2bullet);
b.direction = dir_target;
b.speed = 6;
b.image_angle = dir_target;
b.owner = id;
		}
	}
}

#endregion

