#kill all ingredient minus root (that's this entity)
kill @e[type=item,nbt={Item:{id:"minecraft:chorus_fruit",Count:1b}},limit=1,sort=nearest,distance=0...6]
kill @e[type=item,nbt={Item:{id:"minecraft:ender_pearl",Count:1b}},limit=1,sort=nearest,distance=0...6]
kill @e[type=item,nbt={Item:{id:"minecraft:end_crystal",Count:2b,}},limit=1,sort=nearest,distance=0...6]
kill @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot",Count:1b}},limit=1,sort=nearest,distance=0...6]
kill @e[type=item,nbt={Item:{id:"minecraft:enchanting_table",Count:1b}},limit=1,sort=nearest,distance=0...6]
kill @e[type=item,nbt={Item:{id:"minecraft:lapis_lazuli",Count:2b}},limit=1,sort=nearest,distance=0...6]

#Spawn the sword
data modify entity @s Item.tag.GoofySMP set value {item:"dragonsbane"}
data modify entity @s Item.tag.CustomModelData set value 101
data modify entity @s Item.tag.display set value {Lore:['{"italic":true,"color":"#8C25D1","text":"Reaps life from it\'s enemies"}','{"italic":true,"color":"#8C25D1","text":"When in offhand, sneak to"}','{"italic":true,"color":"#8C25D1","text":"preform a transmission"}','{"text":""}','{"bold":true,"italic":false,"color":"gold","text":"Goofy SMP"}'],Name:'{"italic":false,"color":"#D206EC","text":"Dragonsbane"}'}

#effects
particle portal ~ ~1 ~ .1 .1 .1 .3 25 normal
function goofy_items:item/textures/craft_effects
playsound entity.enderman.death block @a ~ ~ ~ .25 2
playsound entity.ender_dragon.growl block @a ~ ~ ~ .25 1.5