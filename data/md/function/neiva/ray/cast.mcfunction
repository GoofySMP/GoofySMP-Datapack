tellraw @a[tag=uthi.dev] "Ray: Created"
tag @s add md.this

summon area_effect_cloud ~ ~ ~ {Duration:1, Tags:[md.railRay]}
data modify entity @n[tag=md.railRay] Rotation set from entity @s Rotation

# angling the ray to match arrow's pos and orientation
tp @n[tag=md.railRay] ~ ~ ~

#debug
tellraw @a[tag=uthi.dev] "\nRay: Initial Coordinates"
tellraw @a[tag=uthi.dev] ["  x: ",{"nbt": "Pos[0]","entity": "@n[tag=md.railRay]"}]
tellraw @a[tag=uthi.dev] ["  y: ",{"nbt": "Pos[1]","entity": "@n[tag=md.railRay]"}]
tellraw @a[tag=uthi.dev] ["  z: ",{"nbt": "Pos[2]","entity": "@n[tag=md.railRay]"}]
tellraw @a[tag=uthi.dev] ["  pit: ",{"nbt": "Rotation[0]","entity": "@n[tag=md.railRay]"}]
tellraw @a[tag=uthi.dev] ["  yaw: ",{"nbt": "Rotation[1]","entity": "@n[tag=md.railRay]"}]
tellraw @a[tag=uthi.dev] "\nRay: Arrow Coordinates (for reference)"
tellraw @a[tag=uthi.dev] ["  x: ",{"nbt": "Pos[0]","entity": "@s"}]
tellraw @a[tag=uthi.dev] ["  y: ",{"nbt": "Pos[1]","entity": "@s"}]
tellraw @a[tag=uthi.dev] ["  z: ",{"nbt": "Pos[2]","entity": "@s"}]
tellraw @a[tag=uthi.dev] ["  pit: ",{"nbt": "Rotation[0]","entity": "@s"}]
tellraw @a[tag=uthi.dev] ["  yaw: ",{"nbt": "Rotation[1]","entity": "@s"}]

#starting movement
execute as @n[tag=md.railRay] run function md:neiva/ray/ray
tag @s remove md.this