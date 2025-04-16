# from entity/check
# @s: husk
tellraw @a[tag=uthi.worlddev] "Attempting to sheep rabbit in Jardin"

execute summon sheep run function abgrund:entity/worldgen/jardin/sheep/spawn
tp @s ~ -1000 ~