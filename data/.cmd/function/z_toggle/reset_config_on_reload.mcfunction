$data modify storage goofy_smp:config reset_config_on_reload set value $(toggle)
execute unless score #hide_msgs gf.config matches 1 run function .cmd:config