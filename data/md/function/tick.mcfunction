execute as @e[type=#minecraft:arrows,predicate=md:reinforced_projectile] run data modify entity @s Fire set value 2000s
schedule function md:tick 1