scoreboard players add %rabbit abg.mob_caps 1
tag @s add abg.checked
tag @s add abg.rabbit
data merge entity @s {RabbitType:4}
tellraw @a[tag=uthi.worlddev] "Spawned rabbit in Senken"