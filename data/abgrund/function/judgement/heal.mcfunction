#effects
execute unless score @s abg.health matches 10.. run function abgrund:effect/judgement/active_feed_particles
execute if score @s abg.health matches 10.. run function abgrund:effect/judgement/passive_feed_particles

#ACTUAL FEEDING
execute unless score @s abg.health matches 10.. run effect give @s saturation 1 0 true
execute if score @s abg.health matches 10.. run effect give @s saturation 1 0 true