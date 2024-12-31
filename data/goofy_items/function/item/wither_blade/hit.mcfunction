advancement revoke @s only goofy_items:technical/wither_sword

execute if entity @s[tag=gf.wither_worthy] run function goofy_items:item/wither_blade/worthy
execute unless entity @s[tag=gf.wither_worthy] run function goofy_items:item/wither_blade/unworthy