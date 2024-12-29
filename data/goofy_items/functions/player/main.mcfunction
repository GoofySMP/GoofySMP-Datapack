#Withering Blade
execute as @s[scores={gf.combo_ref=1..}] run scoreboard players remove @s gf.combo_ref 1
execute as @s[scores={gf.combo_ref=0}] run function goofy_items:item/wither_blade/combo/reset
effect give @s[tag=gf.frenzied] wither 1 0 true

#Dragonsbane
execute as @s[scores={gf.teleport_cool=1..}] run scoreboard players remove @s gf.teleport_cool 1
execute as @s[predicate=goofy_items:player/sneaking,predicate=goofy_items:item/dragonsblade] run function goofy_items:item/dragonsbane/teleport/check

#Combat Tag
execute as @s[scores={gf.ct=1..}] run function goofy_items:combat/refresh_display
execute as @s[scores={gf.ct=1..}] run scoreboard players remove @s gf.ct 1