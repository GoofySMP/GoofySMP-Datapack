#kill ingredients
kill @e[type=item,nbt={Item:{id:"minecraft:lava_bucket",count:1,}},limit=1,sort=nearest,distance=0...6]

#texture
item modify entity @s container.0 goofy_items:armour/netherite_faceplate

#effects
function goofy_items:item/textures/craft_effects