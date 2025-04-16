# repeat
schedule function abgrund:clocks/7s 7s


# mob caps
scoreboard players set %limbo_creature abg.mob_caps 0
execute as @e[tag=abg.creature,predicate=abgrund:dimension/limbo] run scoreboard players add %limbo_creature abg.mob_caps 1
tellraw @a[tag=uthi.worlddev] ["",{"score": {"name": "%limbo_creature","objective": "abg.mob_caps"}}," \"creature\" mobs currently loaded in Limbo"]

scoreboard players set %jardin_creature abg.mob_caps 0
execute as @e[tag=abg.jardin,predicate=abgrund:dimension/limbo] run scoreboard players add %jardin_creature abg.mob_caps 1
tellraw @a[tag=uthi.worlddev] ["",{"score": {"name": "%jardin_creature","objective": "abg.mob_caps"}}," \"jardin creature\" mobs currently loaded in Limbo"]

scoreboard players set %rabbit abg.mob_caps 0
execute as @e[tag=abg.rabbit,predicate=abgrund:dimension/limbo] run scoreboard players add %rabbit abg.mob_caps 1
tellraw @a[tag=uthi.worlddev] ["",{"score": {"name": "%rabbit","objective": "abg.mob_caps"}}," \"rabbit\" mobs currently loaded in Limbo"]