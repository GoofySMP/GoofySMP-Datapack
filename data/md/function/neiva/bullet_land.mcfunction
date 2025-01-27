tag @s remove md.railgun_bullet
scoreboard players reset @s md.bulletX
scoreboard players reset @s md.bulletY
scoreboard players reset @s md.bulletZ
scoreboard players reset @s md.bulletTime

tellraw @a[tag=md.dev] "Bullet: Reached end of path"