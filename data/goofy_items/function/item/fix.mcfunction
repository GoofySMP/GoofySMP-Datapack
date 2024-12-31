#remove cmd and custom data
summon item_display ~ ~ ~ {Tags:["gf.spare_slot"]}
item replace entity @n[tag=gf.spare_slot,distance=...01] container.0 from entity @s weapon.mainhand
data remove entity @n[tag=gf.spare_slot,distance=...01] item.components."minecraft:custom_model_data"
data remove entity @n[tag=gf.spare_slot,distance=...01] item.components."minecraft:custom_data"
item replace entity @s weapon.mainhand from entity @n[tag=gf.spare_slot,distance=...01] container.0
kill @n[tag=gf.spare_slot,distance=...01]

#item modifier
$item modify entity @s weapon.mainhand goofy_items:weapon/$(item)