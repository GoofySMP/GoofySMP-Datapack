# From adv:technical/enderblade/use

advancement revoke @s only goofy_items:technical/enderblade/use

#check which hand enderblade is in
execute if predicate goofy_items:item/enderblade_mainhand run tag @s add gf.main
execute unless predicate goofy_items:item/enderblade_mainhand run tag @s add gf.off

#make sure the item doesn't get deleted
summon item_display ~ ~ ~ {Tags:["gf.spare_slot"]}

execute if entity @s[tag=gf.main] run item replace entity @n[tag=gf.spare_slot,distance=...01] container.0 from entity @s weapon.mainhand
#replace to prevent item deletion; use knowledge book to prevent inventory animation
execute if entity @s[tag=gf.main] run item replace entity @s weapon.mainhand with knowledge_book[item_model="goofy_smp:enderblade",enchantment_glint_override=true]
execute if entity @s[tag=gf.main] run item replace entity @s weapon.mainhand from entity @n[tag=gf.spare_slot,distance=...01] container.0

execute if entity @s[tag=gf.off] run item replace entity @n[tag=gf.spare_slot,distance=...01] container.0 from entity @s weapon.offhand
execute if entity @s[tag=gf.off] run item replace entity @s weapon.offhand with knowledge_book[item_model="goofy_smp:enderblade",enchantment_glint_override=true]
execute if entity @s[tag=gf.off] run item replace entity @s weapon.offhand from entity @n[tag=gf.spare_slot,distance=...01] container.0
tag @s remove gf.off
tag @s remove gf.main
kill @n[tag=gf.spare_slot,distance=...01]

#warp
particle reverse_portal ~ ~1 ~ .1 .2 .1 .1 50 normal
execute unless data entity @s {Dimension:"minecraft:the_end"} unless predicate goofy_items:player/gamemode/creative run experience add @s -2 levels
function goofy_items:item/enderblade/ray/cast with storage goofy_smp:config