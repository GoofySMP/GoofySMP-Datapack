#> I ripped this code from Echoes. Have fun >o3
# creating the ray

tellraw @a[tag=md.dev] "Ray: Created"
tag @s add md.shotSource
summon area_effect_cloud ~ ~ ~ {Duration:1, Tags:[md.railRay]}

# angling the ray to match player's eyes and orientation
execute anchored eyes as @s run tp @e[tag=md.railRay,limit=1,sort=nearest] ^ ^ ^ ~ ~

#debug
tellraw @a[tag=md.dev] "\nRay: Initial Coordinates"
tellraw @a[tag=md.dev] ["  x: ",{"nbt": "Pos[0]","entity": "@e[tag=md.railRay,limit=1,sort=nearest]"}]
tellraw @a[tag=md.dev] ["  y: ",{"nbt": "Pos[1]","entity": "@e[tag=md.railRay,limit=1,sort=nearest]"}]
tellraw @a[tag=md.dev] ["  z: ",{"nbt": "Pos[2]","entity": "@e[tag=md.railRay,limit=1,sort=nearest]"}]
tellraw @a[tag=md.dev] ["  pit: ",{"nbt": "Rotation[0]","entity": "@e[tag=md.railRay,limit=1,sort=nearest]"}]
tellraw @a[tag=md.dev] ["  yaw: ",{"nbt": "Rotation[1]","entity": "@e[tag=md.railRay,limit=1,sort=nearest]"}]
tellraw @a[tag=md.dev] "\nRay: Player Coordinates (for reference)"
tellraw @a[tag=md.dev] ["  x: ",{"nbt": "Pos[0]","entity": "@s"}]
tellraw @a[tag=md.dev] ["  y: ",{"nbt": "Pos[1]","entity": "@s"}]
tellraw @a[tag=md.dev] ["  z: ",{"nbt": "Pos[2]","entity": "@s"}]
tellraw @a[tag=md.dev] ["  pit: ",{"nbt": "Rotation[0]","entity": "@s"}]
tellraw @a[tag=md.dev] ["  yaw: ",{"nbt": "Rotation[1]","entity": "@s"}]

#starting movement
execute as @e[tag=md.railRay,limit=1,sort=nearest] run function md:neiva/ray/ray
tag @s remove md.shotSource