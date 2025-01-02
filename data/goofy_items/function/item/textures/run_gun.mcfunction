#kill ingredients
kill @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",count:2,}},limit=1,sort=nearest,distance=0...6]

#texture
item modify entity @s container.0 goofy_items:weapon/run_gun

#effects
function goofy_items:item/textures/craft_effects