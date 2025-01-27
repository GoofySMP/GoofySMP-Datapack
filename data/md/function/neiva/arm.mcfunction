#from adv:tech/shoot_neiva

#revoke trigger adv for reuseability
advancement revoke @s only md:tech/shoot_neiva

execute if score #NEIVACool md.config matches 1 run scoreboard players set @s md.neivaCooldown 300

#identify projectile
tag @e[type=#arrows,sort=nearest,limit=1,distance=..5,nbt={life:0s}] add md.this
tag @e[type=firework_rocket,sort=nearest,limit=1,distance=..5,nbt={Life:0}] add md.this

#cast ray
execute as @s at @s run function md:neiva/ray/cast

#prep Bullet
execute as @e[tag=md.this,sort=nearest,limit=1,distance=..5] at @s run function md:neiva/bullet_prep

#effect
execute anchored eyes run function md:effect/neiva/sound_ring/begining

#dev particles
execute anchored eyes run particle dust{color:[1,0,0],scale:1} ^ ^0.15 ^1.25 0 0 0 0 1 force @a[tag=md.dev]
execute anchored eyes run particle dust{color:[1,0,0],scale:1} ^ ^0.15 ^0.25 0 0 0 0 1 force @a[tag=md.dev]
execute anchored eyes run particle dust{color:[1,0,0],scale:1} ^ ^0.15 ^0.5 0 0 0 0 1 force @a[tag=md.dev]
execute anchored eyes run particle dust{color:[1,0,0],scale:1} ^ ^0.15 ^0.75 0 0 0 0 1 force @a[tag=md.dev]
execute anchored eyes run particle dust{color:[1,0,0],scale:1} ^ ^0.15 ^1 0 0 0 0 1 force @a[tag=md.dev]
execute anchored eyes run particle dust{color:[1,0,0],scale:1} ^ ^-0.15 ^1.25 0 0 0 0 1 force @a[tag=md.dev]
execute anchored eyes run particle dust{color:[1,0,0],scale:1} ^ ^-0.15 ^0.25 0 0 0 0 1 force @a[tag=md.dev]
execute anchored eyes run particle dust{color:[1,0,0],scale:1} ^ ^-0.15 ^0.5 0 0 0 0 1 force @a[tag=md.dev]
execute anchored eyes run particle dust{color:[1,0,0],scale:1} ^ ^-0.15 ^0.75 0 0 0 0 1 force @a[tag=md.dev]
execute anchored eyes run particle dust{color:[1,0,0],scale:1} ^ ^-0.15 ^1 0 0 0 0 1 force @a[tag=md.dev]

#recoil
tp @s ~ ~ ~ ~ ~-5