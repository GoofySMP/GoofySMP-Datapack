#kill ingredients
kill @e[type=item,nbt={Item:{id:"minecraft:ender_eye",count:1,}},limit=1,sort=nearest,distance=0...6]
kill @e[type=item,nbt={Item:{id:"minecraft:red_sand",count:1}},limit=1,sort=nearest,distance=0...6]

#texture
item modify entity @s container.0 goofy_items:weapon/limegreepvp

#effects
function goofy_items:item/textures/craft_effects