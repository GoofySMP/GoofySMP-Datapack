#check for frenzy requirements
execute if score @s gf.combo matches 5 run function goofy_items:item/wither_blade/combo/prime
execute if score @s gf.combo matches 15 run function goofy_items:item/wither_blade/combo/prime
execute if score @s gf.combo matches 25 run function goofy_items:item/wither_blade/combo/prime

#sfx
execute if score @s gf.combo matches 1.. run playsound entity.wither_skeleton.hurt player @s ~ ~ ~ 1 2

#Frenzy refresh
execute if entity @s[tag=gf.frenzied] if score @s gf.combo matches 5.. run function goofy_items:item/wither_blade/combo/5
execute if entity @s[tag=gf.frenzied] if score @s gf.combo matches 15.. run function goofy_items:item/wither_blade/combo/15
execute if entity @s[tag=gf.frenzied] if score @s gf.combo matches 25.. run function goofy_items:item/wither_blade/combo/25

#Adding cooldown stuff
scoreboard players add @s gf.combo 1
scoreboard players set @s gf.combo_ref 40

execute if score @s gf.combo matches 50 run advancement grant @s only goofy_items:nether/combo