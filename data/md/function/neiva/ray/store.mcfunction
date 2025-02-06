execute store result score #X md.rayOutput run data get entity @s Pos[0] 100000
execute store result score #Y md.rayOutput run data get entity @s Pos[1] 100000
execute store result score #Z md.rayOutput run data get entity @s Pos[2] 100000
execute store result score #Pitch md.rayOutput run data get entity @s Rotation[0] 100000
execute store result score #Yaw md.rayOutput run data get entity @s Rotation[1] 100000

tellraw @a[tag=gf.dev] "Ray: Storing Coordinates"
tellraw @a[tag=gf.dev] ["  x: ",{"nbt": "Pos[0]","entity": "@e[tag=md.railRay,limit=1,sort=nearest]"}]
tellraw @a[tag=gf.dev] ["  y: ",{"nbt": "Pos[1]","entity": "@e[tag=md.railRay,limit=1,sort=nearest]"}]
tellraw @a[tag=gf.dev] ["  z: ",{"nbt": "Pos[2]","entity": "@e[tag=md.railRay,limit=1,sort=nearest]"}]
tellraw @a[tag=gf.dev] ["  pit: ",{"nbt": "Rotation[0]","entity": "@e[tag=md.railRay,limit=1,sort=nearest]"}]
tellraw @a[tag=gf.dev] ["  yaw: ",{"nbt": "Rotation[1]","entity": "@e[tag=md.railRay,limit=1,sort=nearest]"}]