# from ../cast

#Creating the explosion (and preventing user knockback)
execute positioned ^ ^ ^-.5 run function uthi:utils/create_explosion {enchantment:"goofy_items:explosion/enderblade_corrupted"}
execute positioned ^ ^ ^-.5 run function uthi:utils/create_explosion {enchantment:"goofy_items:explosion/enderblade_corrupted_damage"}
tag @a[tag=uthi.shotSource,limit=1] add gf.tech_attribute
attribute @a[tag=uthi.shotSource,limit=1] explosion_knockback_resistance modifier add goofy_items:technical.enderblade_corrupted_explosion 100 add_value

#blind effect
effect give @e[distance=..10,tag=!uthi.shotSource] blindness 2
effect give @a[tag=uthi.shotSource,limit=1] darkness 2

#teleport
tp @a[tag=uthi.shotSource,limit=1] ^ ^ ^-.5

#particles
particle dust{color:11736341,scale:2} ~ ~1 ~ 1 1 1 .1 50 normal
particle smoke ~ ~1 ~ .5 1 .5 .1 50 normal
particle flame ~ ~1 ~ 0.1 0.1 0.1 .5 150 force
particle sonic_boom ~ ~1 ~ 2 2 2 0 15 force