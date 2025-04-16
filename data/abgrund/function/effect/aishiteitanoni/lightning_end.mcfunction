execute as @e[type=item,distance=..10] run data merge entity @s {Invulnerable:true}
playsound item.trident.thunder player @a ~ ~ ~ 5 0.75
playsound item.trident.thunder player @a ~ ~ ~ 5 1
playsound item.trident.thunder player @a ~ ~ ~ 5 1.5
playsound block.respawn_anchor.charge player @a ~ ~ ~ 5 0.75
playsound block.respawn_anchor.charge player @a ~ ~ ~ 5 1.5

summon lightning_bolt ~ ~ ~
function uthi:utils/create_explosion {enchantment:"abgrund:tech/aishiteitanoni_explosion"}