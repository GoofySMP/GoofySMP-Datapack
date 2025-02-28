#spare slot. Can't modify player NBT (sadly)

tag @s add gf.this
summon item_display ~ ~ ~ {Tags:["gf.spare_slot"]}
execute if predicate goofy_items:armor/cycle/head_red as @n[tag=gf.spare_slot,distance=...01] run function goofy_items:item/cycle/cycle_black {slot:head}
execute if predicate goofy_items:armor/cycle/chest_red as @n[tag=gf.spare_slot,distance=...01] run function goofy_items:item/cycle/cycle_black {slot:chest}
execute if predicate goofy_items:armor/cycle/legs_red as @n[tag=gf.spare_slot,distance=...01] run function goofy_items:item/cycle/cycle_black {slot:legs}
execute if predicate goofy_items:armor/cycle/feet_red as @n[tag=gf.spare_slot,distance=...01] run function goofy_items:item/cycle/cycle_black {slot:feet}

tag @s remove gf.this
