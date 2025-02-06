# from ../step

#Give projectile some room to fly
execute unless score #noTP md.rayOutput matches 1 if entity @e[tag=md.this,type=#arrows] run tp ^ ^ ^-1
execute unless score #noTP md.rayOutput matches 1 if entity @e[tag=md.this,type=#arrows] run tellraw @a[tag=gf.dev] "Ray: Granting 1 blocks of clearance for arrow projectile"
execute unless score #noTP md.rayOutput matches 1 if entity @e[tag=md.this,type=firework_rocket] run tp ^ ^ ^-15
execute unless score #noTP md.rayOutput matches 1 if entity @e[tag=md.this,type=firework_rocket] run tellraw @a[tag=gf.dev] "Ray: Granting 15 blocks of clearance for firework projectile"

#effects
execute unless score #noTP md.rayOutput matches 1 run function md:effect/neiva/sound_ring/end
execute if score #noTP md.rayOutput matches 1 run function md:effect/neiva/sound_ring/pre_end

#Store data in scoreboard
execute unless score #noTP md.rayOutput matches 1 run function md:neiva/ray/store
