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
#endregion

#region Código do tiro, e angulo igual ao player, se puder. (Thanks to ReverseTowerDefense)
if (instance_exists(obj_player))
{
var dir_target = point_direction(x, y, obj_player.x, obj_player.y);
var diff = angle_difference(dir_target, image_angle);
image_angle += diff * 0.05;    
last_angle = image_angle;

if (obj_player > x) 
{
    image_yscale = 2.2;
} 

else
{
    image_yscale = -2.2;
}

if instance_exists(owner)
{
if owner.flashing
sprite_index = spr_enemy2gunhit
else
sprite_index = spr_enemy2gun
}

if (can_aim)
{
if can_shoot
{
	shoot_cooldown = irandom_range(60, 90)
	if (!audio_is_playing(sfx_enemygun))
	audio_play_sound(sfx_enemygun, 1, 0, global.volume - 0.15)

//segue monstro
var dist = 12; 
var bx = x - 10 + lengthdir_x(dist, dir_target); 
var by = y + lengthdir_y(dist, dir_target); 

//atira    
var b = instance_create_layer(bx, by, "Bullets", obj_enemy2bullet);
b.direction = dir_target;
b.speed = 5;
b.image_angle = dir_target;
b.owner = id;
		}
	}
}

#endregion

