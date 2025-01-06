#adv for when taking damage from entity
advancement revoke @s only goofy_items:technical/break_combo

execute if score @s gf.combo matches 2.. unless entity @e[type=wither,distance=..32] if predicate goofy_items:chance/50 run function goofy_items:item/wither_blade/combo/reset
execute if score @s gf.combo matches 2.. if entity @e[type=wither,distance=..32] if predicate goofy_items:chance/25 run function goofy_items:item/wither_blade/combo/reset
execute if score @s gf.combo matches 2.. run tellraw @a[tag=gf.dev] [{"selector": "@s"},": Took Damage"]
