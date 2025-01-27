tellraw @a[tag=md.dev] [{"text": "Bullet: Tick for ["},{"selector": "@s"},{"text":"]"}]


execute store result entity @s Motion[0] double .03 run scoreboard players get @s md.bulletX
execute store result entity @s Motion[1] double .03 run scoreboard players get @s md.bulletY
execute store result entity @s Motion[2] double .03 run scoreboard players get @s md.bulletZ

scoreboard players remove @s md.bulletTime 1

execute if score @s md.bulletTime matches 0 run function md:neiva/bullet_land
execute if entity @s[nbt={inGround:true}] run function md:neiva/bullet_land

schedule function md:neiva/bullet_clock 1t