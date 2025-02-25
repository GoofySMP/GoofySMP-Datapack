$data modify storage goofy_smp:config enderblade_warp_distance_display set value $(distance)
execute store result storage goofy_smp:config enderblade_warp_distance int 2 run data get storage goofy_smp:config enderblade_warp_distance_display
execute unless score #hide_msgs gf.config matches 1 run function .cmd:config