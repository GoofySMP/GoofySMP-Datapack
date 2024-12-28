#kill all ingredient minus root (that's this entity)
kill @e[type=item,nbt={Item:{id:"minecraft:soul_sand",Count:1b}},limit=1,sort=nearest,distance=0...6]
kill @e[type=item,nbt={Item:{id:"minecraft:wither_rose",Count:1b}},limit=1,sort=nearest,distance=0...6]
kill @e[type=item,nbt={Item:{id:"minecraft:wither_skeleton_skull",Count:1b,}},limit=1,sort=nearest,distance=0...6]
kill @e[type=item,nbt={Item:{id:"minecraft:gold_block",Count:1b}},limit=1,sort=nearest,distance=0...6]
kill @e[type=item,nbt={Item:{id:"minecraft:blaze_powder",Count:1b}},limit=1,sort=nearest,distance=0...6]
kill @e[type=item,nbt={Item:{id:"minecraft:nether_wart",Count:1b}},limit=1,sort=nearest,distance=0...6]
kill @e[type=item,nbt={Item:{id:"minecraft:glowstone_dust",Count:1b}},limit=1,sort=nearest,distance=0...6]
kill @e[type=item,nbt={Item:{id:"minecraft:sugar",Count:1b}},limit=1,sort=nearest,distance=0...6]

#Spawn the sword
data modify entity @s Item.tag.GoofySMP set value {item:"withering_blade"}
data modify entity @s Item.tag.CustomModelData set value 100
data modify entity @s Item.tag.display set value {Lore:['{"italic":true,"color":"#6C7477","text":"When powered by a nether star,"}','{"italic":true,"color":"#6C7477","text":"it activates a frenzy upon"}','{"italic":true,"color":"#6C7477","text":"enough consecutive strikes"}','{"text":""}','{"bold":true,"italic":false,"color":"gold","text":"Goofy SMP"}'],Name:'{"italic":false,"color":"#4F6B79","text":"Withering Blade"}'}

#effects
particle smoke ~ ~1 ~ .1 .1 .1 .3 25 normal
function goofy_items:item/textures/craft_effects
playsound minecraft:particle.soul_escape block @a ~ ~ ~
playsound minecraft:particle.soul_escape block @a ~ ~ ~
playsound minecraft:particle.soul_escape block @a ~ ~ ~
playsound minecraft:particle.soul_escape block @a ~ ~ ~
playsound entity.enderman.death block @a ~ ~ ~ .25 2
playsound entity.wither.ambient block @a ~ ~ ~ .25 1.5