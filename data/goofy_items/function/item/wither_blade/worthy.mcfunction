#Withering
tag @s add gf.this
execute as @e[distance=..4,nbt={HurtTime:10s},tag=!gf.this,type=!#goofy_items:wither_immune] at @s if predicate goofy_items:chance/50 run function goofy_items:item/wither_blade/wither
tag @s remove gf.this

#combo mode
execute if predicate goofy_items:item/nether_star run function goofy_items:item/wither_blade/combo/add