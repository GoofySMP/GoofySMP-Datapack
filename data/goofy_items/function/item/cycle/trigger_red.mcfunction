tag @s add gf.this

#spare slot. Can't modify player NBT (sadly)
summon item_display ~ ~ ~ {Tags:["gf.spare_slot"]}
execute if predicate goofy_items:armor/cycle/head_black as @n[tag=gf.spare_slot,distance=...01] run function goofy_items:item/cycle/cycle_red {slot:head}
execute if predicate goofy_items:armor/cycle/chest_black as @n[tag=gf.spare_slot,distance=...01] run function goofy_items:item/cycle/cycle_red {slot:chest}
execute if predicate goofy_items:armor/cycle/legs_black as @n[tag=gf.spare_slot,distance=...01] run function goofy_items:item/cycle/cycle_red {slot:legs}
execute if predicate goofy_items:armor/cycle/feet_black as @n[tag=gf.spare_slot,distance=...01] run function goofy_items:item/cycle/cycle_red {slot:feet}

tag @s remove gf.this
#particles and jazz
particle block{block_state:redstone_block} ~ ~1.25 ~ .2 .2 .2 1 15 normal
playsound entity.turtle.egg_break player @a ~ ~ ~ 1 1.5

#set timer score
scoreboard players set @s gf.cycle_tag 200