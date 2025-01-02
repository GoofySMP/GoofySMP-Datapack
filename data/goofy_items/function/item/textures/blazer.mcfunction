#kill ingredients
kill @e[type=item,nbt={Item:{id:"minecraft:fire_charge",count:1,}},limit=1,sort=nearest,distance=0...6]
kill @e[type=item,nbt={Item:{id:"minecraft:netherrack",count:1}},limit=1,sort=nearest,distance=0...6]

#texture
item modify entity @s container.0 goofy_items:weapon/blazer

#effects
function goofy_items:item/textures/craft_effects