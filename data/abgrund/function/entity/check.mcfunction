# from clocks/main
# @s: entity
# REMOVE ANYTHING IN FORCELOADED CHUNK
execute positioned 0 192 0 as @s[predicate=abgrund:dimension/limbo,dx=14,dz=14,dy= 1000,type=#uthi:mobs_no_player] run function uthi:functions/delete

execute as @s[type=zombie,predicate=abgrund:biome/sable_plains] if score %limbo_creature abg.mob_caps < $creature_max uthi.mob_caps run function abgrund:entity/worldgen/sable_plains/sheep/pass
execute as @s[type=zombie,predicate=abgrund:biome/sable_plains] if score %limbo_creature abg.mob_caps >= $creature_max uthi.mob_caps run function abgrund:entity/worldgen/sable_plains/sheep/fail

execute as @s[type=zombie,predicate=abgrund:location/senken] if score %rabbit abg.mob_caps < $rabbit_max abg.mob_caps run function abgrund:entity/worldgen/senken/rabbit/pass
execute as @s[type=zombie,predicate=abgrund:location/senken] if score %rabbit abg.mob_caps >= $rabbit_max abg.mob_caps run function abgrund:entity/worldgen/senken/rabbit/fail

execute as @s[type=zombie,predicate=abgrund:biome/dripstone_flats] if score %rabbit abg.mob_caps < $rabbit_max abg.mob_caps run function abgrund:entity/worldgen/dripstone_flats/rabbit/pass
execute as @s[type=zombie,predicate=abgrund:biome/dripstone_flats] if score %rabbit abg.mob_caps >= $rabbit_max abg.mob_caps run function abgrund:entity/worldgen/dripstone_flats/rabbit/fail

execute as @s[type=zombie,predicate=abgrund:biome/jardin] if score %jardin_creature abg.mob_caps < $creature_max uthi.mob_caps run function abgrund:entity/worldgen/jardin/sheep/pass
execute as @s[type=zombie,predicate=abgrund:biome/jardin] if score %jardin_creature abg.mob_caps >= $creature_max uthi.mob_caps run function abgrund:entity/worldgen/jardin/sheep/fail
execute as @s[type=piglin,predicate=abgrund:biome/jardin] if score %jardin_creature abg.mob_caps < $creature_max uthi.mob_caps run function abgrund:entity/worldgen/jardin/cow/pass
execute as @s[type=piglin,predicate=abgrund:biome/jardin] if score %jardin_creature abg.mob_caps >= $creature_max uthi.mob_caps run function abgrund:entity/worldgen/jardin/cow/fail

execute as @s[type=#abgrund:condemnable,tag=!abg.condemned,predicate=!abgrund:biome/boosted_condemned_chance] if predicate uthi:rng/0.1 run function abgrund:entity/condemned/spawn
execute as @s[type=#abgrund:condemnable,tag=!abg.condemned,predicate=abgrund:biome/boosted_condemned_chance] if predicate uthi:rng/0.5 run function abgrund:entity/condemned/spawn


tag @s add abg.checked