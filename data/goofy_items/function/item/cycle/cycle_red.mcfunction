#get item
$item replace entity @s container.0 from entity @p[tag=gf.this] armor.$(slot)

#modify item
execute unless data entity @s item.components."minecraft:custom_data".goofy_smp.item_properties.trim_cycle run \
    data merge entity @s {item:{components:{"minecraft:trim":{material:"minecraft:redstone"}}}}

data merge entity @s {item:{components:{"minecraft:custom_data":{goofy_smp:{item_properties:{cycling:true}}}}}}
data modify entity @s item.components."minecraft:trim".material set from entity @s item.components."minecraft:custom_data".goofy_smp.item_properties.trim_cycle

#return item
$item replace entity @p[tag=gf.this] armor.$(slot) from entity @s container.0

#remove slot
kill @s