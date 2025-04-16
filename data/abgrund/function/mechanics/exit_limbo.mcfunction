#tp to overlands
particle minecraft:dust{color:1,scale:2} ~ ~1 ~ 1 1 1 1 500
execute in minecraft:overworld store success storage abgrund:temp spawn_success byte 1 run spreadplayers 0 0 0 1000 false @s

#fallback
execute unless data storage abgrund:temp {spawn_success:1b} run execute in minecraft:overworld run tp @s 0 320 0
execute unless data storage abgrund:temp {spawn_success:1b} run effect give @s slow_falling 60

data remove storage abgrund:temp spawn_success

#clear spawnpoint
execute in abgrund:limbo_biome_map run spawnpoint @s 0 0 0
playsound block.portal.trigger ambient @s
execute at @s run particle minecraft:dust{color:1,scale:2} ~ ~1 ~ 1 1 1 1 500