scoreboard players reset @a gf.disc.used
execute as @e[tag=gf.disc.expire] run scoreboard players add @s gf.disc.expire 1
execute as @e[type=item, nbt={Item:{id:"minecraft:music_disc_11",tag:{GoofySMP:{item:'record'}}}},tag=!gf.checked] at @s run function goofy_discs:stop_check
execute as @a run function goofy_discs:fix_disc

schedule function goofy_discs:tick 1t