#combo mode
execute if predicate goofy_items:item/nether_star unless entity @e[type=wither,distance=..32] run function goofy_items:item/wither_blade/combo/add
execute if entity @e[type=wither,distance=..32] run function goofy_items:item/wither_blade/combo/add