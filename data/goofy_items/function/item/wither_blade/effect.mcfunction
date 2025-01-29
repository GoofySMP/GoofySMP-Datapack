execute unless entity @e[type=wither,distance=..32] run effect give @s wither 5 1
execute unless entity @e[type=wither,distance=..32] run playsound entity.wither.shoot player @a ~ ~ ~ .5
execute unless entity @e[type=wither,distance=..32] run playsound entity.wither.ambient player @a ~ ~ ~ .5 2

execute if entity @e[type=wither,distance=..32] run effect give @s wither 5 2
execute if entity @e[type=wither,distance=..32] run playsound entity.wither.shoot player @a ~ ~ ~ .5
execute if entity @e[type=wither,distance=..32] run playsound entity.wither.ambient player @a ~ ~ ~ .5 2
execute if entity @e[type=wither,distance=..32] run playsound entity.wither.break_block player @a ~ ~ ~ .5 2