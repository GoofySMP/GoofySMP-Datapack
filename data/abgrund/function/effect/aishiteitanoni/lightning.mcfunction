execute as @e[type=item,distance=..10] run data merge entity @s {Invulnerable:true}
playsound item.trident.thunder player @a ~ ~ ~ 5 0.75
playsound item.trident.thunder player @a ~ ~ ~ 5 1
playsound item.trident.thunder player @a ~ ~ ~ 5 1.5
summon lightning_bolt ~ ~ ~
