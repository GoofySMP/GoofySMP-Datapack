execute store result score #c1 md.bulletX run data get entity @s Pos[0] 1000
execute store result score #c1 md.bulletY run data get entity @s Pos[1] 1000
execute store result score #c1 md.bulletZ run data get entity @s Pos[2] 1000
tellraw @a[tag=gf.dev] "Ray: Motion Coord Set 1 Acquired"
tellraw @a[tag=gf.dev] ["  x: ",{"nbt": "Pos[0]","entity": "@e[tag=md.railRay,limit=1,sort=nearest]"}]
tellraw @a[tag=gf.dev] ["  y: ",{"nbt": "Pos[1]","entity": "@e[tag=md.railRay,limit=1,sort=nearest]"}]
tellraw @a[tag=gf.dev] ["  z: ",{"nbt": "Pos[2]","entity": "@e[tag=md.railRay,limit=1,sort=nearest]"}]
function md:neiva/ray/store