# from entity/check
# @s: stray
tellraw @a[tag=uthi.worlddev] "Attempting to sheep cow in Jardin"

execute summon cow run function abgrund:entity/worldgen/jardin/sheep/spawn
tp @s ~ -1000 ~