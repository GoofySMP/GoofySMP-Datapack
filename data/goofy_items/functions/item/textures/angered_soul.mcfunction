#kill ingredients
kill @e[type=item,nbt={Item:{id:"minecraft:soul_sand",Count:1b,}},limit=1,sort=nearest,distance=0...6]
kill @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot",Count:1b}},limit=1,sort=nearest,distance=0...6]

#texture
data modify entity @s Item.tag.CustomModelData set value 400
data modify entity @s Item.tag.GoofySMP.texture set value 1b

function goofy_items:item/textures/craft_effects