function uthi:msg/warn {msg:'"Failed to find safe spawnpoint, recalculating spawn"'}
execute in abgrund:limbo_biome_map run function abgrund:mechanics/limbo_spawn/create_marker

data modify storage abgrund:temp banish.X set from storage abgrund:perma_storage limbo_spawn.X
data modify storage abgrund:temp banish.Z set from storage abgrund:perma_storage limbo_spawn.Z

execute in abgrund:limbo positioned 0 193 0 summon area_effect_cloud at @s run function abgrund:mechanics/banish/set_spawn with storage abgrund:temp banish