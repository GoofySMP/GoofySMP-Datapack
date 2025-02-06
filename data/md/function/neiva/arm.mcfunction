
#correcting rotation
data modify entity @s Rotation set from entity @p Rotation

# effect
execute as @p at @s anchored eyes run function md:effect/neiva/sound_ring/begining

#Dev particles
execute as @p at @s anchored eyes run function md:dev/cast_particles

#check if reinforced
execute if predicate md:reinforced_projectile run function md:neiva/fire_bolt
execute unless predicate md:reinforced_projectile run function md:neiva/break_bolt