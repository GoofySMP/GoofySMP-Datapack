#Basically translates the value of gf.ct from ticks to seconds (in a VERY hard-coded manner cus math cronge) 
execute if score @s gf.combo matches 200 run scoreboard players set @s gf.ct_display 10
execute if score @s gf.combo matches 180 run scoreboard players set @s gf.ct_display 9
execute if score @s gf.combo matches 160 run scoreboard players set @s gf.ct_display 8
execute if score @s gf.combo matches 140 run scoreboard players set @s gf.ct_display 7
execute if score @s gf.combo matches 120 run scoreboard players set @s gf.ct_display 6
execute if score @s gf.combo matches 100 run scoreboard players set @s gf.ct_display 5
execute if score @s gf.combo matches 80 run scoreboard players set @s gf.ct_display 4
execute if score @s gf.combo matches 60 run scoreboard players set @s gf.ct_display 3
execute if score @s gf.combo matches 40 run scoreboard players set @s gf.ct_display 2
execute if score @s gf.combo matches 20 run scoreboard players set @s gf.ct_display 1