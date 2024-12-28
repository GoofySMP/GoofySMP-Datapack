#Check if levels and if cool
execute if entity @s[level=..1] unless score @s gf.teleport_cool matches 1.. run function goofy_items:item/dragonsbane/teleport/fail
execute unless entity @s[level=..1] unless score @s gf.teleport_cool matches 1.. if entity @s[gamemode=!spectator] run function goofy_items:item/dragonsbane/teleport/pass

#sudo cooldown (prevent spam)
execute unless score @s gf.teleport_cool matches 1.. run scoreboard players set @s gf.teleport_cool 20