execute as @n[type=#md:mobs] if entity @s[type=player] run tag @s add md.shotSource
tellraw @a[tag=gf.dev] ["Identified [",{"selector":"@n[tag=md.shotSource]"},"] as source for Railing"]

execute if entity @n[tag=md.shotSource] run function md:neiva/arm
