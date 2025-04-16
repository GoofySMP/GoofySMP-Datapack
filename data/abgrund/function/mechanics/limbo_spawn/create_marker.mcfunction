# from init
# in dimension abgrund:limbo_biome_map

#remove existing limbo_spawn data
data remove storage abgrund:perma_storage limbo_spawn
# Dev msg
tellraw @a[tag=uthi.dev] "Creating Limbo Spawn Marker"

scoreboard players set $attempt_success abg.attempts 0

execute in abgrund:limbo_biome_map run summon area_effect_cloud 0 0 0 {Tags:["abg.this"]}
execute as @e[type=area_effect_cloud,tag=abg.this] at @s run function abgrund:mechanics/limbo_spawn/find_lower_limbo