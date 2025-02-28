#universal scoreboards
scoreboard objectives add uthipacks.installed dummy
scoreboard players set GoofySMPCore uthipacks.installed 1

#> SCOREBOARDS

#withering blade
scoreboard objectives add gf.combo dummy
#NTS: ref is for refresh. used for tracking how long someone goes w/out adding to their combo
scoreboard objectives add gf.combo_ref dummy

#enderblade
scoreboard objectives add gf.ray_steps dummy

#> default configs
scoreboard objectives add gf.config dummy
execute unless data storage goofy_smp:config reset_config_no_reload: run function .cmd:z_toggle/reset_config_on_reload {toggle: 1}
execute unless data storage goofy_smp:config {reset_config_no_reload:1} run function .cmd:z_change_value/defaults

#> timers
function goofy_items:clocks/10t
function goofy_items:tick

#> init message
tellraw @a "- - - - - - - - - - - - -"
tellraw @a [{"text":"Successfully loaded the ","color":"gray"},{"text":"Goofy SMP","color":"gold","bold": true},{"text":" datapack!","color":"gray"}]
tellraw @a {"text":"Created by Uthimentius (you're welcome)","color":"red"}
tellraw @a "- - - - - - - - - - - - -"
