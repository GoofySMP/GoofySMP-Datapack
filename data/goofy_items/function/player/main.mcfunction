#Withering Blade
execute as @s[scores={gf.combo_ref=1..}] run scoreboard players remove @s gf.combo_ref 1
execute as @s[scores={gf.combo_ref=..0}] run function goofy_items:item/wither_blade/combo/reset
effect give @s[tag=gf.frenzied] wither 1 0 true

#Cycling
execute as @s[scores={gf.cycle_tag=1..}] run scoreboard players remove @s gf.cycle_tag 1
execute as @s[scores={gf.cycle_tag=1..}] run execute if predicate goofy_items:armor/cycle_black run function goofy_items:item/cycle/trigger_red
execute as @s[scores={gf.cycle_tag=..0},predicate=goofy_items:armor/cycle_red] run function goofy_items:item/cycle/trigger_black


#update format
function goofy_items:fix