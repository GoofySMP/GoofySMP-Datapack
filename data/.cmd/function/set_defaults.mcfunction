tellraw @s ""
tellraw @s ""
tellraw @s "---------------------"
tellraw @a ["",{"text":"ARE YOU SURE","color":"red"},"\n\nThis will reset all configuration values to their defaults. Are you sure you want to continue?\n\n",{"text":"[","clickEvent":{"action":"run_command","value":"/function .cmd:z_change_value/defaults"},"hoverEvent":{"action":"show_text","contents":"Click to reset all configs"},"color":"gray"},{"text":"YES","clickEvent":{"action":"run_command","value":"/function .cmd:z_change_value/defaults"},"hoverEvent":{"action":"show_text","contents":"Click to reset all configs"},"color":"red"},{"text":"]","clickEvent":{"action":"run_command","value":"/function .cmd:z_change_value/defaults"},"hoverEvent":{"action":"show_text","contents":"Click to reset all configs"},"color":"gray"}]
tellraw @s "---------------------"
