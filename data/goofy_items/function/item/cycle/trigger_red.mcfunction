tag @s add gf.this

#spare slot. Can't modify player NBT (sadly)
summon item_display ~ ~ ~ {Tags:["gf.spare_slot"]}
execute if predicate goofy_items:armor/cycle/feet_black as @n[tag=gf.spare_slot,distance=...01] run function goofy_items:item/cycle/cycle_red {slot:feet}
execute if predicate goofy_items:armor/cycle/legs_black as @n[tag=gf.spare_slot,distance=...01] run function goofy_items:item/cycle/cycle_red {slot:legs}
execute if predicate goofy_items:armor/cycle/chest_black as @n[tag=gf.spare_slot,distance=...01] run function goofy_items:item/cycle/cycle_red {slot:chest}
execute if predicate goofy_items:armor/cycle/head_black as @n[tag=gf.spare_slot,distance=...01] run function goofy_items:item/cycle/cycle_red {slot:head}

tag @s remove gf.this