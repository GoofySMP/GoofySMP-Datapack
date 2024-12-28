#from ../cast

scoreboard players set @s gf.ray_steps 0

tellraw @a[tag=gf.dev] "Ray: Cast"

#starts recusrive step func
execute at @s run function goofy_items:item/dragonsbane/ray/step

#kills the ray after all is said and done
kill @s