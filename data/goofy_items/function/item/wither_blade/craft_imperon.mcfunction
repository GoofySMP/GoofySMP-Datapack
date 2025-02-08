#kill all ingredient minus root (that's this entity)
kill @e[type=item,nbt={Item:{id:"minecraft:soul_sand",count:1}},limit=1,sort=nearest,distance=0...6]
kill @e[type=item,nbt={Item:{id:"minecraft:wither_rose",count:1}},limit=1,sort=nearest,distance=0...6]
kill @e[type=item,nbt={Item:{id:"minecraft:wither_skeleton_skull",count:1,}},limit=1,sort=nearest,distance=0...6]
kill @e[type=item,nbt={Item:{id:"minecraft:gold_block",count:1}},limit=1,sort=nearest,distance=0...6]
kill @e[type=item,nbt={Item:{id:"minecraft:blaze_powder",count:1}},limit=1,sort=nearest,distance=0...6]
kill @e[type=item,nbt={Item:{id:"minecraft:nether_wart",count:1}},limit=1,sort=nearest,distance=0...6]
kill @e[type=item,nbt={Item:{id:"minecraft:glowstone_dust",count:1}},limit=1,sort=nearest,distance=0...6]
kill @e[type=item,nbt={Item:{id:"minecraft:sugar",count:1}},limit=1,sort=nearest,distance=0...6]

#Spawn the sword
item modify entity @s container.0 goofy_items:weapon/withering_imperon

#effects
particle smoke ~ ~1 ~ .1 .1 .1 .3 25 normal
function goofy_items:item/textures/craft_effects
playsound minecraft:particle.soul_escape block @a ~ ~ ~
playsound minecraft:particle.soul_escape block @a ~ ~ ~
playsound minecraft:particle.soul_escape block @a ~ ~ ~
playsound minecraft:particle.soul_escape block @a ~ ~ ~
playsound entity.enderman.death block @a ~ ~ ~ .25 2
playsound entity.wither.ambient block @a ~ ~ ~ .25 1.5