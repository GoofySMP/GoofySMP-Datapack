#from ../cast

#sets steps scoreboard. This determines how far the ray will go
scoreboard players set @s md.raySteps 400

tellraw @a[tag=gf.dev] "Ray: Cast"

#starts recusrive step func
execute at @s run function md:neiva/ray/step

#kills the ray after all is said and done
kill @s