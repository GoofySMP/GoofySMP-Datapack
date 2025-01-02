#> I ripped this code from Echoes. Have fun >o3
# creating the ray
tellraw @a[tag=gf.dev] "Ray: Created"
tag @s add gf.shotSource
summon area_effect_cloud ~ ~ ~ {Duration:1, Tags:[gf.teleport_ray]}

# angling the ray to match player's eyes and orientation
execute anchored eyes as @s run tp @e[tag=gf.teleport_ray,limit=1,sort=nearest] ^ ^ ^ ~ ~

#debug
tellraw @a[tag=gf.dev] "\nRay: Initial Coordinates"
tellraw @a[tag=gf.dev] ["  x: ",{"nbt": "Pos[0]","entity": "@e[tag=gf.teleport_ray,limit=1,sort=nearest]"}]
tellraw @a[tag=gf.dev] ["  y: ",{"nbt": "Pos[1]","entity": "@e[tag=gf.teleport_ray,limit=1,sort=nearest]"}]
tellraw @a[tag=gf.dev] ["  z: ",{"nbt": "Pos[2]","entity": "@e[tag=gf.teleport_ray,limit=1,sort=nearest]"}]
tellraw @a[tag=gf.dev] ["  pit: ",{"nbt": "Rotation[0]","entity": "@e[tag=gf.teleport_ray,limit=1,sort=nearest]"}]
tellraw @a[tag=gf.dev] ["  yaw: ",{"nbt": "Rotation[1]","entity": "@e[tag=gf.teleport_ray,limit=1,sort=nearest]"}]
tellraw @a[tag=gf.dev] "\nRay: Player Coordinates (for reference)"
tellraw @a[tag=gf.dev] ["  x: ",{"nbt": "Pos[0]","entity": "@s"}]
tellraw @a[tag=gf.dev] ["  y: ",{"nbt": "Pos[1]","entity": "@s"}]
tellraw @a[tag=gf.dev] ["  z: ",{"nbt": "Pos[2]","entity": "@s"}]
tellraw @a[tag=gf.dev] ["  pit: ",{"nbt": "Rotation[0]","entity": "@s"}]
tellraw @a[tag=gf.dev] ["  yaw: ",{"nbt": "Rotation[1]","entity": "@s"}]

#starting movement
execute as @e[tag=gf.teleport_ray,limit=1,sort=nearest] run function goofy_items:item/enderblade/ray/ray
tag @s remove gf.shotSource