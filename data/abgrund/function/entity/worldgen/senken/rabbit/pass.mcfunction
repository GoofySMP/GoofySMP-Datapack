# from entity/check
# @s: husk
tellraw @a[tag=uthi.worlddev] "Attempting to spawn rabbit in Senken"

execute if predicate uthi:rng/0.5 summon rabbit run function abgrund:entity/worldgen/senken/rabbit/spawn
tp @s ~ -1000 ~