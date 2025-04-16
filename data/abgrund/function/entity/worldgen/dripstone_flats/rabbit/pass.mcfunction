# from entity/check
# @s: husk
tellraw @a[tag=uthi.worlddev] "Attempting to spawn rabbit in Dripstone Flats"

execute if predicate uthi:rng/0.5 summon rabbit run function abgrund:entity/worldgen/dripstone_flats/rabbit/spawn
tp @s ~ -1000 ~