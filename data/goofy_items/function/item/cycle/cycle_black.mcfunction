#get item
$item replace entity @s container.0 from entity @p[tag=gf.this] armor.$(slot)

#Store trim in item data
execute unless data entity @s item.components."minecraft:trim"{material:"minecraft:netherite"} run \
    data modify entity @s item.components."minecraft:custom_data".goofy_smp.item_properties.trim_cycle set from entity @s item.components."minecraft:trim".material

data merge entity @s {item:{components:{"minecraft:trim":{material:"minecraft:netherite"}}}}
data merge entity @s {item:{components:{"minecraft:custom_data":{goofy_smp:{item_properties:{cycling:0}}}}}}

#return item
$item replace entity @p[tag=gf.this] armor.$(slot) from entity @s container.0

#remove slot
kill @s