#lore if wither
execute if entity @e[type=wither,distance=..32] if predicate goofy_items:item/withering_blade_mainhand run item modify entity @s weapon.mainhand goofy_items:withering_blade/wither
execute unless entity @e[type=wither,distance=..32] if predicate goofy_items:item/withering_blade_mainhand run item modify entity @s weapon.mainhand goofy_items:withering_blade/no_wither

#texture when frenzied
execute if entity @s[tag=gf.frenzied] if predicate goofy_items:item/withering_blade_mainhand run item modify entity @s weapon.mainhand goofy_items:withering_blade/empowered

execute unless entity @s[tag=gf.frenzied] if predicate goofy_items:item/withering_blade_mainhand run item modify entity @s weapon.mainhand goofy_items:withering_blade/no_empowered
