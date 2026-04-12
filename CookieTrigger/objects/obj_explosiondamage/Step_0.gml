if instance_exists(owner)
{
x = owner.x
y = owner.y
damage = owner.damage_to_player
}
else
{
instance_destroy(self)	
}