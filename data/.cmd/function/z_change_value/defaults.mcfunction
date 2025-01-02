scoreboard players set #hide_msgs gf.config 1
function .cmd:z_change_value/enderblade_warp_distance {distance: 30}
scoreboard players set #step_size gf.config 4
scoreboard players reset #hide_msgs gf.config
tellraw @s ["",{"text":"Reset all configs to their default values","color":"gray"}]