tellraw @s ""
tellraw @s ""
tellraw @s ["",{"text":"Goofy SMP","color":"gold","bold":true}," ",{"text":"Config Menu","color":"gray"}]
tellraw @s "---------------------"
tellraw @s ["",{"text":"Enderblade Warp Distance: ","clickEvent":{"action":"suggest_command","value":"/function .cmd:z_change_value/enderblade_warp_distance {distance: }"},"hoverEvent":{"action":"show_text","contents":"Click to get the command to configure.\nChange the \"distance\" value.\nDefault: 30"},"color":"gray"},{"clickEvent":{"action":"suggest_command","value":"/function .cmd:z_change_value/enderblade_warp_distance {distance: }"},"hoverEvent":{"action":"show_text","contents":"Click to get the command to configure.\nChange the \"distance\" value.\nDefault: 30"},"color":"white","nbt":"enderblade_warp_distance_display","storage": "goofy_smp:config"},{"clickEvent":{"action":"suggest_command","value":"/function .cmd:z_change_value/enderblade_warp_distance {distance: }"},"hoverEvent":{"action":"show_text","contents":"Click to get the command to configure.\nChange the \"distance\" value.\nDefault: 30"},"color":"white","text":" blocks"}]
tellraw @s ""
tellraw @s ["",{"text":"[","clickEvent":{"action":"run_command","value":"/function .cmd:set_defaults"},"hoverEvent":{"action":"show_text","contents":"Click to reset all configuration to the default values"},"color":"gray"},{"text":"Reset to Defaults","clickEvent":{"action":"run_command","value":"/function .cmd:set_defaults"},"hoverEvent":{"action":"show_text","contents":"Click to reset all configuration to the default values"},"color":"red"},{"text":"]","clickEvent":{"action":"run_command","value":"/function .cmd:set_defaults"},"hoverEvent":{"action":"show_text","contents":"Click to reset all configuration to the default values"},"color":"gray"}]