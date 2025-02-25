#sfx
execute if score @s gf.combo matches 2.. run playsound entity.wither.break_block player @s ~ ~ ~ 1 2
#debug
tellraw @a[tag=uthi.dev] [{"selector": "@s"},": Combo Broken"]
#reset combo
scoreboard players reset @s gf.combo
scoreboard players reset @s gf.combo_ref
tag @s remove gf.frenzied