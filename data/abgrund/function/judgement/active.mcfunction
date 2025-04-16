#soul fire for all
execute as @e[tag=abg.condemned] at @s run \
    particle soul_fire_flame ~ ~1 ~ 0.75 1 0.75 0 1 force @a[predicate=abgrund:holding/judgement]
#heaven
execute as @e[tag=abg.condemned] at @s anchored eyes if entity @s[tag=abg.heaven] run \
    particle end_rod ^ ^1 ^ 0.1 0.1 0.1 0 1 force @a[predicate=abgrund:holding/judgement]
#hell
execute as @e[tag=abg.condemned] at @s anchored eyes if entity @s[tag=abg.hell] run \
    particle minecraft:dust{color:9111303,scale:1} ^ ^1 ^ 0.1 0.1 0.1 0 2 force @a[predicate=abgrund:holding/judgement]
execute as @e[tag=abg.condemned] at @s anchored eyes if entity @s[tag=abg.hell] run \
    particle minecraft:flame ^ ^1 ^ 0.1 0.1 0.1 0 1 force @a[predicate=abgrund:holding/judgement]
#other
execute as @e[tag=abg.condemned] at @s anchored eyes unless entity @s[tag=abg.hell] unless entity @s[tag=abg.heaven] run \
    particle dust{color:1052711,scale:1} ^ ^1 ^ 0.1 0.1 0.1 0 2 force @a[predicate=abgrund:holding/judgement]