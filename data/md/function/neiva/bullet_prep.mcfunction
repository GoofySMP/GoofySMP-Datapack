tag @s remove md.this

##store final values
#Motion
scoreboard players operation @s md.bulletX = #c2 md.bulletX
scoreboard players operation @s md.bulletY = #c2 md.bulletY
scoreboard players operation @s md.bulletZ = #c2 md.bulletZ
tellraw @a[tag=md.dev] "Bullet: Motion retrieved"
#Position
execute store result entity @s Pos[0] double 0.00001 run scoreboard players get #X md.rayOutput
execute store result entity @s Pos[1] double 0.00001 run scoreboard players get #Y md.rayOutput
execute store result entity @s Pos[2] double 0.00001 run scoreboard players get #Z md.rayOutput
execute run tellraw @a[tag=md.dev] "Bullet: Position retrieved"
#Rotation
execute store result entity @s Rotation[0] float 0.00001 run scoreboard players get #Pitch md.rayOutput
execute store result entity @s Rotation[1] float 0.00001 run scoreboard players get #Yaw md.rayOutput
tellraw @a[tag=md.dev] "Bullet: Rotation retrieved"


#reset scoreboards (performance i think)
scoreboard players reset #c1 md.bulletX
scoreboard players reset #c2 md.bulletX
scoreboard players reset #c1 md.bulletY
scoreboard players reset #c2 md.bulletY
scoreboard players reset #c1 md.bulletZ
scoreboard players reset #c2 md.bulletZ
scoreboard players reset * md.rayOutput

#adding power to arrow
data modify entity @s crit set value 1b
data modify entity @s damage set value 3

#making rocket detonate in short time, regardless of flight duration
data modify entity @s LifeTime set value 15

scoreboard players set @s md.bulletTime 20

tag @s add md.railgun_bullet


schedule function md:neiva/bullet_clock 1t