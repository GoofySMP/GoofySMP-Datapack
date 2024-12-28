execute align xz run tp @s ~.5 ~ ~.5
playsound block.smithing_table.use block @a ~ ~ ~ 1 1
playsound block.note_block.bell block @a ~ ~ ~ 1 2
execute align xz run particle block netherite_block ~.5 ~.1 ~.5 .1 .1 .1 .3 10 normal
data modify entity @s Motion set value [0.0d,0.27d,0.0d]