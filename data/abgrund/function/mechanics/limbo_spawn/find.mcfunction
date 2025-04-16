# Finding limbo origin
scoreboard objectives add abg.attempts dummy
execute in abgrund:limbo_biome_map run function uthi:utils/forceload {X:0,Z:0}

execute in abgrund:limbo_biome_map run schedule function abgrund:mechanics/limbo_spawn/create_marker 1t