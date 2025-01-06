#Withering
tag @s add gf.this
execute if entity @e[type=wither,distance=..32] as @e[distance=..4,nbt={HurtTime:10s},tag=!gf.this,type=!#goofy_items:wither_immune] at @s run effect give @s wither 5
execute unless entity @e[type=wither,distance=..32] as @e[distance=..4,nbt={HurtTime:10s},tag=!gf.this,type=!#goofy_items:wither_immune] at @s if predicate goofy_items:chance/50 run function goofy_items:item/wither_blade/wither
execute if entity @e[type=wither,distance=..32] as @e[distance=..4,nbt={HurtTime:10s},tag=!gf.this,type=!#goofy_items:wither_immune] at @s if predicate goofy_items:chance/50 run function goofy_items:item/wither_blade/combo/wither
tag @s remove gf.this

#combo mode
execute if predicate goofy_items:item/nether_star unless entity @e[type=wither,distance=..32] run function goofy_items:item/wither_blade/combo/add
execute if entity @e[type=wither,distance=..32] run function goofy_items:item/wither_blade/combo/add