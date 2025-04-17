#kill ingredients
kill @e[type=item,nbt={Item:{id:"minecraft:obsidian",count:1,}},limit=1,sort=nearest,distance=0...6]
kill @e[type=item,nbt={Item:{id:"minecraft:white_dye",count:1}},limit=1,sort=nearest,distance=0...6]
kill @e[type=item,nbt={Item:{id:"minecraft:fire_charge",count:1}},limit=1,sort=nearest,distance=0...6]
kill @e[type=item,nbt={Item:{id:"minecraft:music_disc_11",count:1}},limit=1,sort=nearest,distance=0...6,nbt={Item:{components:{"minecraft:custom_data":{"abgrund": {"item": "essence_of_abgrund"}}}}}]

#texture
item modify entity @s container.0 goofy_items:weapon/verbannung

#effects
function goofy_items:item/textures/craft_effects