#kill ingredients
kill @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:1b,}},limit=1,sort=nearest,distance=0...6]
kill @e[type=item,nbt={Item:{id:"minecraft:gold_nugget",Count:1b}},limit=1,sort=nearest,distance=0...6]

#texture
data modify entity @s Item.tag.CustomModelData set value 306
data modify entity @s Item.tag.GoofySMP.texture set value 1b

#effects
function goofy_items:item/textures/craft_effects