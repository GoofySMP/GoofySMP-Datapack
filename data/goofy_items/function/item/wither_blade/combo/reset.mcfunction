#adv for when taking damage from entity
advancement revoke @s only goofy_items:technical/break_combo

#sfx
execute if score @s gf.combo matches 2.. run playsound entity.wither.break_block player @s ~ ~ ~ 1 2

#reset combo
scoreboard players reset @s gf.combo
scoreboard players reset @s gf.combo_ref
tag @s remove gf.frenzied