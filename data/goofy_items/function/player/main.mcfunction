#Withering Blade
execute as @s[scores={gf.combo_ref=1..}] run scoreboard players remove @s gf.combo_ref 1
execute as @s[scores={gf.combo_ref=0}] run function goofy_items:item/wither_blade/combo/reset
effect give @s[tag=gf.frenzied] wither 1 0 true

#Enderblade
execute if predicate goofy_items:player/level_at_least_2 if predicate goofy_items:item/enderblade_mainhand run item modify entity @s weapon.mainhand goofy_items:enderblade/useable
execute unless predicate goofy_items:player/level_at_least_2 if predicate goofy_items:item/enderblade_mainhand run item modify entity @s weapon.mainhand goofy_items:enderblade/un_usable
execute if predicate goofy_items:player/level_at_least_2 if predicate goofy_items:item/enderblade_offhand run item modify entity @s weapon.offhand goofy_items:enderblade/useable
execute unless predicate goofy_items:player/level_at_least_2 if predicate goofy_items:item/enderblade_offhand run item modify entity @s weapon.offhand goofy_items:enderblade/un_usable

#update format
function goofy_items:fix