#from ../ray
tellraw @a[tag=gf.dev] {"score": {"name": "@s","objective": "gf.ray_steps"}}
#check for blocks
execute if score @s gf.ray_steps matches 0.. unless block ~ ~ ~ #goofy_items:teleport_permeable run function goofy_items:item/enderblade/ray/pre_end
execute if score @s gf.ray_steps matches 0.. unless block ~ ~ ~ #goofy_items:teleport_permeable run tellraw @a[tag=gf.dev] "Ray: Found Block"
execute if predicate goofy_items:chance/50 run particle portal ~ ~1 ~ .1 .2 .1 .1 5 force
#actually moves the ray
$execute unless score @s gf.ray_steps matches $(enderblade_warp_distance).. at @s run tp ^ ^ ^.25
scoreboard players add @s gf.ray_steps 1

#if score0, end
$execute if score @s gf.ray_steps matches $(enderblade_warp_distance).. at @s run function goofy_items:item/enderblade/ray/end

#call func again, if steps remaining
$execute unless score @s gf.ray_steps matches $(enderblade_warp_distance).. at @s run function goofy_items:item/enderblade/ray/step with storage goofy_smp:config