#Withering Blade
execute as @s[scores={gf.combo_ref=1..}] run scoreboard players remove @s gf.combo_ref 1
execute as @s[scores={gf.combo_ref=0}] run function goofy_items:item/wither_blade/combo/reset
effect give @s[tag=gf.frenzied] wither 1 0 true

#update format
function goofy_items:fix