#calculating
scoreboard players operation #c2 md.bulletX -= #c1 md.bulletX
scoreboard players operation #c2 md.bulletY -= #c1 md.bulletY
scoreboard players operation #c2 md.bulletZ -= #c1 md.bulletZ
tellraw @a[tag=md.dev] "Ray: Motion Vector Calculated"
tellraw @a[tag=md.dev] ["  x: ",{"score": {"name": "#c2","objective":"md.bulletX"}}]
tellraw @a[tag=md.dev] ["  y: ",{"score": {"name": "#c2","objective":"md.bulletY"}}]
tellraw @a[tag=md.dev] ["  z: ",{"score": {"name": "#c2","objective":"md.bulletZ"}}]
