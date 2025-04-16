# from entity/check
# @s: husk
tellraw @a[tag=uthi.worlddev] "Attempting to sheep in Sable plains"

execute summon sheep run function abgrund:entity/worldgen/sable_plains/sheep/spawn
tp @s ~ -1000 ~